//Maya ASCII 2024 scene
//Name: Lifebulb_Rigv01.ma
//Last modified: Wed, Oct 14, 2026 11:16:49 PM
//Codeset: UTF-8
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/LifebulbRig//scenes/lifebulb_REF.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/LifebulbRig//scenes/lifebulb_REF.ma";
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
fileInfo "UUID" "300323F9-B149-D593-E924-E089541CDAB3";
createNode transform -s -n "persp";
	rename -uid "8F9E9611-4349-9DD4-38B5-82AA9A3044FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.4207750559781731 9.0799124346258537 4.067927525009603 ;
	setAttr ".r" -type "double3" 339.26164727267036 70.599999999999667 0 ;
	setAttr ".rp" -type "double3" -3.3306690738754696e-16 8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" 1.1840392271293361e-15 1.5674131332629801e-15 2.4216584313284633e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0E11CDA8-0545-5316-5AA2-DEA7B3093E84";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 9.1009837502579138;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.3025398254394531 7.581207275390625 1.5562156438827515 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "AD415040-274C-AAB0-1120-8BBF5087F651";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.52810565605127069 1000.1 1.5096628642110306 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EC970D15-C44D-C4A6-E483-9CB33ABFB519";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 5.6753525234023865;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4843DAC4-4A47-8866-B5AE-C4A9A84EF441";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.03785266247067276 2.5424930690473948 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "403E66F9-334A-A545-AA75-79912C585198";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 12.928712785425898;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "43F4908E-3B4D-13F5-E94C-EAACF3B212C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.4345629996381088 0.7011242623173779 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C8F47193-4F43-1F8B-7C8A-3E8A93837F54";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.1588024333736389;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "stem";
	rename -uid "C9672C8A-AA47-6287-0002-26946E6F1EDE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.059128614974900184 0.22567517777713778 -0.36124786882115861 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.838509335058191 8.856498307040459 88.951202856552086 ;
	setAttr ".bps" -type "matrix" 0.018085704034955574 0.98791151081917272 -0.1539602354523387 0
		 -2.7755575615628918e-16 0.15398542126489601 0.98807311978308188 0 0.99983644027888885 -0.017869998009292013 0.0027849347546951009 0
		 -0.059128614974900184 0.22567517777713778 -0.36124786882115861 1;
	setAttr ".radi" 0.51990721655419792;
createNode joint -n "stem1" -p "stem";
	rename -uid "756981BD-1348-B0F5-3ED8-7080C9C984BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.384872853381161 -5.5511151231257827e-17 -6.2450045135165055e-16 ;
	setAttr ".r" -type "double3" -0.0007150866127070384 -6.0809146090820275e-05 -1.0369529593416007e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 5.1794392218497445e-15 20.638482540543844 ;
	setAttr ".bps" -type "matrix" 0.016925018010085568 0.97878560798042891 0.20418686876422854 0
		 0.0063746729954005567 0.20410633694603877 -0.97892796811750749 0 -0.99983644027888885 0.017869998009292037 -0.0027849347546952206 0
		 -0.034082214422604708 1.593807010653379 -0.57446321939927436 1;
	setAttr ".radi" 0.50680433590221852;
createNode joint -n "stem2" -p "stem1";
	rename -uid "91DD6D74-0E4B-8646-31E2-6190D361F485";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.131550494109558 2.2204460492503131e-16 3.1918911957973251e-16 ;
	setAttr ".r" -type "double3" 7.845226747517018e-17 -1.6468265696364061e-16 9.7189903539233166e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1060681264979339e-18 -0.34922340108654371 -6.6544250460064696 ;
	setAttr ".bps" -type "matrix" 0.009977932879278173 0.94863097990873879 0.31622729928461668 0
		 0.0082930106371435323 0.31615366191482552 -0.94867174935929144 0 -0.99991582987270933 0.012088259396296944 -0.0047124467889828959 0
		 -0.014930701930479535 2.7013523489909574 -0.3434154671584283 1;
	setAttr ".radi" 0.50834784356942153;
createNode joint -n "stem3" -p "stem2";
	rename -uid "0E91FA73-C54E-FAFD-0C3B-95843A6D6E38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.1613916423421502 -6.6613381477509392e-16 2.3592239273284576e-16 ;
	setAttr ".r" -type "double3" -8.5498951822142691e-16 -3.2108775365321275e-16 -3.3210744783896272e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.8139669977951307 19.467193514487754 ;
	setAttr ".bps" -type "matrix" 0.043816950641368681 0.99888003671796688 -0.017853489373368742 0
		 -0.0044936032738774039 0.01806752580424259 0.99982667099899325 0 0.99902947021902644 -0.043729129394788582 0.0052802344895827554 0
		 -0.0033424140766351584 3.8030844407238105 0.023848275311155909 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem4" -p "stem3";
	rename -uid "1D7C01A6-8147-2B72-EC6A-1BA00A20687D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.65762826484135228 1.9428902930940239e-16 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -1.4317941189493671e-29 1.2927862186748503e-15 -2.4013395004679136e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 2.6280742920163105 -10.190213377879061 ;
	setAttr ".bps" -type "matrix" -0.0019333925294961335 0.9809015218913234 -0.19449541471359255 0
		 0.0033292267156371071 0.19450101414328169 0.98089666721154167 0 0.99999258909394051 0.0012489389578610177 -0.0036416903598137599 0
		 0.025472851144287083 4.4599761860553135 0.012107316073184094 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem5" -p "stem4";
	rename -uid "3C5D108D-7048-2F75-5914-E3A073EA503B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.76092550126908431 0 -4.5102810375396984e-16 ;
	setAttr ".r" -type "double3" 0.032502829771238619 -0.027676745961214465 0.014255985391130618 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9889790638694107e-16 1.9334847537979041 -31.003264619254242 ;
	setAttr ".bps" -type "matrix" -0.037109125984755742 0.74011922035676647 -0.67145100523205647 0
		 0.0018577413813965294 0.6719637390797184 0.74058171875827683 0 0.99930949238241862 0.026234957985407946 -0.026310937153520526 0
		 0.024001683464629886 5.2063691682960762 -0.13588920486229475 1;
	setAttr ".radi" 0.5;
createNode joint -n "shortstem" -p "stem5";
	rename -uid "F2A539A1-2649-42EC-BB51-93956644427E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.95193473062339828 -4.4408920985006262e-16 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 1.6072979715837776e-07 -8.6818640271006827e-07 -1.8954889717328451e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.2100214909184936 -22.793037705085023 ;
	setAttr ".bps" -type "matrix" 0.0733725388639902 0.42236397190753994 -0.90345179493713901 0
		 -0.012663536850708345 0.90621507107175991 0.42262735334669888 0 0.99722420015515201 -0.01956834681039096 0.07183992224400898 0
		 -0.01132378238333899 5.9109143589555941 -0.77506673665468273 1;
	setAttr ".radi" 0.5;
createNode joint -n "shortstem1" -p "shortstem";
	rename -uid "2D77F47C-BC4A-233E-004A-EBA70A0E88FD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.57507923501831382 -2.6645352591003757e-15 -4.9960036108132044e-16 ;
	setAttr ".r" -type "double3" -5.1146251870848862e-07 -8.3399183891713902e-07 -2.5695836983155158e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1364972116018017 -29.932456671273322 -32.637352185055093 ;
	setAttr ".bps" -type "matrix" 0.55705795226623522 -0.12508167423507363 -0.82100000766595549 0
		 -0.016547728042112575 0.98672445858704516 -0.16155808714746017 0 0.8303087440907706 0.10358290204784275 0.54759288882321489 0
		 0.030871241137915527 6.1538071088194766 -1.2946231037630562 1;
	setAttr ".radi" 0.5;
createNode joint -n "shortstem2" -p "shortstem1";
	rename -uid "F9C9E09B-214F-ED52-23CB-6292CC2AB836";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.42394234133071756 2.6645352591003757e-15 6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" -2.1375697659973857e-07 -6.6630553066224734e-07 -2.2230872490670911e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.037626908077764476 -29.329617845061428 ;
	setAttr ".bps" -type "matrix" 0.49430293068958681 -0.59231045884490008 -0.63626482933966177 0
		 0.25843889347390148 0.79897319341582596 -0.54300200233783846 0 0.82998430771411025 0.10397190267500447 0.54801085062475563 0
		 0.26703169367855889 6.1007796909866965 -1.6426797692454986 1;
	setAttr ".radi" 0.5;
createNode joint -n "shortstem3" -p "shortstem2";
	rename -uid "0ADBDF20-0642-4D51-1F90-198C7D776992";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.39970154969092908 0 -5.134781488891349e-16 ;
	setAttr ".r" -type "double3" 1.9819475201767233e-21 -3.9240934111035351e-07 -1.3707060783561912e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.040904423680786e-15 -6.88861224259173e-15 -33.006186192505069 ;
	setAttr ".bps" -type "matrix" 0.2737489394572763 -0.93194284975885355 -0.23778991343066441 0
		 0.48599132409369766 0.34737928584975503 -0.80196013907685471 0 0.82998430771411025 0.10397190267500447 0.54801085062475563 0
		 0.46460534109195423 5.8640322826882443 -1.8969958075463962 1;
	setAttr ".radi" 0.5;
createNode joint -n "shortstem4" -p "shortstem3";
	rename -uid "23FD2F2C-5040-3EBD-B91E-72B5FD7B62E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46510771921095451 8.8817841970012523e-16 4.7184478546569153e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -122.64305955872094 6.4721064401129205 -20.467608985532426 ;
	setAttr ".bps" -type "matrix" -0.0075800610285694237 -0.99996119277008844 -0.0044895020464026797 0
		 -0.99987475807901161 0.0076416285361863429 -0.013859064533831178 0 0.01389283380887868 0.0043838872175768831 -0.99989387972005406 0
		 0.59192808595934654 5.4305784694019472 -2.0075937318335031 1;
	setAttr ".radi" 0.56225813944840075;
createNode joint -n "shortFruit" -p "shortstem4";
	rename -uid "15F8C595-ED40-6F37-B824-29B59BF0E3E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.2036573626690821 -3.3306690738754696e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.537947278569249 89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" -0.013892833808878629 -0.0043838872175776603 0.99989387972005406 0
		 -0.00048342936496861448 0.99999030144054746 0.0043775930477605697 0 -0.99990337306402166 -0.0004225608906135896 -0.013894818368217546 0
		 0.57522422866425893 3.2270066245707847 -2.0174870560727762 1;
	setAttr ".radi" 0.56225813944840075;
createNode ikEffector -n "effector3" -p "shortstem3";
	rename -uid "7C05E837-1F42-0F45-1B3F-38A968400654";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "tallstem" -p "stem5";
	rename -uid "83FDDD41-DC47-5BE5-EE94-58B76831EE2E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.31691107612503577 0.64593190231358077 0.055056092527444644 ;
	setAttr ".r" -type "double3" 2.7308300018013812e-08 -1.9537616930631171e-08 -1.7150016216820433e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.43655424928977 -7.6254892245363273 44.025830483113602 ;
	setAttr ".bps" -type "matrix" 0.10743890815762107 0.99381374708819648 0.028126804162872457 0
		 -3.4694469519536142e-16 0.028290558736978534 -0.99959974203995727 0 -0.9942116882303782 0.10739590487941272 0.0030395067418704409 0
		 0.068459440715393713 5.8764083574239692 0.12823731553016429 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem1" -p "tallstem";
	rename -uid "A1B4F3CB-4948-F7D1-2AF5-A5942B44AFC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.35630693350994136 -4.4408920985006262e-16 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 5.5052196903749471e-09 4.5560354679161327e-11 1.2141468385026744e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.4660314693364876e-14 14.071142421460003 ;
	setAttr ".bps" -type "matrix" 0.10421515981264724 0.97087214387614285 -0.21574633417642647 0
		 0.026121245210099078 0.21418076445020504 0.97644471460917848 0 0.9942116882303782 -0.1073959048794127 -0.0030395067418703212 0
		 0.10674066862069223 6.2305110861289892 0.13825909087087246 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem2" -p "tallstem1";
	rename -uid "D3E2B7B5-774E-411D-A42B-6DB4D6BA0C88";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.52990729483863941 -2.2204460492503131e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" -4.0136983642076135e-08 -8.4901972771953951e-09 -3.1023404915379409e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -15.152338988674087 1.8922381594918152 3.209089146316185 ;
	setAttr ".bps" -type "matrix" 0.072627813078033093 0.98435059522130863 -0.16055873210435287 0
		 -0.24109988281873154 0.1735372587458405 0.95485897719599078 0 0.96777892479238081 -0.030638627815788619 0.24993044475067333 0
		 0.16196504203818873 6.7449833175245866 0.023933534556088987 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem3" -p "tallstem2";
	rename -uid "4C0DA893-8847-0B74-2F50-B4AAB40521F3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.58003296389392656 2.2204460492503131e-16 6.2450045135165055e-17 ;
	setAttr ".r" -type "double3" -5.4596747272449078e-08 8.3238713284098698e-09 9.9263970024966566e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 154.38127659005048 5.9067836149093269 9.9329802374739486 ;
	setAttr ".bps" -type "matrix" -0.069803098157141585 0.99737604418281989 -0.019197759710282453 0
		 0.6429949728872969 0.030270964170022341 -0.76527193439318164 0 -0.76268275995287182 -0.065762414937762997 -0.64342078957104332 0
		 0.20409156771897435 7.315939110781553 -0.069195822705449522 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem4" -p "tallstem3";
	rename -uid "46517FF6-FD48-D1D5-868F-D984C1943F47";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.57460626453708308 3.3306690738754696e-16 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -9.0174720830749455e-08 -3.1912621075736447e-11 2.4788896736741482e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.8066610317256254e-15 1.4863212454204351e-14 -28.730818674936277 ;
	setAttr ".bps" -type "matrix" -0.37029409914606554 0.86003570782476202 0.35102829145805953 0
		 0.5302803860301406 0.5059781477968327 -0.68028584149885951 0 -0.76268275995287182 -0.065762414937762997 -0.64342078957104332 0
		 0.16398227023378442 7.8890376338682158 -0.080226975700055408 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem5" -p "tallstem4";
	rename -uid "C6620D98-A449-378E-AFDF-A6A569ADC368";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.48595297123181869 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -7.4850360067067494e-08 6.7069559704615314e-11 2.7781440624587685e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1693304834400975e-15 1.0985287398655308e-14 -32.186424359766647 ;
	setAttr ".bps" -type "matrix" -0.59585459049693457 0.4583426091770666 0.65945383431783133 0
		 0.25153988680605222 0.88633930150609463 -0.38875484299399543 0 -0.76268275995287182 -0.065762414937762997 -0.64342078957104332 0
		 -0.015963247475857673 8.3069745414511171 0.090356265520419865 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem6" -p "tallstem5";
	rename -uid "03875202-A847-E77B-4A5B-4A8D16310829";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.46606563045185201 4.4408920985006262e-15 -5.5511151231257827e-16 ;
	setAttr ".r" -type "double3" -5.6217894305835892e-09 -1.015792820699979e-11 1.778805664041175e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.616079886355585 ;
	setAttr ".bps" -type "matrix" -0.64626479776675338 0.11690678285930262 0.7541051752169492 0
		 0.025628477094211427 0.99096322278026094 -0.13166272159875028 0 -0.76268275995287182 -0.065762414937762997 -0.64342078957104332 0
		 -0.29367059285343999 8.5205922785601782 0.39770503256564971 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem7" -p "tallstem6";
	rename -uid "9C496581-1A44-99A8-5D95-DEB68C1ACF13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.36966556839988129 0 0 ;
	setAttr ".r" -type "double3" 5.1076845632483659e-08 -4.1203729042476194e-08 9.4015141424495889e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.8015136547684421 4.3190130996445903 -11.07610703293148 ;
	setAttr ".bps" -type "matrix" -0.57989787459321063 -0.070480148732345121 0.81163477234341297 0
		 -0.059362527512980504 0.99725809566215062 0.044185755211054126 0 -0.81252356603950182 -0.022557465969541529 -0.58249172986359676 0
		 -0.53257243665672127 8.5638086908956641 0.67647175079551536 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem8" -p "tallstem7";
	rename -uid "7FE81FC4-5546-2296-3E45-2EA5B5292ABC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.40568926561912172 -3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 1.6406516423884004e-08 2.4152411057110666e-08 3.235615082217548e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.991625343148518e-16 -3.5299765536940169 -37.443100403070972 ;
	setAttr ".bps" -type "matrix" -0.47354605949264489 -0.66239687966229843 0.58050366351353788 0
		 -0.39969372609630333 0.74893049960896751 0.5285338513990524 0 -0.78485607270265978 0.018261450356211552 -0.61940896391047329 0
		 -0.76783077953453038 8.5352156511157098 1.0057432655384573 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem9" -p "tallstem8";
	rename -uid "A99C39B5-0E48-9F1C-2B02-4B8280B3D751";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41058543028625838 -8.8817841970012523e-16 -4.9960036108132044e-16 ;
	setAttr ".r" -type "double3" -1.369139054709372e-22 3.5475183328070928e-11 1.386445846208236e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9685844222596232e-15 -1.3949949167644504e-14 -16.064815784839233 ;
	setAttr ".bps" -type "matrix" -0.34444864988030965 -0.84377729261585976 0.4115762481746017 0
		 -0.51512723936653759 0.53638269910273673 0.6685338640382199 0 -0.78485607270265978 0.018261450356211552 -0.61940896391047329 0
		 -0.96226189213167934 8.2632451432592902 1.2440896120049123 1;
	setAttr ".radi" 0.5;
createNode joint -n "tallstem10" -p "tallstem9";
	rename -uid "B9E69B00-1449-19B0-40FC-8CB246C253A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.67232226593349065 0 7.2164496600635175e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -128.53300091934116 0 -32.931133747595069 ;
	setAttr ".bps" -type "matrix" -0.0090652865885127998 -0.99979708033178605 -0.017989406302151512 0
		 0.99994989009896329 -0.0089873286362442649 -0.0044096728967727983 0 0.0042471013810037039 -0.018028479803352523 0.99982845330878645 0
		 -1.1938423889169412 7.6959548819445693 1.5208014877820648 1;
	setAttr ".radi" 0.61004591394210184;
createNode joint -n "tallfruit" -p "tallstem10";
	rename -uid "B4C8D617-4646-FA26-0503-97B9AF6C4AB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.1275543362139695 -3.7747582837255322e-15 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.469498683326108 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 0.0042471013810036415 -0.018028479803353301 0.99982845330878645 0
		 0.018323296420375886 0.99967101240601719 0.017947806646473122 0 -0.99982309382117762 0.018243926965108487 0.0045760453167841492 0
		 -1.2221945652958706 4.5690351880188249 1.464538642095855 1;
	setAttr ".radi" 0.61004591394210184;
createNode ikEffector -n "effector2" -p "tallstem9";
	rename -uid "55E72820-4F46-7D01-56A2-61BCEA3526B6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "stem4";
	rename -uid "06B46684-6B4B-6999-0714-16A6936ED4DF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1";
	rename -uid "6E4D9B72-CB4E-12AE-7B53-5B828790BF5A";
	setAttr ".pv" -type "double3" -0.00099213767817600941 -0.0072144477655198555 0.059556422040499886 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle2" -p "ikHandle1";
	rename -uid "EF8270AF-5C47-FA17-8F34-7CBCFFFA5A74";
	setAttr ".pv" -type "double3" 0.02964696877585268 0.039055733292928878 -0.034578995638316005 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle2_parentConstraint1" -p "ikHandle2";
	rename -uid "4F478F80-DD43-31BF-42CA-5F83930F1F62";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tallStemCTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.8890989862447896e-08 1.6548632686408382e-07 
		-2.2252657494448158e-08 ;
	setAttr ".rst" -type "double3" -1.2158366703881542 2.4901189007852214 1.6573636632386046 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle3" -p "ikHandle1";
	rename -uid "896148CB-2B45-2185-4B74-EFB7F542CCB3";
	setAttr ".t" -type "double3" 0.5679264024950601 0.2242093011059616 -1.8717045269710932 ;
	setAttr ".pv" -type "double3" -0.023439527254083287 0.055231938319007898 -0.0001468047237986979 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle1_parentConstraint1" -p "ikHandle1";
	rename -uid "5AFA8AD2-2F4F-3B9F-7E7A-A0992ED5C00D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.7520127549892663e-10 -2.3172833785167768e-07 
		-2.5059562480667097e-09 ;
	setAttr ".rst" -type "double3" 0.024001683464629886 5.2063691682960762 -0.13588920486229475 ;
	setAttr -k on ".w0";
createNode transform -n "stemCTRL";
	rename -uid "F8439B49-7E44-FEFD-1113-34937E282877";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 0.024001684039831161 5.2063694000244141 -0.1358892023563385 ;
	setAttr ".sp" -type "double3" 0.024001684039831161 5.2063694000244141 -0.1358892023563385 ;
createNode nurbsCurve -n "stemCTRLShape" -p "stemCTRL";
	rename -uid "05B9C768-194D-6BA8-2C70-CF9F6E1870BE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.80761330893105621 5.2063694000244141 -0.91950082724756232
		0.024001684039831037 5.2063694000244141 -1.2440833899107264
		-0.75960994085139311 5.2063694000244141 -0.91950082724756277
		-1.0841925035145568 5.2063694000244141 -0.13588920235633883
		-0.75960994085139333 5.2063694000244141 0.64772242253488554
		0.024001684039830828 5.2063694000244141 0.97230498519804964
		0.80761330893105499 5.2063694000244141 0.64772242253488588
		1.1321958715942191 5.2063694000244141 -0.13588920235633792
		0.80761330893105621 5.2063694000244141 -0.91950082724756232
		0.024001684039831037 5.2063694000244141 -1.2440833899107264
		-0.75960994085139311 5.2063694000244141 -0.91950082724756277
		;
createNode transform -n "tallStemCTRL" -p "stemCTRL";
	rename -uid "E3167DB4-5849-CFEB-C84F-6D803F1B460E";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -1.1918350458145142 7.6964879035949707 1.5214744806289673 ;
	setAttr ".sp" -type "double3" -1.1918350458145142 7.6964879035949707 1.5214744806289673 ;
createNode nurbsCurve -n "tallStemCTRLShape" -p "tallStemCTRL";
	rename -uid "97258325-E34C-87DD-3488-C393E562AEE8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.40822342092328912 7.6964879035949716 0.73786285573774346
		-1.1918350458145144 7.6964879035949716 0.41328029307457936
		-1.9754466707057383 7.6964879035949716 0.73786285573774302
		-2.3000292333689023 7.6964879035949716 1.5214744806289671
		-1.9754466707057388 7.6964879035949716 2.3050861055201914
		-1.1918350458145146 7.6964879035949716 2.6296686681833554
		-0.40822342092329034 7.6964879035949716 2.3050861055201919
		-0.083640858260126238 7.6964879035949716 1.521474480628968
		-0.40822342092328912 7.6964879035949716 0.73786285573774346
		-1.1918350458145144 7.6964879035949716 0.41328029307457936
		-1.9754466707057383 7.6964879035949716 0.73786285573774302
		;
createNode transform -n "tallFruit" -p "tallStemCTRL";
	rename -uid "C5CE17B0-3D4C-B52D-1464-129CF20777C7";
	setAttr ".rp" -type "double3" -1.222527027130127 4.5696029663085938 1.464505672454834 ;
	setAttr ".sp" -type "double3" -1.222527027130127 4.5696029663085938 1.464505672454834 ;
createNode nurbsCurve -n "tallFruitShape" -p "tallFruit";
	rename -uid "ACD23067-A24E-4218-C0F4-5C9A4320E993";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.83072121468451443 4.5696029663085938 1.0726998600092221
		-1.222527027130127 4.5696029663085938 0.91040857867764002
		-1.614332839575739 4.5696029663085938 1.0726998600092219
		-1.776624120907321 4.5696029663085938 1.4645056724548338
		-1.6143328395757393 4.5696029663085938 1.8563114849004461
		-1.2225270271301272 4.5696029663085938 2.0186027662320281
		-0.8307212146845151 4.5696029663085938 1.8563114849004463
		-0.66842993335293299 4.5696029663085938 1.4645056724548342
		-0.83072121468451443 4.5696029663085938 1.0726998600092221
		-1.222527027130127 4.5696029663085938 0.91040857867764002
		-1.614332839575739 4.5696029663085938 1.0726998600092219
		;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "5F54B0A6-5B4B-6D41-D43F-8AA770335A13";
createNode mesh -n "vine_baseShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "2ED874BA-1546-3D91-1029-AA8EB6545C85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_top1ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "A57EF895-FA40-EF08-BA41-1597178D32E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_midShape1Deformed" -p "modelRNfosterParent1";
	rename -uid "A43B1993-4542-0043-51F5-8CBB424F6E4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_bottomShape1Deformed" -p "modelRNfosterParent1";
	rename -uid "98605278-2340-FD0D-9BD7-B3BB6F663A75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_topShape2Deformed" -p "modelRNfosterParent1";
	rename -uid "4A32245B-DD44-524F-683B-35AD2720DA3A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_midShape2Deformed" -p "modelRNfosterParent1";
	rename -uid "2B7C60F3-4846-DC7E-2166-70A0932C74D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "vine_bottomShape2Deformed" -p "modelRNfosterParent1";
	rename -uid "0AD94313-5C40-A2EC-D6E7-D583828F945C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "stemLeaf6ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "CE1878D1-144B-3A79-5F4F-0D980FCC502E";
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
createNode mesh -n "stemLeaf5ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "A37196E2-0B47-A9B4-8BDF-E29D107DC340";
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
createNode mesh -n "stemLeaf4ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "3F3D03FD-0C40-77C1-0539-0E86B40A506C";
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
createNode mesh -n "stemLeaf3ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "213E069F-124A-BF2C-2A8D-82B7D466481B";
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
createNode mesh -n "stemLeaf2ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "4B6CD419-4D48-AB25-B847-DA8CA0B93211";
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
createNode mesh -n "stemLeaf1ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "C29EFBB5-244A-189C-DBAF-42BCE807DEBB";
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
createNode mesh -n "plant_stem_lowPolyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "267E376C-5C44-4744-CC14-E3B52038D66F";
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
createNode mesh -n "plant_stem_highPolyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "087CC7D7-D542-50EB-6139-138C8095B7F3";
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
createNode mesh -n "tearLeaf_frontLeft_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "5B2193DC-6A45-119E-8D14-818A69CDA75D";
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
createNode mesh -n "tearLeaf_backLeft_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "2EB3FB20-0B4A-D830-58DC-B5BAD8274EC3";
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
createNode mesh -n "tearLeaf_backRight_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "D335B903-4D49-DCA9-5F8F-EBBC4369A57A";
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
createNode mesh -n "tearLeaf_frontRight_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "43DEEE2D-0345-F12A-9E34-15A04AF1B300";
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
createNode mesh -n "tear_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "DF691954-7840-123B-75BA-0D90A3803694";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "topLeaf_small_frontLeftShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "BC06641C-1942-EFE9-82E0-A7915359871E";
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
createNode mesh -n "topLeaf_small_frontRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "572DCCBF-6C4E-38FE-AEF0-499012E36D6C";
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
createNode mesh -n "topLeaf_small_backRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "15E3FDA1-3B47-A603-1B28-169AC5A1E2EB";
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
createNode mesh -n "topLeaf_small_backLeftShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "4A49026E-EF45-9359-52A4-4893D0A6556E";
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
createNode mesh -n "topLeaf_small_midRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "7A4A58AB-CF4C-2B51-F5A3-F190F28E466B";
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
createNode mesh -n "topLeaf_small_midRight1ShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "3DA3D2AE-AB45-9349-1D64-BDA18E7C41D0";
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
createNode mesh -n "heart_smallShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "D9AA0159-784B-7FED-D1CB-AF9451F44DF7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
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
	setAttr ".dfgi" 249;
createNode mesh -n "tearLeaf_frontLeft_bigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "B9E479B8-5149-0D5A-BB7D-04B230EF9D11";
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
createNode mesh -n "tearLeaf_backRight_bigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "FDFAB248-FE44-F38B-81CA-5FB50DC2E010";
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
createNode mesh -n "tearLeaf_frontRight_bigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "4FFFE3D6-5E45-96D4-666F-BD90A5F8DC3E";
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
createNode mesh -n "tearLeaf_backLeft_bigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "FF454726-8A44-02F1-F5A2-C285CD10C35E";
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
createNode mesh -n "tear_bigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "7B1B4E26-DB42-AB1E-CE4D-FBA846AB9470";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "topLeaf_big_frontLeftShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "5500E031-2E46-84D3-54D0-6780AB173F61";
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
createNode mesh -n "topLeaf_big_frontRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "4071D79D-1748-143B-1AEA-AC95567B041D";
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
createNode mesh -n "topLeaf_big_backRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "B2FC8B74-374E-BFF8-B9CD-0EA5DA919674";
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
createNode mesh -n "topLeaf_big_backLeftShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "9D64BE72-B94A-7A8E-AE61-9CA65A7867AB";
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
createNode mesh -n "topLeaf_big_midLEFTShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "5922B00C-0242-4A93-3D3F-93B377C5296B";
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
createNode mesh -n "topLeaf_big_midRightShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "B3E758BE-7243-C7F0-8363-7ABBFA2303A4";
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
createNode mesh -n "heart_big_lowPolyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "428E607F-2346-9148-811C-B3AFE718948F";
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
	setAttr ".dfgi" 249;
createNode mesh -n "heart_big_highPolyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "D5089BD2-7240-93DB-961F-BC883E4F3462";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
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
	setAttr ".dfgi" 249;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7724C043-834D-5F3A-2A23-0E9B47238F4F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "010B35F8-E446-DCF2-1D3C-0482E2BA446D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4D50DB2F-FD46-7B40-A1F0-EDAED82C3C2B";
createNode displayLayerManager -n "layerManager";
	rename -uid "F5AF53B0-A142-8BF7-946E-D988A563C6D5";
createNode displayLayer -n "defaultLayer";
	rename -uid "CE8CD0A7-C347-448F-AB29-11A5AB72B391";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E073B437-6346-D8CF-0D8F-F5A02D14E6C9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "44B3E9B3-994D-16F6-0E74-11A166FF6C65";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "84529AF5-B54C-F1BE-B291-F59A094A2F93";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "0FA8800D-304C-C56C-CC58-BB96D2F6D78A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AA96D63E-DB41-F1AD-5B27-E3BD5867409F";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "D4851FCD-0E4C-13CC-80D0-1BBA0AB201D9";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2C68E4F3-CE46-C531-A1A0-C2964BACE350";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1760\n            -height 1500\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1760\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1760\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7A8B3E62-9442-A254-AFA1-E795A65F6776";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "3A38FA35-FB49-2B53-C378-9A9F30910E90";
createNode reference -n "modelRN";
	rename -uid "C6E4420A-9C4F-D673-CF0D-91AAD1AAF24A";
	setAttr -s 90 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 928
		0 "|modelRNfosterParent1|heart_big_highPolyShapeDeformed" "|model:lifebulb|model:heart_big|model:heart_big_highPoly" 
		"-s -r "
		0 "|modelRNfosterParent1|heart_big_lowPolyShapeDeformed" "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_midRightShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_midLEFTShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_backLeftShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_backRightShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_frontRightShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_big_frontLeftShapeDeformed" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"-s -r "
		0 "|modelRNfosterParent1|tear_bigShapeDeformed" "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_backLeft_bigShapeDeformed" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_frontRight_bigShapeDeformed" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_backRight_bigShapeDeformed" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_frontLeft_bigShapeDeformed" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"-s -r "
		0 "|modelRNfosterParent1|heart_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:heart_small" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_midRight1ShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_midRightShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_backLeftShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_backRightShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_frontRightShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"-s -r "
		0 "|modelRNfosterParent1|topLeaf_small_frontLeftShapeDeformed" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"-s -r "
		0 "|modelRNfosterParent1|tear_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_frontRight_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_backRight_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_backLeft_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"-s -r "
		0 "|modelRNfosterParent1|tearLeaf_frontLeft_smallShapeDeformed" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"-s -r "
		0 "|modelRNfosterParent1|plant_stem_highPolyShapeDeformed" "|model:lifebulb|model:stem|model:plant_stem_highPoly" 
		"-s -r "
		0 "|modelRNfosterParent1|plant_stem_lowPolyShapeDeformed" "|model:lifebulb|model:stem|model:plant_stem_lowPoly" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf1ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf2ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf3ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf4ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf5ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" 
		"-s -r "
		0 "|modelRNfosterParent1|stemLeaf6ShapeDeformed" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_bottomShape2Deformed" "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_midShape2Deformed" "|model:lifebulb|model:stem|model:vines|model:vine_mid2" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_topShape2Deformed" "|model:lifebulb|model:stem|model:vines|model:vine_top2" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_bottomShape1Deformed" "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_midShape1Deformed" "|model:lifebulb|model:stem|model:vines|model:vine_mid1" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_top1ShapeDeformed" "|model:lifebulb|model:stem|model:vines|model:vine_top1" 
		"-s -r "
		0 "|modelRNfosterParent1|vine_baseShapeDeformed" "|model:lifebulb|model:stem|model:vines|model:vine_base" 
		"-s -r "
		2 "|model:lifebulb|model:heart_big|model:heart_big_highPoly|model:heart_big_highPolyShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:heart_big_highPoly|model:heart_big_highPolyShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly|model:heart_big_lowPolyShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly|model:heart_big_lowPolyShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight|model:topLeaf_big_midRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight|model:topLeaf_big_midRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT|model:topLeaf_big_midLEFTShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT|model:topLeaf_big_midLEFTShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft|model:topLeaf_big_backLeftShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft|model:topLeaf_big_backLeftShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight|model:topLeaf_big_backRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight|model:topLeaf_big_backRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight|model:topLeaf_big_frontRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight|model:topLeaf_big_frontRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft|model:topLeaf_big_frontLeftShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft|model:topLeaf_big_frontLeftShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big|model:tear_bigShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big|model:tear_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big|model:tearLeaf_backLeft_bigShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big|model:tearLeaf_backLeft_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big|model:tearLeaf_frontRight_bigShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big|model:tearLeaf_frontRight_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big|model:tearLeaf_backRight_bigShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big|model:tearLeaf_backRight_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big|model:tearLeaf_frontLeft_bigShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big|model:tearLeaf_frontLeft_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:heart_small|model:heart_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:heart_small|model:heart_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1|model:topLeaf_small_midRight1Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1|model:topLeaf_small_midRight1Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight|model:topLeaf_small_midRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight|model:topLeaf_small_midRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft|model:topLeaf_small_backLeftShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft|model:topLeaf_small_backLeftShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight|model:topLeaf_small_backRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight|model:topLeaf_small_backRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight|model:topLeaf_small_frontRightShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight|model:topLeaf_small_frontRightShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft|model:topLeaf_small_frontLeftShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft|model:topLeaf_small_frontLeftShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small|model:tear_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small|model:tear_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small|model:tearLeaf_frontRight_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small|model:tearLeaf_frontRight_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small|model:tearLeaf_backRight_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small|model:tearLeaf_backRight_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small|model:tearLeaf_backLeft_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small|model:tearLeaf_backLeft_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small|model:tearLeaf_frontLeft_smallShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small|model:tearLeaf_frontLeft_smallShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:plant_stem_highPoly|model:plant_stem_highPolyShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:plant_stem_highPoly|model:plant_stem_highPolyShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:plant_stem_lowPoly|model:plant_stem_lowPolyShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:plant_stem_lowPoly|model:plant_stem_lowPolyShape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1|model:stemLeaf1Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1|model:stemLeaf1Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2|model:stemLeaf2Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2|model:stemLeaf2Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3|model:stemLeaf3Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3|model:stemLeaf3Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4|model:stemLeaf4Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4|model:stemLeaf4Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5|model:stemLeaf5Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5|model:stemLeaf5Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6|model:stemLeaf6Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6|model:stemLeaf6Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2|model:vine_bottomShape2" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2|model:vine_bottomShape2" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_mid2|model:vine_midShape2" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_mid2|model:vine_midShape2" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_top2|model:vine_topShape2" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_top2|model:vine_topShape2" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1|model:vine_bottomShape1" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1|model:vine_bottomShape1" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_mid1|model:vine_midShape1" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_mid1|model:vine_midShape1" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_top1|model:vine_top1Shape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_top1|model:vine_top1Shape" 
		"vertexColorSource" " 2"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_base|model:vine_baseShape" 
		"intermediateObject" " 1"
		2 "|model:lifebulb|model:stem|model:vines|model:vine_base|model:vine_baseShape" 
		"vertexColorSource" " 2"
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:heart_big_highPoly|model:heart_big_highPolyShape.outMesh" 
		"modelRN.placeHolderList[1]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:heart_big_highPoly|model:heart_big_highPolyShape.worldMesh" 
		"modelRN.placeHolderList[2]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:heart_big_lowPoly|model:heart_big_lowPolyShape.outMesh" 
		"modelRN.placeHolderList[3]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:heart_big_lowPoly|model:heart_big_lowPolyShape.worldMesh" 
		"modelRN.placeHolderList[4]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight|model:topLeaf_big_midRightShape.outMesh" 
		"modelRN.placeHolderList[5]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight|model:topLeaf_big_midRightShape.worldMesh" 
		"modelRN.placeHolderList[6]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT|model:topLeaf_big_midLEFTShape.outMesh" 
		"modelRN.placeHolderList[7]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT|model:topLeaf_big_midLEFTShape.worldMesh" 
		"modelRN.placeHolderList[8]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft|model:topLeaf_big_backLeftShape.outMesh" 
		"modelRN.placeHolderList[9]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft|model:topLeaf_big_backLeftShape.worldMesh" 
		"modelRN.placeHolderList[10]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight|model:topLeaf_big_backRightShape.outMesh" 
		"modelRN.placeHolderList[11]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight|model:topLeaf_big_backRightShape.worldMesh" 
		"modelRN.placeHolderList[12]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight|model:topLeaf_big_frontRightShape.outMesh" 
		"modelRN.placeHolderList[13]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight|model:topLeaf_big_frontRightShape.worldMesh" 
		"modelRN.placeHolderList[14]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft|model:topLeaf_big_frontLeftShape.outMesh" 
		"modelRN.placeHolderList[15]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft|model:topLeaf_big_frontLeftShape.worldMesh" 
		"modelRN.placeHolderList[16]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big|model:tear_bigShape.outMesh" 
		"modelRN.placeHolderList[17]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big|model:tear_bigShape.worldMesh" 
		"modelRN.placeHolderList[18]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big|model:tearLeaf_backLeft_bigShape.outMesh" 
		"modelRN.placeHolderList[19]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big|model:tearLeaf_backLeft_bigShape.worldMesh" 
		"modelRN.placeHolderList[20]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big|model:tearLeaf_frontRight_bigShape.outMesh" 
		"modelRN.placeHolderList[21]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big|model:tearLeaf_frontRight_bigShape.worldMesh" 
		"modelRN.placeHolderList[22]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big|model:tearLeaf_backRight_bigShape.outMesh" 
		"modelRN.placeHolderList[23]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big|model:tearLeaf_backRight_bigShape.worldMesh" 
		"modelRN.placeHolderList[24]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big|model:tearLeaf_frontLeft_bigShape.outMesh" 
		"modelRN.placeHolderList[25]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big|model:tearLeaf_frontLeft_bigShape.worldMesh" 
		"modelRN.placeHolderList[26]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:heart_small|model:heart_smallShape.outMesh" 
		"modelRN.placeHolderList[27]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:heart_small|model:heart_smallShape.worldMesh" 
		"modelRN.placeHolderList[28]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1|model:topLeaf_small_midRight1Shape.outMesh" 
		"modelRN.placeHolderList[29]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1|model:topLeaf_small_midRight1Shape.worldMesh" 
		"modelRN.placeHolderList[30]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight|model:topLeaf_small_midRightShape.outMesh" 
		"modelRN.placeHolderList[31]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight|model:topLeaf_small_midRightShape.worldMesh" 
		"modelRN.placeHolderList[32]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft|model:topLeaf_small_backLeftShape.outMesh" 
		"modelRN.placeHolderList[33]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft|model:topLeaf_small_backLeftShape.worldMesh" 
		"modelRN.placeHolderList[34]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight|model:topLeaf_small_backRightShape.outMesh" 
		"modelRN.placeHolderList[35]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight|model:topLeaf_small_backRightShape.worldMesh" 
		"modelRN.placeHolderList[36]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight|model:topLeaf_small_frontRightShape.outMesh" 
		"modelRN.placeHolderList[37]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight|model:topLeaf_small_frontRightShape.worldMesh" 
		"modelRN.placeHolderList[38]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft|model:topLeaf_small_frontLeftShape.outMesh" 
		"modelRN.placeHolderList[39]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft|model:topLeaf_small_frontLeftShape.worldMesh" 
		"modelRN.placeHolderList[40]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small|model:tear_smallShape.outMesh" 
		"modelRN.placeHolderList[41]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small|model:tear_smallShape.worldMesh" 
		"modelRN.placeHolderList[42]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small|model:tearLeaf_frontRight_smallShape.outMesh" 
		"modelRN.placeHolderList[43]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small|model:tearLeaf_frontRight_smallShape.worldMesh" 
		"modelRN.placeHolderList[44]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small|model:tearLeaf_backRight_smallShape.outMesh" 
		"modelRN.placeHolderList[45]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small|model:tearLeaf_backRight_smallShape.worldMesh" 
		"modelRN.placeHolderList[46]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small|model:tearLeaf_backLeft_smallShape.outMesh" 
		"modelRN.placeHolderList[47]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small|model:tearLeaf_backLeft_smallShape.worldMesh" 
		"modelRN.placeHolderList[48]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small|model:tearLeaf_frontLeft_smallShape.outMesh" 
		"modelRN.placeHolderList[49]" ""
		5 3 "modelRN" "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small|model:tearLeaf_frontLeft_smallShape.worldMesh" 
		"modelRN.placeHolderList[50]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:plant_stem_highPoly|model:plant_stem_highPolyShape.outMesh" 
		"modelRN.placeHolderList[51]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:plant_stem_highPoly|model:plant_stem_highPolyShape.worldMesh" 
		"modelRN.placeHolderList[52]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:plant_stem_lowPoly|model:plant_stem_lowPolyShape.outMesh" 
		"modelRN.placeHolderList[53]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:plant_stem_lowPoly|model:plant_stem_lowPolyShape.worldMesh" 
		"modelRN.placeHolderList[54]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1|model:stemLeaf1Shape.outMesh" 
		"modelRN.placeHolderList[55]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1|model:stemLeaf1Shape.worldMesh" 
		"modelRN.placeHolderList[56]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2|model:stemLeaf2Shape.outMesh" 
		"modelRN.placeHolderList[57]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2|model:stemLeaf2Shape.worldMesh" 
		"modelRN.placeHolderList[58]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3|model:stemLeaf3Shape.outMesh" 
		"modelRN.placeHolderList[59]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3|model:stemLeaf3Shape.worldMesh" 
		"modelRN.placeHolderList[60]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4|model:stemLeaf4Shape.outMesh" 
		"modelRN.placeHolderList[61]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4|model:stemLeaf4Shape.worldMesh" 
		"modelRN.placeHolderList[62]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5|model:stemLeaf5Shape.outMesh" 
		"modelRN.placeHolderList[63]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5|model:stemLeaf5Shape.worldMesh" 
		"modelRN.placeHolderList[64]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6|model:stemLeaf6Shape.outMesh" 
		"modelRN.placeHolderList[65]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6|model:stemLeaf6Shape.worldMesh" 
		"modelRN.placeHolderList[66]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_bottom2|model:vine_bottomShape2.outMesh" 
		"modelRN.placeHolderList[67]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_bottom2|model:vine_bottomShape2.worldMesh" 
		"modelRN.placeHolderList[68]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_mid2|model:vine_midShape2.outMesh" 
		"modelRN.placeHolderList[69]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_mid2|model:vine_midShape2.worldMesh" 
		"modelRN.placeHolderList[70]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_top2|model:vine_topShape2.outMesh" 
		"modelRN.placeHolderList[71]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_top2|model:vine_topShape2.worldMesh" 
		"modelRN.placeHolderList[72]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_bottom1|model:vine_bottomShape1.outMesh" 
		"modelRN.placeHolderList[73]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_bottom1|model:vine_bottomShape1.worldMesh" 
		"modelRN.placeHolderList[74]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_mid1|model:vine_midShape1.outMesh" 
		"modelRN.placeHolderList[75]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_mid1|model:vine_midShape1.worldMesh" 
		"modelRN.placeHolderList[76]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_top1|model:vine_top1Shape.outMesh" 
		"modelRN.placeHolderList[77]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_top1|model:vine_top1Shape.worldMesh" 
		"modelRN.placeHolderList[78]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_base|model:vine_baseShape.outMesh" 
		"modelRN.placeHolderList[79]" ""
		5 3 "modelRN" "|model:lifebulb|model:stem|model:vines|model:vine_base|model:vine_baseShape.worldMesh" 
		"modelRN.placeHolderList[80]" ""
		5 3 "modelRN" "model:textureEditorIsolateSelectSet.memberWireframeColor" 
		"modelRN.placeHolderList[81]" ""
		5 3 "modelRN" "model:textureEditorIsolateSelectSet.memberWireframeColor" 
		"modelRN.placeHolderList[82]" ""
		5 0 "modelRN" "model:groupId257.message" "model:textureEditorIsolateSelectSet.groupNodes" 
		"modelRN.placeHolderList[83]" "modelRN.placeHolderList[84]" ""
		5 0 "modelRN" "model:groupId249.message" "model:textureEditorIsolateSelectSet.groupNodes" 
		"modelRN.placeHolderList[85]" "modelRN.placeHolderList[86]" ""
		5 4 "modelRN" "model:textureEditorIsolateSelectSet.dagSetMembers" "modelRN.placeHolderList[87]" 
		""
		5 4 "modelRN" "model:textureEditorIsolateSelectSet.dagSetMembers" "modelRN.placeHolderList[88]" 
		""
		5 3 "modelRN" "model:groupId249.groupId" "modelRN.placeHolderList[89]" 
		""
		5 3 "modelRN" "model:groupId257.groupId" "modelRN.placeHolderList[90]" 
		""
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateX"
		
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateY"
		
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateZ"
		
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateX"
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateY"
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateZ"
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleX"
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleY"
		8 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleZ"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateX"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateY"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateZ"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateX"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateY"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateZ"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleX"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleY"
		8 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateX"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateY"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateZ"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateX"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateY"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateZ"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleX"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleY"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleZ"
		
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleX"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleY"
		8 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "translateX"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "translateY"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "translateZ"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "rotateX"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "rotateY"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "rotateZ"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "scaleX"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "scaleY"
		8 "|model:lifebulb|model:heart_small|model:heart_small" "scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateX"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateY"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateZ"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateX"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateY"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateZ"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleX"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleY"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleZ"
		
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateZ"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleX"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleY"
		8 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateX"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateY"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateX"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateY"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleX"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleY"
		8 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateX"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateY"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateX"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateY"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateZ"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleX"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleY"
		8 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleZ"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateX"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateY"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateZ"
		
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleX"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleY"
		8 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateX"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateY"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateX"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateY"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateZ"
		
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateZ"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleX"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleY"
		8 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleZ"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateX"
		
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateY"
		
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "translateZ"
		
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateX"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateY"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "rotateZ"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleX"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleY"
		9 "|model:lifebulb|model:heart_big|model:heart_big_highPoly" "scaleZ"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateX"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateY"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "translateZ"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateX"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateY"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "rotateZ"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleX"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleY"
		9 "|model:lifebulb|model:heart_big|model:heart_big_lowPoly" "scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_midLEFT" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backLeft" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_backRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:topLeaves_big|model:topLeaf_big_frontLeft" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateX"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateY"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "translateZ"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateX"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateY"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "rotateZ"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleX"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleY"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tear_big" "scaleZ"
		
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backLeft_big" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontRight_big" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_backRight_big" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"translateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleX"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleY"
		9 "|model:lifebulb|model:heart_big|model:tear_big|model:tearLeaves_big|model:tearLeaf_frontLeft_big" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "translateX"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "translateY"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "translateZ"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "rotateX"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "rotateY"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "rotateZ"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "scaleX"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "scaleY"
		9 "|model:lifebulb|model:heart_small|model:heart_small" "scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight1" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_midRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backLeft" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_backRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontRight" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:topLeaves_small|model:topLeaf_small_frontLeft" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateX"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateY"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "translateZ"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateX"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateY"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "rotateZ"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleX"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleY"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tear_small" "scaleZ"
		
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontRight_small" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backRight_small" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_backLeft_small" 
		"scaleZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"translateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"rotateZ"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleX"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleY"
		9 "|model:lifebulb|model:heart_small|model:tear_small|model:tearLeaves|model:tearLeaf_frontLeft_small" 
		"scaleZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateX"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateY"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "translateZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateX"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateY"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "rotateZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleX"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleY"
		9 "|model:lifebulb|model:stem|model:plant_stem_highPoly" "scaleZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateX"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateY"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "translateZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateX"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateY"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "rotateZ"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleX"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleY"
		9 "|model:lifebulb|model:stem|model:plant_stem_lowPoly" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf1" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf2" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf3" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf4" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf5" "scaleZ"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateX"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateY"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "rotateZ"
		
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleX"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleY"
		9 "|model:lifebulb|model:stem|model:stemLeaves|model:stemLeaf6" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateX"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateY"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom2" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "translateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid2" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "translateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top2" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateX"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateY"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "translateZ"
		
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_bottom1" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "translateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_mid1" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "translateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_top1" "scaleZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "translateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "rotateZ"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleX"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleY"
		9 "|model:lifebulb|model:stem|model:vines|model:vine_base" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode tweak -n "tweak1";
	rename -uid "7E21F014-394E-3A55-289B-13A45A41BBC7";
createNode groupId -n "groupId1";
	rename -uid "E88BC33C-174C-2520-2C65-A18083ECD0BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "8766D152-7F45-8B58-CD53-2AA0C1DE9B0D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:895]";
createNode tweak -n "tweak3";
	rename -uid "AE816876-E343-4DF5-CD99-3BBC22480D28";
createNode groupId -n "groupId2";
	rename -uid "BAF0F67F-1B41-1F1E-1289-9D94006880F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "796918B2-3E4C-1ACB-301C-9898C2C77DC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:341]";
createNode skinCluster -n "skinCluster40";
	rename -uid "BE0297B6-624D-68AC-1235-ACBAF610C104";
	setAttr -s 73 ".wl";
	setAttr ".wl[0:72].w"
		5 0 0.14007425402609389 1 0.64975197912533011 2 0.19998622480582745 
		3 0.0072746139201593481 10 0.0029129281225892044
		5 0 0.28527352635003617 1 0.63638800506587445 2 0.072685837990175847 
		3 0.003407979073433045 10 0.0022446515204804494
		5 0 0.11667881141529665 1 0.71576400646994176 2 0.16099256038059578 
		3 0.0047245347459042956 10 0.001840086988261587
		5 0 0.14267579509490139 1 0.64398467890361732 2 0.20303608986580318 
		3 0.0077199760345395482 10 0.002583460101138677
		5 0 0.10615002001690944 1 0.6479838196384694 2 0.23578779170304481 
		3 0.0076469458359794823 10 0.0024314228055969471
		5 0 0.26928236824072971 1 0.65282793593762967 2 0.072864529866675354 
		3 0.0033261759492060139 10 0.0016989900057592443
		5 0 0.31073861653692053 1 0.55178308409422305 2 0.12494831909723424 
		3 0.0078440967790021389 10 0.0046858834926201418
		5 0 0.15161780343682335 1 0.61625936606714615 2 0.21960400114528067 
		3 0.0091659227419515262 10 0.0033529066087983877
		5 0 0.3002868870214998 1 0.56064539791327095 2 0.12747667051134071 
		3 0.0078836117291727018 10 0.0037074328247159094
		5 0 0.30811914753357966 1 0.54584229606550771 2 0.13277651886291844 
		3 0.0086194678363213147 10 0.0046425697016729316
		5 0 0.9653840523402758 1 0.029168419890656133 2 0.0036680928433221092 
		10 0.00088971746287292265 11 0.00088971746287292265
		5 0 0.93765872145316598 1 0.051917401426718607 2 0.0068068834025162648 
		10 0.0018084968587996249 11 0.0018084968587996249
		5 0 0.93089768755550795 1 0.058801866406832992 2 0.0069850890238713475 
		10 0.0016576785068938692 11 0.0016576785068938692
		5 0 0.84258205121657015 1 0.12896302060652132 2 0.019102717308562691 
		10 0.0046761054341729327 11 0.0046761054341729327
		5 0 0.95516412611934121 1 0.036994947187850936 2 0.0053644685572714528 
		3 0.0013367317989088708 10 0.0011397263366275047
		5 0 0.95187436408626724 1 0.041426238099298553 2 0.0046521143395654328 
		3 0.0010447142250399012 10 0.0010025692498287048
		5 0 0.92617035832287564 1 0.06289648104349875 2 0.0077673974482611961 
		3 0.0017506196615634079 10 0.0014151435238009566
		5 0 0.90458425880790094 1 0.082756051820280591 2 0.0088454105371988459 
		3 0.0019092208606765295 10 0.0019050579739430668
		5 0 0.82057699009582541 1 0.15073407879212167 2 0.019816685161430606 
		3 0.0045021510071012495 10 0.0043700949435210657
		5 0 0.92251882690332232 1 0.067919390158406118 2 0.0068013085758180459 
		3 0.0014265429925550694 10 0.0013339313698984569
		5 0 0.88813505278372051 1 0.097576639647360339 2 0.010418589694470938 
		3 0.0021509045373518405 10 0.0017188133370964072
		5 0 0.77752958169010222 1 0.20629911571360751 2 0.012176646270950197 
		10 0.0019973281626700394 11 0.0019973281626700394
		5 0 0.8034277124812933 1 0.18388195319244272 2 0.0097336365510052782 
		3 0.0015144302226311743 10 0.0014422675526275014
		5 0 0.77040581525234242 1 0.21354003156093695 2 0.012565241456314939 
		3 0.0019227158452500299 10 0.0015661958851556188
		5 0 0.69418960060692458 1 0.27534809782633285 2 0.022685996890999392 
		3 0.0039038013866086849 10 0.003872503289134356
		5 0 0.67575569792817336 1 0.30629759699306003 2 0.013975331067275602 
		10 0.0019856870057455814 11 0.0019856870057455814
		5 0 0.60870355723498326 1 0.3587812533983667 2 0.025034449522372403 
		3 0.0037444548042978778 10 0.0037362850399797454
		5 0 0.70127944184312307 1 0.28452842462217415 2 0.011256390713714226 
		3 0.0015015759347813606 10 0.0014341668862073143
		5 0 0.67718021118868454 1 0.30559556953587858 2 0.013913456371179005 
		3 0.0018272342772233531 10 0.0014835286270345534
		5 0 0.53050777916462266 1 0.44960713210691133 2 0.016344055056283304 
		10 0.0017705168360913806 11 0.0017705168360913806
		5 0 0.50335568409183806 1 0.45925255548036625 2 0.030262602865554836 
		3 0.0036080171327888648 10 0.0035211404294519504
		5 0 0.54325373996197712 1 0.44116631319290417 2 0.013004824644151569 
		3 0.0013362734870397605 10 0.0012388487139274632
		5 0 0.53718596344822367 1 0.44352498895339371 2 0.01634666824322446 
		3 0.0016600069975569818 10 0.0012823723576012235
		5 0 0.47631188363265897 1 0.49345754155905019 2 0.026431572188925882 
		3 0.0020081068523226768 10 0.0017908957670423062
		5 0 0.46502061709823694 1 0.48007416604125702 2 0.047220333974120475 
		3 0.0041179861827659731 10 0.0035668967036195276
		5 0 0.47489476088002608 1 0.50077392318562153 2 0.02152466211369896 
		3 0.0015438673112033482 10 0.0012627865094499309
		5 0 0.46385879126579299 1 0.50571701936320534 2 0.027153844003038958 
		3 0.0019509913099402174 10 0.0013193540580224714
		5 0 0.26916919438669457 1 0.66310657527844519 2 0.063251898153854139 
		3 0.0027822035116033543 10 0.0016901286694027955
		5 0 0.29176388588554991 1 0.59065775593803493 2 0.10874303467730295 
		3 0.0060224690818343144 10 0.002812854417277964
		5 0 0.30741273171140265 1 0.57625977186998989 2 0.10639900493609189 
		3 0.0060410766984468683 10 0.0038874147840686269
		5 0 0.45566303294843757 1 0.47323699304722017 2 0.060880967202004414 
		3 0.0056823199636033724 10 0.004536686838734573
		5 0 0.44923357268125125 1 0.47237352827195445 2 0.067455233355818531 
		3 0.006384643520031188 10 0.0045530221709446156
		5 0 0.4459189730462888 1 0.48030767213038589 2 0.064437094350152699 
		3 0.005782189277715343 10 0.0035540711954571433
		5 0 0.45151282993787994 1 0.49130629923416941 2 0.050493126313372411 
		3 0.0041514392292789845 10 0.0025363052852992651
		5 0 0.49178260720872152 1 0.45884536781696522 2 0.039883628650206657 
		3 0.0049857643279565449 10 0.0045026319961501415
		5 0 0.48785654210448143 1 0.45734632821165733 2 0.044642902473662552 
		3 0.0056078327107232321 10 0.0045463944994755447
		5 0 0.49284821585471822 1 0.45599325495622539 2 0.042507255733894342 
		3 0.0050823782263643615 10 0.0035688952287977159
		5 0 0.50658464830983263 1 0.45498373310281826 2 0.032302275417602312 
		3 0.0036082742099729842 10 0.0025210689597737869
		5 0 0.57981647374230449 1 0.37780505339224341 2 0.032624451411422561 
		3 0.0050496422996528529 10 0.004704379154376691
		5 0 0.56861293211891695 1 0.38460115851502663 2 0.036381843676610313 
		3 0.0056350908687735806 10 0.0047689748206725746
		5 0 0.57515773103603851 1 0.3812206700392175 2 0.034656057872195202 
		3 0.0051420800048175086 10 0.0038234610477313
		5 0 0.60415318481722202 1 0.36277024971458954 2 0.026568448456454466 
		3 0.0037389825121044735 10 0.0027691344996295048
		5 0 0.65380657409066878 1 0.30590686677756546 2 0.030024950054174531 
		3 0.005319983538502728 10 0.0049416255390885193
		5 0 0.63604095436317964 1 0.31908554047226106 2 0.033814536933164427 
		3 0.0059875118099191084 10 0.0050714564214758596
		5 0 0.64091948376132679 1 0.31687729896449901 2 0.032531370043214825 
		3 0.0055354150767590888 10 0.0041364321542002617
		5 0 0.67859278419956759 1 0.28952581198678518 2 0.02484472357365217 
		3 0.0040334561246622115 10 0.0030032241153327816
		5 0 0.76814586409374586 1 0.19105057724022617 2 0.02826353468896424 
		3 0.0065703353940747868 10 0.0059696885829889869
		5 0 0.74077220994004189 1 0.21205162808516015 2 0.033122557998276479 
		3 0.0076885503601715798 10 0.0063650536163499796
		5 0 0.74122661430920045 1 0.21331637376367876 2 0.032746759441472095 
		3 0.0073527446664990587 10 0.0053575078191496961
		5 0 0.7884214203114599 1 0.17832552010566538 2 0.024217430785191708 
		3 0.0052322883471529269 10 0.0038033404505300591
		5 0 0.78947918327341871 1 0.16833586639685841 2 0.028346572084884513 
		3 0.0071631658713228099 10 0.0066752123735154918
		5 0 0.76735791497297812 1 0.18422834839741986 2 0.032945206471707636 
		3 0.0083928657678238924 10 0.0070756643900704505
		5 0 0.77909179970863562 1 0.17618858220849729 2 0.031217574864002031 
		3 0.0077794352477718494 10 0.0057226079710932165
		5 0 0.83103090896897058 1 0.13817958731449351 2 0.021766571278943755 
		3 0.0052081908336208561 10 0.0038147416039712354
		5 0 0.84671374503941432 1 0.12152471400425995 2 0.020388832022066792 
		10 0.0056863544671295063 11 0.0056863544671295063
		5 0 0.80247637678103045 1 0.15203805194244396 2 0.029363652620262814 
		3 0.0081156633131056737 10 0.0080062553431571887
		5 0 0.79670818021201972 1 0.1543829479272126 2 0.031836674812872355 
		3 0.009011291418462233 10 0.0080609056294331516
		5 0 0.88457560337411678 1 0.09038916250938954 2 0.016850210396144878 
		3 0.0045876788042740818 10 0.0035973449160746204
		5 0 0.8308186573899673 1 0.12917301470477735 2 0.026604594471147595 
		3 0.0075046058783600341 10 0.00589912755574774
		5 0 0.13476861547983288 1 0.70582044331962324 2 0.15246982289222749 
		3 0.0048315822879216961 10 0.0021095360203946928
		5 0 0.1361852736626048 1 0.70171032094080121 2 0.15515985711035002 
		3 0.0050671567174788426 10 0.0018773915687652974
		5 0 0.16577208545741814 1 0.61967523003039626 2 0.20240929987084028 
		3 0.0086023254930919918 10 0.0035410591482532656
		5 0 0.16649506255296034 1 0.61705324324058453 2 0.2043786407025229 
		3 0.00893087271270839 10 0.0031421807912238378;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 0.99939566125684132 -0.034760786254065222 0
		 0 0.034760786254065222 0.99939566125684132 0 2.5890241032678056 0.60469633268800549 6.6285746103851739 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "5A316578-8F4C-BF11-FF86-E5AE8BC2082B";
	setAttr -s 24 ".wm";
	setAttr -s 37 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.059128614974900184
		 0.22567517777713778 -0.36124786882115861 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.46403538335329675 0.53223932175179545 0.45571751377768094 0.54195388642728326 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.384872853381161 -5.5511151231257827e-17
		 -6.2450045135165055e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98382493646565705 0.17913261676296086 1.0968709287082476e-17 6.0241902968200752e-17 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.131550494109558 3.3306690738754696e-16
		 3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00017687393179685793 -0.0030424073193744184 -0.058037911506106619 0.99830972814118402 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1613916423421502 -8.8817841970012523e-16
		 2.3592239273284576e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98548101600951377 0.16904615913180054 -0.015601318171917159 0.002676198598969622 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.65762826484135317 1.9428902930940239e-16
		 -2.4980018054066022e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0020365967358494156 0.022841650929077043 -0.088785875305227663 0.99578671391159579 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76092550126908343 0
		 -4.5449755070592346e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0045093189321866699 0.016258280115278998 -0.26722778560339822 0.96348567450272193 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.9519347306233974 -8.8817841970012523e-16
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.010703108845216483 -0.053098154908041213 -0.1973076952313372 0.97884406460319662 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57507923501831471 -8.8817841970012523e-16
		 -5.5511151231257827e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.097909875803767935 -0.24032400507325583 -0.27812951218138277 0.92482539068701297 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.42394234133071768 2.6645352591003757e-15
		 4.8572257327350599e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -8.3128032892356693e-05 -0.00031765997488263277 -0.25316378709289677 0.96742337633874287 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39970154969092908 0
		 -5.3429483060085659e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28406710589890261 0.95880440098396591 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.46510771921095451 4.4408920985006262e-16
		 5.6898930012039273e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.85717949775842128 0.18228093380677854 -0.036387594501904409 0.4803050205437317 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.31691107612503577 0.64593190231358077
		 0.055056092527444644 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9253013845327076 0.37311011663342925 0.06674489105705593 -0.012300738409748933 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.35630693350994047 -4.0245584642661925e-16
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99247029964190991 0.12248552701726627 7.5000754301785895e-18 6.0771278785263972e-17 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.5299072948386403 0
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13223276648446533 0.012670327489753041 0.029928881335893248 0.99068573237487845 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58003296389392656 2.2204460492503131e-16
		 7.6327832942979512e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9691728365852188 0.095686731001144998 -0.030884257127970213 0.22493160070859006 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57460626453708485 3.3306690738754696e-16
		 -5.5511151231257827e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.24810508793149208 0.96873312390075039 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48595297123181869 -2.6645352591003757e-15
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.27720082803266372 0.96081200082950957 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4660656304518529 6.2172489379008766e-15
		 -7.7715611723760958e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.17894027552809449 0.98385993809786243 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.36966556839988152 0
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020678557131190826 0.039851954103386059 -0.095492633465827439 0.99441710362547298 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4056892656191215 -3.5527136788005009e-15
		 3.0531133177191805e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.009885847586083572 -0.029170346060870593 -0.32081695639479196 0.94664029146121598 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41058543028625838 -1.7763568394002505e-15
		 -3.6082248300317588e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13973319847562435 0.99018919063165489 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67232226593348976 0
		 6.3837823915946501e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.8638807748289784 0.25532852329221389 -0.12306523352632012 0.41637999516236807 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1275543362139686 -3.9968028886505635e-15
		 -1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49767990155102221 -0.50230938234534783 0.49767990155102182 0.50230938234534817 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690821 -3.3306690738754696e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2036573626690816 -4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49797985554182023 0.50201201526910477 0.49797985554181984 0.50201201526910511 1
		 1 1 yes;
	setAttr -s 24 ".m";
	setAttr -s 24 ".p";
	setAttr -s 37 ".g[0:36]" yes yes yes no no no no yes yes yes yes no 
		no no no no yes yes no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster39";
	rename -uid "11DB0B18-2D48-D894-6B15-FEABD152D084";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.42006846495496458 1 0.50199775430797333 2 0.072236507445256032 
		3 0.005697273291806056
		4 0 0.4639343895110799 1 0.47636297147094564 2 0.054590248504435536 
		3 0.0051123905135389705
		4 0 0.48409159803546581 1 0.48166362835530868 2 0.031228968984555194 
		3 0.0030158046246704312
		4 0 0.49868762180460424 1 0.4851097131664539 2 0.014891258004507626 
		3 0.0013114070244342158
		4 0 0.49564037137925221 1 0.49578122691411003 2 0.007997500299337941 
		3 0.00058090140729981593
		4 0 0.43899773176705714 1 0.5501072483601982 2 0.01030330798775423 
		3 0.00059171188499040439
		4 0 0.36125845406461538 1 0.60793923759343815 2 0.029295996119457223 
		3 0.0015063122224891678
		4 0 0.37096336287034615 1 0.56264196152387536 2 0.062620045567448754 
		3 0.0037746300383297688
		4 0 0.3661465377839469 1 0.54661756199665323 2 0.081704291542462879 
		3 0.0055316086769370536
		4 0 0.44447081722702725 1 0.49237253880518761 2 0.058167153571225393 
		3 0.0049894903965597677
		4 0 0.50355868116898617 1 0.46633586855035125 2 0.02760261943803223 
		3 0.0025028308426303107
		4 0 0.53810846971870396 1 0.45156489353007329 2 0.0095388931361864767 
		3 0.0007877436150360898
		4 0 0.50075246937692874 1 0.49529010845039612 2 0.0037109885253567565 
		3 0.00024643364731824545
		4 0 0.35486926784125611 1 0.63987641059827416 2 0.005007636230518764 
		3 0.00024668532995096766
		4 0 0.2453521198126562 1 0.73182581602956165 2 0.02193535177522184 
		3 0.00088671238256027665
		4 0 0.28146149511765245 1 0.65000346596457859 2 0.06543028430028057 
		3 0.0031047546174885216
		5 0 0.30588460534220929 1 0.5917961525235419 2 0.094970422238325289 
		3 0.0055835662418868663 4 0.0017652536540366784
		4 0 0.4149602001212071 1 0.51200161206886552 2 0.067640307269832584 
		3 0.0053978805400947995
		4 0 0.50339300187349978 1 0.46372834201243024 2 0.030255904417445703 
		3 0.0026227516966242331
		4 0 0.5551896535640185 1 0.43495710039000685 2 0.0091300853468209136 
		3 0.00072316069915375782
		4 0 0.49467554020676202 1 0.50232977012286462 2 0.0028184952740063578 
		3 0.00017619439636699569
		4 0 0.23339401793420347 1 0.76363624601497659 2 0.0028453459595493029 
		3 0.00012439009127065639
		4 0 0.12902732518781398 1 0.85574080388096352 2 0.014753266396682207 
		3 0.00047860453454035722
		4 0 0.19264141408417826 1 0.73817015469635328 2 0.066684874366761654 
		3 0.0025035568527068271
		4 0 0.30197807350435185 1 0.59029672978452896 2 0.10166594963397614 
		3 0.0060592470771430812
		4 0 0.40401363598057383 1 0.51495659582419795 2 0.075047435813455771 
		3 0.0059823323817725215
		4 0 0.49011871047557615 1 0.47016001044286682 2 0.036561671152032085 
		3 0.0031596079295250698
		4 0 0.53786996527766329 1 0.44800067655337772 2 0.013091646897455914 
		3 0.0010377112715031652
		4 0 0.48481632720170087 1 0.50958484346691957 2 0.0052655983900449614 
		3 0.00033323094133463129
		4 0 0.28488740657507972 1 0.70906367061713083 2 0.0057863088144248492 
		3 0.00026261399336452462
		4 0 0.16410107235235935 1 0.813652805068659 2 0.021501008284296453 
		3 0.00074511429468508434
		4 0 0.20396413445822811 1 0.71912894649738723 2 0.073986888937358525 
		3 0.002920030107026181
		4 0 0.33961327077974501 1 0.55708355633476003 2 0.096876314210922826 
		3 0.0064268586745721747
		4 0 0.41106928810491444 1 0.50520486681875698 2 0.077344522732253909 
		3 0.0063813223440746022
		4 0 0.46928062295097567 1 0.48127525210914701 2 0.045462584694446147 
		3 0.0039815402454312799
		4 0 0.50069861578192287 1 0.47543796370672597 2 0.02207733588922179 
		3 0.0017860846221293269
		4 0 0.47450599859681752 1 0.51233982484814178 2 0.012329564257783662 
		3 0.00082461229725700976
		4 0 0.3731512501313799 1 0.61212209157218156 2 0.013999099782500612 
		3 0.00072755851393794049
		4 0 0.27451090337037531 1 0.68953117985095524 2 0.034441476924578704 
		3 0.0015164398540906785
		4 0 0.27906810281682232 1 0.63999404404185711 2 0.077128604867712253 
		3 0.003809248273608316
		4 0 0.40027453065080598 1 0.52536781021879253 2 0.069376418780466645 
		3 0.004981240349934888
		4 0 0.43312939159231945 1 0.50066420950400981 2 0.061282790441302387 
		3 0.0049236084623684321
		4 0 0.45914623734068499 1 0.49183599046139365 2 0.045265258685066319 
		3 0.0037525135128549962
		4 0 0.47094375886039763 1 0.4953806709341555 2 0.031220315899489412 
		3 0.0024552543059575545
		4 0 0.46252393823115279 1 0.51142189210332178 2 0.024346674226414726 
		3 0.0017074954391107921
		4 0 0.42511680713393157 1 0.54618826111320218 2 0.027025584168517133 
		3 0.0016693475843491019
		4 0 0.38439256263256744 1 0.57216197180000661 2 0.041051956120856513 
		3 0.0023935094465695004
		4 0 0.37725795642251847 1 0.55829492418501048 2 0.060663140200625125 
		3 0.0037839791918459291
		3 0 0.44079306807320268 1 0.51522731933528654 2 0.043979612591510821
		3 0 0.45265095177156311 1 0.50544777219446158 2 0.04190127603397531
		3 0 0.46247281514753441 1 0.50089107970788571 2 0.036636105144579968
		3 0 0.46618443983917368 1 0.50240141660604687 2 0.031414143554779443
		3 0 0.46146333788205079 1 0.50973369617937736 2 0.028802965938571862
		3 0 0.44895901403119592 1 0.52092585591253171 2 0.030115130056272275
		3 0 0.43646626277799294 1 0.5284356696057162 2 0.03509806761629089
		3 0 0.43340679677329208 1 0.52550349610473002 2 0.041089707121977855;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.47055590145753684 0 0 0 0 0.47055590145753684 0 0
		 0 0 0.47055590145753684 0 0 1.8922081915312761 3.1881373085183169 1;
	setAttr -s 7 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode skinCluster -n "skinCluster38";
	rename -uid "F8E8F45E-7D41-B1A5-1132-F486F08427A5";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.83356158893594268 1 0.15568616983291475 2 0.0092390743831544976 
		3 0.0015131668479881006
		4 0 0.85956626278638437 1 0.13461609456685356 2 0.0050832143999752291 
		3 0.00073442824678671657
		4 0 0.77751334871306232 1 0.21610259512551697 2 0.0056756450436786969 
		3 0.00070841111774198179
		4 0 0.62582099574455863 1 0.36063894452898548 2 0.012120205745372243 
		3 0.0014198539810836761
		4 0 0.56229425487828322 1 0.40867973230333215 2 0.025715495972655805 
		3 0.0033105168457287612
		4 0 0.5748400006386426 1 0.3848198329083023 2 0.035028982030579095 
		3 0.0053111844224760559
		4 0 0.64255864290045472 1 0.32135279632596675 2 0.030854452405112701 
		3 0.0052341083684658302
		4 0 0.744718196080558 1 0.23289583076386966 2 0.019072379056713034 
		3 0.0033135940988593977
		4 0 0.88073331939069399 1 0.11136645411217848 2 0.0068012983637271525 
		3 0.0010989281334004256
		4 0 0.90704264841397553 1 0.089234466160044448 2 0.0032631667346873904 
		3 0.00045971869129262624
		4 0 0.82881971028982782 1 0.16671704749968227 2 0.0039888739873656792 
		3 0.0004743682231240807
		4 0 0.65304692405442333 1 0.33486174847448608 2 0.010907090814462859 
		3 0.0011842366566277717
		4 0 0.57674906079416988 1 0.39242700418583959 2 0.027528922699525116 
		3 0.0032950123204653725
		4 0 0.59304885997999979 1 0.36291559304712245 2 0.038438940357608302 
		3 0.0055966066152694071
		4 0 0.67426935783208219 1 0.28901166085684366 2 0.031468489680973807 
		3 0.0052504916301003698
		4 0 0.78944344416714796 1 0.19072709051134923 2 0.016918538565473162 
		3 0.0029109267560294464
		4 0 0.90040028330019495 1 0.09271527561918172 2 0.005933636311731369 
		3 0.00095080476889200093
		4 0 0.92631798171673896 1 0.070664792092202749 2 0.002650066006525351 
		3 0.00036716018453276342
		4 0 0.84987650881809085 1 0.14614822318540915 2 0.0035635637012994027 
		3 0.00041170429520051414
		4 0 0.66344135674070959 1 0.3240187977510699 2 0.011354414847431556 
		3 0.0011854306607889822
		4 0 0.58209390080103129 1 0.38388965434079569 2 0.030483169581411809 
		3 0.0035332752767612253
		4 0 0.60047463048043881 1 0.35151419967625974 2 0.041984805573501177 
		3 0.0060263642698003246
		4 0 0.68825220675284371 1 0.27353412975596253 2 0.032769154187727474 
		3 0.0054445093034661924
		4 0 0.80898132588468985 1 0.17186441553773771 2 0.016351063033424037 
		3 0.0028031955441483983
		4 0 0.85925187265950898 1 0.1296625475025826 2 0.0095433045605242805 
		3 0.0015422752773840151
		4 0 0.87679140333738581 1 0.11716063637375086 2 0.0053070037423667343 
		3 0.00074095654649660185
		4 0 0.78354492972735101 1 0.20876234546056677 2 0.0068865890497267247 
		3 0.00080613576235556673
		4 0 0.62418058610203353 1 0.35632434793157192 2 0.017611331624563235 
		3 0.001883734341831429
		4 0 0.56005502365035309 1 0.39469938922113751 2 0.040414783092807445 
		3 0.0048308040357019234
		4 0 0.5779563659796213 1 0.36241770983067917 2 0.051961742279209654 
		3 0.00766418191048989
		4 0 0.6590879488424356 1 0.29332682714610758 2 0.040689423291587319 
		3 0.0068958007198695716
		4 0 0.77200057449999882 1 0.20222228180487667 2 0.02196242216640347 
		3 0.003814721528721129
		4 0 0.81711351232806095 1 0.16787113082854954 2 0.012921946693619103 
		3 0.0020934101497703424
		4 0 0.82342949308481794 1 0.16706084539864677 2 0.0083405215471249981 
		3 0.0011691399694103905
		4 0 0.71949084952527464 1 0.26805389823072684 2 0.011119582141627921 
		3 0.0013356701023706575
		4 0 0.58936764276610765 1 0.38283388012413461 2 0.024945128282953009 
		3 0.0028533488268048003
		4 0 0.54276258003757116 1 0.40291356761532093 2 0.04807415023589736 
		3 0.0062497021112105132
		4 0 0.56241644196311824 1 0.37182730555293164 2 0.056854030118730775 
		3 0.0089022223652193491
		4 0 0.6362900153628015 1 0.3111580382330158 2 0.044735642345945861 
		3 0.0078163040582369097
		4 0 0.73816893553916219 1 0.2313175591619348 2 0.025952372857946639 
		3 0.0045611324409562696
		4 0 0.7577715452228968 1 0.22440248916633632 2 0.015437440957080314 
		3 0.0023885246536866091
		4 0 0.75494073973425591 1 0.2308435739830304 2 0.012451734267696564 
		3 0.0017639520150170744
		4 0 0.69362013442862047 1 0.28996544187861689 2 0.014519790418711332 
		3 0.0018946332740513697
		4 0 0.62071412713586149 1 0.35439568503274138 2 0.022059922841859269 
		3 0.0028302649895378643
		4 0 0.58861398810243371 1 0.37490364051432606 2 0.032075531255862176 
		3 0.0044068401273781059
		4 0 0.60140840462210521 1 0.35664177819219206 2 0.036422386156453407 
		3 0.0055274310292492621
		4 0 0.64906268095582254 1 0.31396580642177963 2 0.031816586551207837 
		3 0.005154926071190038
		4 0 0.71183551093057351 1 0.26159963067645214 2 0.022843654534328978 
		3 0.0037212038586453056
		3 0 0.6793752478494991 1 0.30096813459311489 2 0.019656617557386041
		3 0 0.67846661933301855 1 0.30257772247027731 2 0.018955658196704181
		3 0 0.66930900985172526 1 0.31139233110220832 2 0.019298659046066438
		3 0 0.6575656518597518 1 0.32190784713859466 2 0.020526501001653496
		3 0 0.65039211660658136 1 0.32764871879073765 2 0.021959164602680957
		3 0 0.65166737665521257 1 0.32561974377384323 2 0.022712879570944176
		3 0 0.66040850405389018 1 0.3172823335827154 2 0.022309162363394402
		3 0 0.67178481454648353 1 0.30718666436622194 2 0.021028521087294572;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.47055590145753684 0 0 0 0 0.47055590145753684 0 0
		 0 0 0.47055590145753684 0 0 1.8922081915312761 3.1881373085183169 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster37";
	rename -uid "8FD78770-5243-6B2E-6528-B18CB3B70AF6";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.89171726557758058 1 0.09113358502853508 2 0.013746057776271447 
		3 0.0034030916176129153
		4 0 0.93314196252824178 1 0.057878625873065928 2 0.0072839262680510775 
		3 0.0016954853306411356
		4 0 0.9371106207342691 1 0.056060094126456801 2 0.0056363333813120777 
		3 0.0011929517579619962
		4 0 0.89137350008325122 1 0.098218385267199421 2 0.0087080015241269293 
		3 0.001700113125422506
		4 0 0.80148004207219214 1 0.17692468260014385 2 0.018064103428448247 
		3 0.0035311718992157904
		4 0 0.74637717144391358 1 0.21799976350297443 2 0.02934912556412736 
		3 0.0062739394889845925
		4 0 0.76131720638869727 1 0.19913416276661552 2 0.031981838154959169 
		3 0.0075667926897279927
		4 0 0.82339296940037443 1 0.14639734564557452 2 0.024176538265273943 
		3 0.0060331466887770255
		4 0 0.90417286254763718 1 0.078243835441844448 2 0.013930814830452845 
		3 0.003652487180065406
		4 0 0.94356195953886524 1 0.047731396326244138 2 0.0069999777748582645 
		3 0.0017066663600324107
		4 0 0.94559624553935318 1 0.047570438847712851 2 0.0056028762044339547 
		3 0.0012304394084999455
		4 0 0.8970829096350148 1 0.091140911199425634 2 0.0097976741239838207 
		3 0.0019785050415758432
		4 0 0.80217805794918196 1 0.1710645701986496 2 0.022216468160309037 
		3 0.00454090369185935
		4 0 0.74678079232076655 1 0.20888661514532764 2 0.036110012095680169 
		3 0.0082225804382254717
		4 0 0.76662011917691109 1 0.18642954512655951 2 0.037435393182801556 
		3 0.0095149425137278868
		4 0 0.83433463549266873 1 0.13219357360101922 2 0.026419120254032025 
		3 0.007052670652280062
		4 0 0.89778603293016968 1 0.081643198454415158 2 0.016184826068797752 
		3 0.0043859425466174174
		4 0 0.93567492665440222 1 0.053513095452911767 2 0.0086532672467752366 
		3 0.002158710645910754
		4 0 0.93191887233359372 1 0.058608530366173466 2 0.0077395089902533307 
		3 0.0017330883099795455
		4 0 0.87157581369016324 1 0.11131418263274999 2 0.014168053982251943 
		3 0.0029419496948349085
		4 0 0.7736363350387796 1 0.18937545371534131 2 0.030463692923281837 
		3 0.0065245183225972701
		4 0 0.7262664551656115 1 0.21681609975548727 2 0.045838224592421713 
		3 0.011079220486479488
		4 0 0.754094677563658 1 0.18911068913859777 2 0.044751439522671285 
		3 0.01204319377507296
		4 0 0.82688087256394893 1 0.13404792574102475 2 0.030537211315715955 
		3 0.0085339903793103834
		4 0 0.88201112170689433 1 0.093054151352189252 2 0.019544923477081262 
		3 0.0053898034638351225
		4 0 0.91919741276532041 1 0.066397560681773327 2 0.01148671754617576 
		3 0.0029183090067305376
		4 0 0.9126268864746887 1 0.074171255028710914 2 0.010737256082180961 
		3 0.0024646024144194538
		4 0 0.84955322931726396 1 0.12813377971310463 2 0.018361307729571029 
		3 0.0039516832400605072
		4 0 0.75768694105145817 1 0.19862964365077646 2 0.035708643297901493 
		3 0.0079747719998639246
		4 0 0.7156338519907669 1 0.22087736866963695 2 0.050762597000352336 
		3 0.012726182339243884
		4 0 0.74321535911680214 1 0.19416552203926307 2 0.049050858032412971 
		3 0.013568260811521819
		4 0 0.81306600745578017 1 0.14267134819366531 2 0.034436663115842828 
		3 0.0098259812347116695
		4 0 0.86554241002538046 1 0.1066534417025464 2 0.021862502510320327 
		3 0.0059416457617528671
		4 0 0.90039043539486507 1 0.081915982293536041 2 0.014126091597090351 
		3 0.003567490714508612
		4 0 0.8923262124061434 1 0.091070207224486777 2 0.013487624007498474 
		3 0.0031159563618714165
		4 0 0.83226504518096189 1 0.14213344787942439 2 0.02100214421438993 
		3 0.0045993627252237631
		4 0 0.75129737672567365 1 0.20387620537433931 2 0.036547215348524134 
		3 0.0082792025514629702
		4 0 0.71480254073004368 1 0.22338841499504722 2 0.049442816816556198 
		3 0.012366227458352955
		4 0 0.73925390595439255 1 0.19951495347072404 2 0.04812263829571635 
		3 0.013108502279167019
		4 0 0.80187110589244248 1 0.15273841535748245 2 0.035458191362194677 
		3 0.0099322873878804566
		4 0 0.85247280376182777 1 0.12064582476551489 2 0.021429186576308715 
		3 0.0054521848963486616
		4 0 0.87701585611266952 1 0.10277272650330153 2 0.016265136062973556 
		3 0.0039462813210554403
		4 0 0.869572174996044 1 0.11087603258844135 2 0.015908923496419997 
		3 0.0036428689190946143
		4 0 0.82832149766517271 1 0.14620711155675578 2 0.020856262460079652 
		3 0.0046151283179918607
		4 0 0.77628214840337451 1 0.18726176738629841 2 0.029753873773600812 
		3 0.0067022104367262577
		4 0 0.75123064514358251 1 0.20306772928025221 2 0.036892655330865609 
		3 0.0088089702452996479
		4 0 0.76628664755456832 1 0.18784638543744236 2 0.036617276908300668 
		3 0.0092496900996886823
		4 0 0.80824281390774533 1 0.15438126862484225 2 0.029696480504635633 
		3 0.0076794369627768118
		3 0 0.83053643872581517 1 0.14714599341225831 2 0.022317567861926485
		3 0 0.83398760897650071 1 0.14445411509396175 2 0.02155827592953756
		3 0 0.83301041433426148 1 0.14554305566491688 2 0.021446530000821671
		3 0 0.82808433171205253 1 0.1498661672719605 2 0.022049501015987048
		3 0 0.82207545431798712 1 0.15488842099362982 2 0.023036124688383109
		3 0 0.81859967339070583 1 0.15757387478528145 2 0.023826451824012777
		3 0 0.81970686526038017 1 0.15635776806676613 2 0.023935366672853658
		3 0 0.82465768024273378 1 0.15204096632965991 2 0.023301353427606263;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.47055590145753684 0 0 0 0 0.47055590145753684 0 0
		 0 0 0.47055590145753684 0 0 1.8922081915312761 3.1881373085183169 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster36";
	rename -uid "DA4C4E80-324D-C810-4766-55B05AF54FBD";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.4009228267965611 1 0.51977836558272317 2 0.07397189751492507 
		3 0.0053269101057907163
		4 0 0.37278620404889279 1 0.57086790633127538 2 0.053276706844075754 
		3 0.0030691827757562081
		4 0 0.40497631399076034 1 0.57072994251142783 2 0.023018298549214073 
		3 0.0012754449485977179
		4 0 0.48025912181029085 1 0.50861044116641274 2 0.01044831901146457 
		3 0.00068211801183191284
		4 0 0.49460327393549874 1 0.49327862403403638 2 0.0112190326172865 
		3 0.00089906941317823875
		4 0 0.49256451445024957 1 0.4841086738052815 2 0.021355926450494247 
		3 0.0019708852939746874
		4 0 0.47706665899661249 1 0.47783326433374484 2 0.041147655967440126 
		3 0.0039524207022025963
		4 0 0.44695530979552889 1 0.48289596884394614 2 0.064450197106398988 
		3 0.0056985242541259425
		3 0 0.42065349334906754 1 0.5024281737241173 2 0.076918332926815158
		3 0 0.41140371259833924 1 0.5409991636746645 2 0.047597123726996302
		3 0 0.4574844013075457 1 0.52350826098500314 2 0.019007337707451125
		3 0 0.49430331992500998 1 0.49430331992500964 2 0.011393360149980434
		3 0 0.49153271451700731 1 0.4915327145170072 2 0.016934570965985531
		3 0 0.48401380475576139 1 0.48401380475576128 2 0.031972390488477311
		3 0 0.47290801662150467 1 0.47290801662150456 2 0.054183966756990852
		3 0 0.45238370409923262 1 0.47191814084790978 2 0.07569815505285761
		3 0 0.41413073746687923 1 0.51253760956382011 2 0.073331652969300679
		3 0 0.40222333469728633 1 0.55531873274170862 2 0.042457932561005031
		3 0 0.45431404225421468 1 0.53020837832866374 2 0.015477579417121542
		3 0 0.49536636546250512 1 0.49536636546250545 2 0.0092672690749894399
		3 0 0.49251119911548813 1 0.49251119911548846 2 0.014977601769023394
		3 0 0.48507526102455217 1 0.48507526102455206 2 0.029849477950895743
		3 0 0.47395012898015992 1 0.47395012898015992 2 0.052099742039680118
		3 0 0.45049945102913075 1 0.47601064875382287 2 0.073489900217046364
		3 0 0.39606026919971005 1 0.53874086038977809 2 0.065198870410511964
		3 0 0.38950994826214852 1 0.57799387187362739 2 0.032496179864224102
		3 0 0.4563672037880564 1 0.532086279634434 2 0.011546516577509649
		3 0 0.49578304009192964 1 0.49578304009192953 2 0.008433919816140922
		3 0 0.49231172508229093 1 0.49231172508229082 2 0.015376549835418276
		3 0 0.48440553388710655 1 0.48440553388710633 2 0.031188932225787159
		3 0 0.47141841511513172 1 0.4745808401973734 2 0.054000744687494773
		3 0 0.43750148368753983 1 0.49011560683306554 2 0.072382909479394589
		3 0 0.3825418375649795 1 0.55504165192015475 2 0.062416510514865763
		3 0 0.37496836759193858 1 0.59153418758805376 2 0.03349744482000766
		3 0 0.43496191874205109 1 0.55085617784185126 2 0.01418190341609769
		3 0 0.49093734296516872 1 0.49827082066479306 2 0.010791836370038239
		3 0 0.49134416337743669 1 0.49134416337743658 2 0.017311673245126759
		3 0 0.48359159013512021 1 0.48361737464963495 2 0.03279103521524486
		3 0 0.46391008863709526 1 0.48179092470161361 2 0.054298986661291133
		3 0 0.42439304310146347 1 0.50546172677649037 2 0.070145230122046182
		3 0 0.37435773216802615 1 0.5651520921674299 2 0.060490175664543996
		3 0 0.37263261277905291 1 0.58389210658509805 2 0.043475280635849066
		3 0 0.40564908452202253 1 0.56480101911676128 2 0.029549896361216233
		3 0 0.44669034899611465 1 0.52761461445557711 2 0.02569503654830825
		3 0 0.46284332907958836 1 0.50620708412671034 2 0.030949586793701349
		3 0 0.45582095688614815 1 0.5010787244796 2 0.043100318634251858
		3 0 0.43295561227425355 1 0.50933114175180405 2 0.057713245973942451
		3 0 0.40104587768267513 1 0.53264186241432554 2 0.066312259902999299
		3 0 0.38656386328460918 1 0.54438809177781933 2 0.069048044937571426
		3 0 0.3826808034098988 1 0.55179992019350377 2 0.065519276396597492
		3 0 0.38762045862977346 1 0.55299415095523641 2 0.059385390414990184
		3 0 0.39866031154564652 1 0.54679006135660524 2 0.054549627097748236
		3 0 0.40867289607244728 1 0.53769114419651765 2 0.053635959731035111
		3 0 0.41169057073673904 1 0.53140777424604535 2 0.056901655017215627
		3 0 0.40659883917965267 1 0.53077962136358148 2 0.062621539456765921
		3 0 0.39642579375060472 1 0.53585319019979372 2 0.067721016049601568;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.9802322387695312e-08 1.3862026659422868 3.1881373383206393 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster35";
	rename -uid "0364936C-1148-2857-A050-E8B12AEAEAAD";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.75674417857488552 1 0.22731813654608554 2 0.013764880475469589 
		3 0.0021728044035592667
		4 0 0.66876783791943273 1 0.3028368793299302 2 0.024397076191511848 
		3 0.0039982065591251436
		4 0 0.59087723320557217 1 0.37042010414097465 2 0.033445896989367119 
		3 0.0052567656640861013
		4 0 0.55162167480005309 1 0.41108222960133589 2 0.032731824912538503 
		3 0.0045642706860725716
		4 0 0.56025689110101007 1 0.41574126044169468 2 0.021409991064428136 
		3 0.0025918573928672352
		4 0 0.63731128572831375 1 0.35098894080336146 2 0.010490154397188233 
		3 0.0012096190711366004
		4 0 0.76180425713183875 1 0.23096944121820503 2 0.0064221354619233883 
		3 0.00080416618803284183
		4 0 0.80446946693639143 1 0.18691720901681314 2 0.0075377922607235831 
		3 0.0010755317860719124
		3 0 0.73169294048390765 1 0.25406333230595807 2 0.014243727210134288
		3 0 0.63761002648720799 1 0.3370208500676708 2 0.025369123445121159
		3 0 0.56173791246785676 1 0.40433721978267906 2 0.033924867749464196
		3 0 0.52624159587115338 1 0.44182188103145342 2 0.031936523097393192
		3 0 0.53365598193130503 1 0.44679210538137948 2 0.019551912687315456
		3 0 0.61041650507756529 1 0.38073456959609958 2 0.0088489253263350949
		3 0 0.74971393025172328 1 0.24476002366866742 2 0.0055260460796092191
		3 0 0.79056995338860403 1 0.20217833759063022 2 0.0072517090207657522
		3 0 0.71735616612579189 1 0.27034509335647211 2 0.012298740517736091
		3 0 0.61005188639450925 1 0.36787125830205686 2 0.022076855303433968
		3 0 0.53744772203928282 1 0.43478341167604639 2 0.027768866284670738
		3 0 0.51045114782750334 1 0.46626640597565711 2 0.02328244619683964
		3 0 0.52363665871621068 1 0.46447219961884517 2 0.011891141664944127
		3 0 0.62679452738177022 1 0.36845188631874937 2 0.0047535862994804732
		3 0 0.78958786399296532 1 0.2071499476446394 2 0.0032621883623953534
		3 0 0.80431324089034129 1 0.19026143676291102 2 0.0054253223467477059
		3 0 0.69622913482741666 1 0.29198249360393586 2 0.011788371568647541
		3 0 0.58969928227499413 1 0.38959272430119818 2 0.020707993423807639
		3 0 0.52402358462798793 1 0.45122436278470651 2 0.02475205258730552
		3 0 0.5031214904569371 1 0.47793736945656062 2 0.018941140086502252
		3 0 0.51721888713775332 1 0.47442763400301124 2 0.0083534788592355101
		3 0 0.63220512361304515 1 0.36470302933298548 2 0.003091847053969352
		3 0 0.79731281190736158 1 0.2002228674259143 2 0.0024643206667239849
		3 0 0.79392378977586475 1 0.20113048870365596 2 0.0049457215204793238
		3 0 0.6717185299991284 1 0.31617396396089115 2 0.012107506039980525
		3 0 0.58002128358063221 1 0.39984575045346327 2 0.020132965965904564
		3 0 0.52249702060392866 1 0.45392697343764138 2 0.023576005958430006
		3 0 0.50397053503909461 1 0.47789708840235462 2 0.018132376558550788
		3 0 0.51699293333126661 1 0.47445815843206274 2 0.0085489082366706944
		3 0 0.60974057935189485 1 0.3866386768599529 2 0.0036207437881522471
		3 0 0.74875264564343735 1 0.2481426204540933 2 0.0031047339024693745
		3 0 0.75384241022272069 1 0.24048274020761207 2 0.0056748495696672596
		3 0 0.62783631806273366 1 0.35759807692094964 2 0.014565605016316808
		3 0 0.57806806027995561 1 0.40209479516419488 2 0.019837144555849569
		3 0 0.54115892135175292 1 0.43676369632322232 2 0.022077382325024802
		3 0 0.5275910322188071 1 0.45341463642058927 2 0.018994331360603613
		3 0 0.54079888673057941 1 0.44627053001026462 2 0.012930583259155916
		3 0 0.58899973264480532 1 0.40236080815226621 2 0.0086394592029285164
		3 0 0.64898862061493867 1 0.34327151519038823 2 0.0077398641946731283
		3 0 0.66286495029727954 1 0.32726150807240639 2 0.0098735416303140904
		3 0 0.59461022534081942 1 0.3876479605987696 2 0.017741814060410928
		3 0 0.57971090806088865 1 0.4006325743070242 2 0.019656517632087169
		3 0 0.56684551420622287 1 0.41275320848183289 2 0.020401277311944237
		3 0 0.56230588882983934 1 0.4182739388283474 2 0.019420172341813348
		3 0 0.56855040990513617 1 0.41410089697656716 2 0.017348693118296673
		3 0 0.58332367436090815 1 0.40114846808277482 2 0.015527857556316985
		3 0 0.59815404950540796 1 0.38689488007677353 2 0.01495107041781856
		3 0 0.60280992148006907 1 0.38135140974296106 2 0.015838668776969819;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.47055590145753684 0 0 0 0 0.42558702227067058 0 0
		 0 0 0.47055590145753684 0 0 1.8474303040239617 3.1881373085183178 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster34";
	rename -uid "79C43078-DF4F-84B5-0E3B-20B09C3D3F9C";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		4 0 0.92377601453259595 1 0.065765614878777467 2 0.0084792512255356216 
		3 0.0019791193630909515
		4 0 0.88648060200782441 1 0.095710038278449747 2 0.014299536143846861 
		3 0.0035098235698790446
		4 0 0.82842634515018199 1 0.14294087487925472 2 0.022970671516671752 
		3 0.0056621084538914972
		4 0 0.77848229461072393 1 0.18568345166789771 2 0.029011762706311225 
		3 0.0068224910150671177
		4 0 0.77017711176184633 1 0.19742544757219177 2 0.026636623721521757 
		3 0.0057608169444402337
		4 0 0.81873894008815562 1 0.16024763569754399 2 0.017486099722239024 
		3 0.0035273244920614078
		4 0 0.89080486933362735 1 0.097640009575092279 2 0.0096131565542584216 
		3 0.0019419645370219868
		4 0 0.9282499136315463 1 0.063412325759416535 2 0.0068576212359911072 
		3 0.0014801393730460299
		3 0 0.94398923516640953 1 0.050738394047960676 2 0.0052723707856297593
		3 0 0.89986390512031322 1 0.089431791184429163 2 0.010704303695257752
		3 0 0.83194197970697603 1 0.14945822961579108 2 0.018599790677232848
		3 0 0.7751768751988185 1 0.20170341511804371 2 0.023119709683137844
		3 0 0.77055492139966597 1 0.21003869045739104 2 0.019406388142943064
		3 0 0.83749946810758202 1 0.15161140358257155 2 0.010889128309846398
		3 0 0.92206986391083801 1 0.072904716764698771 2 0.0050254193244632572
		3 0 0.95415296322821574 1 0.042314748631917816 2 0.0035322881398663452
		3 0 0.95258954481675484 1 0.043555499853928176 2 0.0038549553293169662
		3 0 0.90024715254547161 1 0.09057634841998885 2 0.0091764990345395061
		3 0 0.82357828360501506 1 0.16011816857756672 2 0.016303547817418267
		3 0 0.76494548252197725 1 0.21600885602361602 2 0.019045661454406726
		3 0 0.77127514509222517 1 0.21473412756412774 2 0.013990727343647164
		3 0 0.86225179527112006 1 0.13138049949857553 2 0.0063677052303044816
		3 0 0.9496304510838629 1 0.047932281625404617 2 0.0024372672907324788
		3 0 0.96981253554918889 1 0.028254819699383371 2 0.0019326447514277417
		3 0 0.94635489747620649 1 0.049610023680382476 2 0.0040350788434110703
		3 0 0.88743911113805907 1 0.10301161559549743 2 0.0095492732664436107
		3 0 0.80617177020972453 1 0.17756027744838615 2 0.016267952341889391
		3 0 0.74832677659125824 1 0.23370728983242431 2 0.017965933576317511
		3 0 0.76087390873752037 1 0.22678713133271208 2 0.01233895992976748
		3 0 0.86263073090411979 1 0.13208690995949124 2 0.0052823591363890133
		3 0 0.95131351741173342 1 0.046626651243710612 2 0.0020598313445559764
		3 0 0.96804625102604724 1 0.030086583895929876 2 0.0018671650780229224
		3 0 0.93039646072959015 1 0.064218095197926858 2 0.0053854440724828796
		3 0 0.87461079842824507 1 0.11445414205120638 2 0.010935059520548627
		3 0 0.80104699492620612 1 0.18154325074797262 2 0.017409754325821227
		3 0 0.74989183502786494 1 0.23090693556309136 2 0.019201229409043667
		3 0 0.76037695425444629 1 0.22554737821448909 2 0.014075667531064619
		3 0 0.84543704445233192 1 0.14748265142202341 2 0.0070803041256447125
		3 0 0.92907904150505893 1 0.067519697485332472 2 0.003401261009608649
		3 0 0.95090200795557933 1 0.046063770604328466 2 0.0030342214400922748
		3 0 0.87907841027297151 1 0.11010235151946358 2 0.010819238207564898
		3 0 0.84558012550998074 1 0.13948553766824479 2 0.01493433682177446
		3 0 0.80252157656332201 1 0.17806190270498459 2 0.019416520731693445
		3 0 0.77286279655502899 1 0.20601394406209539 2 0.021123259382875636
		3 0 0.77637525515257666 1 0.20509697286358733 2 0.018527771983836087
		3 0 0.81559713035605508 1 0.17070985416785758 2 0.013693015476087389
		3 0 0.86367523486318787 1 0.12633112399624885 2 0.009993641140563286
		3 0 0.88743327914367542 1 0.10356342372193179 2 0.0090032971343927959
		3 0 0.83087188654807642 1 0.15194562364757785 2 0.01718248980434579
		3 0 0.81896752066045708 1 0.16209868909973668 2 0.018933790239806181
		3 0 0.80608966658920311 1 0.17351501855393045 2 0.020395314856866447
		3 0 0.79957955705730577 1 0.17978931668245421 2 0.020631126260240058
		3 0 0.80363144683532806 1 0.17691256814001974 2 0.019455985024652254
		3 0 0.81613881438811942 1 0.16621997859411519 2 0.017641207017765437
		3 0 0.82933091790693403 1 0.15437337604010845 2 0.016295706052957493
		3 0 0.83523769227253986 1 0.14863895688688802 2 0.016123350840572186;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.47055590145753684 0 0 0 0 0.47055590145753684 0 0
		 0 0 0.47055590145753684 0 0 1.874983412329263 3.1881373085183178 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster33";
	rename -uid "468BB164-8F44-1D65-B758-BFB29DC98095";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 5 0.022720422925323031 6 0.3193814516620847 7 0.43274923086793676 
		8 0.20235820922079176 9 0.022790685323863819
		5 6 0.048102470013952535 7 0.32650571916368554 8 0.37294834141837563 
		9 0.22560647404999465 10 0.02683699535399162
		5 5 0.0047405789483537901 6 0.064491428312889815 7 0.44667839954976635 
		8 0.44658509384630035 9 0.037504499342689734
		5 5 0.0037273661043997724 6 0.11709841043766021 7 0.55036501330874454 
		8 0.31624205696357699 9 0.012567153185618548
		5 5 0.0060797667086657922 6 0.12728652404874954 7 0.44204602393908266 
		8 0.39419000403696647 9 0.030397681266535529
		5 6 0.067408357747989547 7 0.43763774451867216 8 0.43763774451867193 
		9 0.05146036132033649 10 0.0058557918943299338
		5 5 0.020806228003973824 6 0.18867370698843944 7 0.39544085578262755 
		8 0.34398896101092341 9 0.051090248214035801
		5 6 0.045997922875716378 7 0.38476755945743374 8 0.39774814088310095 
		9 0.15576384449522857 10 0.015722532288520347
		5 5 0.0012746028410578266 6 0.3544835813431173 7 0.6234251012522436 
		8 0.019761847307827051 9 0.0010548672557541335
		5 6 0.065447685252356211 7 0.38607223238532523 8 0.38720516682818762 
		9 0.14316188702523461 10 0.01811302850889639
		5 5 0.0088329148146952374 6 0.42027010129075393 7 0.49939472107708943 
		8 0.066193197550184185 9 0.0053090652672773122
		5 5 0.0046591590557127187 6 0.23118406145048701 7 0.55005752419056486 
		8 0.20332590520386826 9 0.010773350099367172;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.72183920285617642 0.15872061141165511 -1.2720845302986452 0
		 -0.18246814331529879 -0.83610830906163502 -0.0007821515627050718 0 1.2429773987376844 -0.27056985501465347 -0.73908203825874641 0
		 -1.6176430877277297 11.243898339084748 -1.8470775327225206 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster32";
	rename -uid "A427FCDF-5948-C2AC-C876-B4BF622F5704";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 16 0.0070999295166381642 17 0.12630778348647922 18 0.45116423826092034 
		19 0.38919399521954501 20 0.026234053516417281
		5 17 0.060759576286950646 18 0.26956874224842448 19 0.35827265737305991 
		20 0.27527212374060434 21 0.036126900350960528
		5 17 0.049860952675022545 18 0.43164011913615608 19 0.43751351216731232 
		20 0.074342763009580537 21 0.006642653011928578
		5 16 0.0012093537311109034 17 0.024250723197006004 18 0.48090403378084212 
		19 0.48053908979409599 20 0.01309679949694499
		5 16 0.0044545704093775862 17 0.072080492288685336 18 0.45281335381486093 
		19 0.4387148685474489 20 0.031936714939627242
		5 17 0.071625732939254505 18 0.41480741897734535 19 0.41727070606118244 
		20 0.087125830527467016 21 0.0091703114947507287
		5 16 0.0094610391863840879 17 0.10416188610601726 18 0.41077914771242763 
		19 0.41077914771242763 20 0.064818779282743363
		5 17 0.060230960932319555 18 0.3065350261869344 19 0.37794838424168481 
		20 0.22971467696902234 21 0.025570951670038856
		5 16 4.6687288025239839e-06 17 0.00025665597976119264 18 0.99060670077136004 
		19 0.0091132381478049185 20 1.8736372271328125e-05
		5 17 0.069877336203436571 18 0.32918105731676067 19 0.37121735155092322 
		20 0.2050208513213462 21 0.024703403607533377
		5 16 0.0020410350741651593 17 0.073815283448304014 18 0.61153816735295041 
		19 0.30643774607638996 20 0.0061677680481904834
		5 16 0.00084673362299916355 17 0.027477157582220722 18 0.61008162550666556 
		19 0.35722594459176332 20 0.0043685386963512752;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.76395365002882321 -0.28496077443031287 0.92970601790900897 0
		 -0.44728983673866252 -0.52395137693518101 0.20695048709564257 0 -0.5952118340018544 0.79790408146738234 0.7336573120567621 0
		 3.6337777823682336 9.8320546803357196 -0.43714028700892471 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster31";
	rename -uid "CB001B70-D94B-8AE0-BD1B-BEA1F342EB61";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 17 0.084808559095624639 18 0.37257474515966271 19 0.37897094897788475 
		20 0.14247454457570577 21 0.021171202191122181
		5 18 0.023515814977081856 19 0.16047763335915896 20 0.39756890755832602 
		21 0.39131278386087659 22 0.027124860244556535
		5 17 0.0015972942968824966 18 0.016110050982133819 19 0.48600542337736741 
		20 0.48600542337736741 21 0.010281807966248967
		5 17 0.0021705247229321847 18 0.12324861672019283 19 0.83697867258421321 
		20 0.036594239552981779 21 0.001007946419680034
		5 17 0.028431770682765842 18 0.22022299276475024 19 0.45046768448148822 
		20 0.27819645164547191 21 0.022681100425523803
		5 17 0.0055041750836482004 18 0.037253718414403954 19 0.46073978350728884 
		20 0.46073978350728906 21 0.03576253948736996
		5 17 0.040219727163639321 18 0.20211395597301049 19 0.36778983716528213 
		20 0.33441988251033089 21 0.055456597187737322
		5 18 0.016993729666219835 19 0.20944697788739713 20 0.44824987067734567 
		21 0.3162777924272317 22 0.0090316293418056665
		5 16 3.9249343190630655e-05 17 0.0060226854808945211 18 0.98941651545835418 
		19 0.0044686661462366474 20 5.2883571323999627e-05
		5 18 0.040996034482981475 19 0.3031690810409613 20 0.39027602955944746 
		21 0.25105126728427679 22 0.014507587632332803
		5 16 0.0075469705473202595 17 0.12838783987546984 18 0.45234425940278139 
		19 0.38554858236095757 20 0.026172347813470897
		5 16 0.0033502022347123308 17 0.052630088517132273 18 0.46038137653189215 
		19 0.45305898182116455 20 0.03057935089509867;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.4808728426457329 -0.55237732296615871 1.8021726756771366 0
		 0.071388576297279099 -1.3138734507162066 -0.4613716069267888 0 -1.880926750276505 -0.58226758016941926 1.3671175740030994 0
		 3.7022698768032378 15.633008935314248 3.1313765567697081 1;
	setAttr -s 7 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode skinCluster -n "skinCluster30";
	rename -uid "40D9A167-E948-4D20-1C5C-98845F207FE3";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 5 0.017796189058980234 12 0.073289877117626023 13 0.43864854955032179 
		14 0.43077421154564655 15 0.039491172727425375
		5 6 0.2044681640413831 7 0.18854736225229374 13 0.20442312166983415 
		14 0.23114639364947315 15 0.1714149583870159
		5 6 0.045370882252864016 12 0.062301488422486957 13 0.35068432894852647 
		14 0.3949478409562388 15 0.14669545941988379
		5 5 0.0091537586709675156 12 0.02852768113244035 13 0.39010211915517429 
		14 0.48812874985297794 15 0.084087691188439839
		5 6 0.016103280575780064 12 0.034118343618926433 13 0.35808735745409292 
		14 0.46616469041705522 15 0.12552632793414539
		5 6 0.056907007351605539 12 0.056853722672350566 13 0.3236407367809358 
		14 0.38819723307504722 15 0.1744013001200608
		5 5 0.056546128276350562 12 0.10703862035861168 13 0.37668186674958321 
		14 0.37661877100278557 15 0.083114613612669044
		5 6 0.16320043732487638 7 0.144094550007039 13 0.23610409244302638 
		14 0.27205420699730326 15 0.18454671322775498
		5 12 0.0012858836975300765 13 0.18204759589696709 14 0.80956394683702348 
		15 0.0068259659068598101 16 0.00027660766161954854
		5 5 0.13864223335617301 6 0.16113834128407972 13 0.26016171729999493 
		14 0.27728262348832106 15 0.16277508457143131
		5 5 0.0030817747299899723 12 0.016220081630114985 13 0.47926012337609486 
		14 0.48578124896255753 15 0.015656771301242652
		5 12 0.0091247324444732759 13 0.31305687973837582 14 0.62243400979406283 
		15 0.052801610396011119 16 0.0025827676270770007;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.2654870107131602 0.52769874383541882 -0.69373482577237955 0
		 -0.14878084963977714 0.81086962789248829 0.3453980433004436 0 -0.83325524792147154 0.37353809674439037 -1.2358585392796977 0
		 3.582599120784224 2.7335908803895448 -0.96974337748401918 1;
	setAttr -s 8 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster29";
	rename -uid "A0A0AE46-6B47-0697-0A3E-3087F4EA4DFA";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 6 0.051807314716212062 13 0.15492753970416917 14 0.35873330815603222 
		15 0.35201375773829352 16 0.082518079685293053
		5 13 0.074974711541019201 14 0.21135140941828953 15 0.29546107248616715 
		16 0.2944101955001403 17 0.1238026110543838
		5 13 0.089799509578654665 14 0.36660049161115488 15 0.36753727038467582 
		16 0.14711700358320776 17 0.028945724842306942
		5 12 0.010587266558191732 13 0.087651029730721891 14 0.44873964273020461 
		15 0.42006727987143344 16 0.032954781109448279
		5 12 0.069509226928149814 13 0.29258198352291587 14 0.36489234974321288 
		15 0.2331128574150656 16 0.039903582390655765
		5 12 0.059462516209047314 13 0.19179125012823861 14 0.32391039998473342 
		15 0.31812498384455051 16 0.1067108498334302
		5 6 0.049874607616540147 13 0.11023693272727865 14 0.33700380525716545 
		15 0.33732376344688414 16 0.16556089095213158
		5 13 0.091439152091624287 14 0.25747929640675637 15 0.295760621569155 
		16 0.26394063940679485 17 0.09138029052566965
		5 12 0.00024127529645311664 13 0.02985412689095162 14 0.96667411340360077 
		15 0.0031449585460740104 16 8.5525862920557538e-05
		5 13 0.076779659728320307 14 0.24111500918621701 15 0.30363281796206493 
		16 0.28468678213635179 17 0.093785730987045873
		5 12 0.021412781250571451 13 0.19913458884995283 14 0.47055459625389728 
		15 0.28542863837625615 16 0.023469395269322367
		5 5 0.0055779405134417301 12 0.022839930260995175 13 0.37867284998484413 
		14 0.51338215537942178 15 0.07952712386129708;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.9590455713839674 -0.7307395457103818 2.3840928792014431 0
		 -1.0187641451244451 1.020823062051827 1.1500227995830472 0 1.774976551490578 2.5381115720199512 -0.68057812242254601 0
		 5.2782556676972829 -2.9270960286275165 -2.2770374922158494 1;
	setAttr -s 8 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster28";
	rename -uid "31E652CA-BF4F-6483-0F97-5B81B2072865";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 6 0.050551145100265094 7 0.44900021722501771 8 0.44900021722501793 
		9 0.046679645853628111 10 0.0047687745960709816
		5 6 0.19167081956144372 7 0.29030082714229882 8 0.29030082714229882 
		9 0.16876287938083359 10 0.058964646773125129
		5 5 0.018199060732305847 6 0.21486396366220545 7 0.36073426138923503 
		8 0.33241601832146433 9 0.07378669589478927
		5 5 0.0082681507592257258 6 0.24322395826681781 7 0.45851868616455466 
		8 0.26608655879199639 9 0.023902646017405493
		5 5 0.030078990982936295 6 0.41980792458979532 7 0.41980792458979532 
		8 0.11059835417062409 9 0.019706805666849011
		5 5 0.040725453596332672 6 0.35583918575850215 7 0.35756263475921135 
		8 0.19750427396143855 9 0.048368451924515374
		5 6 0.086861050665364106 7 0.39383227030606666 8 0.39383227030606655 
		9 0.10996256002273984 10 0.015511848699762833
		5 6 0.23154460908156016 7 0.30100860888449649 8 0.2944803786316495 
		9 0.1314374728499087 10 0.041528930552385171
		5 5 0.00037374111174593295 6 0.18381497856076298 7 0.80735651057063329 
		8 0.0081066738384480679 9 0.00034809591840970851
		5 6 0.16499045099369705 7 0.3140460494593883 8 0.31404604945938819 
		9 0.16188426920542728 10 0.045033180882099171
		5 5 0.0010868240687120973 6 0.035925651155960324 7 0.55374901812212851 
		8 0.40178435209788277 9 0.0074541545553162411
		5 5 0.0081572594488724306 6 0.4775880185842431 7 0.4775880185842431 
		8 0.032965572035716428 9 0.0037011313469248962;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -1.6440046413183969 0.38773073563728389 1.1339326336927964 0
		 -0.12041571335006566 -1.1563712016439271 0.22082146470425459 0 -1.1803751125699207 -0.19138627612272055 -1.6458965607610845 0
		 0.45411669150849654 13.02458857467742 1.1706957595463745 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster27";
	rename -uid "DA849D77-4F42-D3F9-3516-6A88C661B483";
	setAttr -s 238 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.049588293459986353 1 0.6494020072831046 2 0.29320394151274537 
		3 0.0060115519617472604 10 0.0017942057824163703
		5 0 0.48555836117770534 1 0.48555836117770534 2 0.023446029420618662 
		10 0.0027186241119852997 11 0.0027186241119852997
		5 0 0.48942909815073654 1 0.48672046153580589 2 0.020734673604619024 
		3 0.0017700688365115398 10 0.00134569787232718
		5 0 0.81916323317549322 1 0.16090896382792028 2 0.013506219328396008 
		10 0.0032107918340952674 11 0.0032107918340952674
		5 0 0.81882124807992995 1 0.15933116992888507 2 0.016024046089354212 
		3 0.0031463860814681366 10 0.0026771498203626101
		5 4 0.042130847593858552 5 0.94518350375361759 6 0.0048869587099759706 
		12 0.00641318600331197 13 0.0013855039392358926
		5 17 0.0040246248108052642 18 0.086931043915924461 19 0.75271436042717632 
		20 0.14900417381195497 21 0.0073257970341389384
		5 16 0.004324381218239819 17 0.32868809149596734 18 0.62557215470878114 
		19 0.039648626385682118 20 0.0017667461913296217
		5 16 0.0081512301024267483 17 0.32478236172821051 18 0.59194635921626571 
		19 0.071376945529915178 20 0.0037431034231818635
		5 15 0.0058942966665376613 16 0.4963480206356875 17 0.49149968527579863 
		18 0.005555878165674398 19 0.0007021192563019731
		5 15 0.014780815699422448 16 0.51367310516381137 17 0.4566460139193313 
		18 0.013119800654465105 19 0.0017802645629698712
		5 15 0.02055341293256863 16 0.52526699214008643 17 0.43425089470448086 
		18 0.017465288339375315 19 0.0024634118834888099
		5 14 0.0050243938204520009 15 0.49399802714999363 16 0.49399802714999352 
		17 0.0063377155931822072 18 0.00064183628637871643
		5 14 0.0060084534602423802 15 0.50209307235801848 16 0.48463594130066917 
		17 0.0065541782107676645 18 0.0007083546703024454
		5 14 0.0080895787241587972 15 0.55361192120623193 16 0.42965049958691293 
		17 0.0077318329218489801 18 0.00091616756084722821
		5 13 0.0077571051917766599 14 0.49122942823038057 15 0.49122942823038046 
		16 0.0088567885752467886 17 0.0009272497722156083
		5 4 0.0019389201625077594 5 0.46601517126063069 12 0.49513178541954889 
		13 0.035636103978870813 14 0.0012780191784418505
		5 4 0.027716037650033897 5 0.84367112162254854 6 0.0025606407734661981 
		12 0.11759758770869927 13 0.0084546122452519648
		5 2 0.012865977792519282 3 0.48933682752053831 4 0.48933682752053831 
		5 0.0074777707855452806 12 0.00098259638085883305
		5 2 0.014571148855518235 3 0.48793288305657451 4 0.4879328830565744 
		5 0.0085220694947750926 12 0.001041015536557838
		5 2 0.010163697236868802 3 0.49227530392081692 4 0.49155137140512145 
		5 0.0054622523527609844 12 0.00054737508443189519
		5 1 0.0022955244296722524 2 0.48932612142138621 3 0.48932612142138643 
		4 0.017866330980063717 5 0.0011859017474912677
		5 1 0.0031340629033881915 2 0.48600303023719665 3 0.48600303023719665 
		4 0.023267115597102001 5 0.0015927610251165415
		5 1 0.0034172299602344093 2 0.48479106827929164 3 0.48479106827929164 
		4 0.025295786662116203 5 0.00170484681906611
		5 1 0.0025073525290056145 2 0.48781533525465953 3 0.48914501014631273 
		4 0.01932824029770415 5 0.0012040617723179327
		5 0 0.0041924987646251698 1 0.17342875052475876 2 0.75492778547504857 
		3 0.061227736291603663 4 0.006223228943963972
		5 0 0.0041576760633825422 1 0.17789079004207131 2 0.75052561296737985 
		3 0.060717367350142694 4 0.0067085535770235807
		5 0 0.002617166529307892 1 0.14828535764841649 2 0.80260464103618323 
		3 0.041769003770413524 4 0.0047238310156790184
		5 0 0.053137938589524862 1 0.6431040190599272 2 0.29483128611016063 
		3 0.0066106019149178921 10 0.0023161543254694335
		5 0 0.047634509576269336 1 0.64920275703505947 2 0.29374939541858058 
		3 0.0056863331504821554 10 0.0037270048196083347
		5 0 0.47865515746300763 1 0.48589432336375493 2 0.030747048838677859 
		3 0.0025589605900740533 10 0.0021445097444856283
		5 0 0.48593384358365938 1 0.48587732903774661 2 0.022396977338267825 
		10 0.0028959250201631144 11 0.0028959250201631144
		5 0 0.81357988116225133 1 0.16320278912845304 2 0.015009400622427293 
		10 0.0041039645434342515 11 0.0041039645434342515
		5 0 0.054897701111325269 1 0.60462198445208692 2 0.32890740461833184 
		3 0.0076483850605072205 10 0.0039245247577487929
		5 0 0.48691856128520805 1 0.48691856128520827 2 0.018715887705284387 
		10 0.0037234948621495834 11 0.0037234948621495834
		5 0 0.8536606435179025 1 0.131009300491741 2 0.0089502705841849675 
		10 0.003189892703085792 11 0.003189892703085792
		5 0 0.86278479609976355 1 0.1238865800111059 2 0.0075640743716016605 
		10 0.002882274758764479 11 0.002882274758764479
		5 0 0.8506103061270992 1 0.13465496060471968 2 0.0089742026509871085 
		10 0.0028802653085970042 11 0.0028802653085970042
		5 5 0.0020705286969704569 12 0.012850890917631161 13 0.47685770092371593 
		14 0.49470900785603711 15 0.013511871605645258
		5 4 0.00068875198647394553 5 0.49693423963257749 6 0.49646855380899529 
		7 0.005012613610289483 8 0.00089584096166380476
		5 4 0.001620490336060871 5 0.49631185679899537 6 0.48978798953697883 
		7 0.010502640394595555 8 0.0017770229333693066
		5 18 0.00062529236813729382 19 0.0094180136480101987 20 0.66756304991049109 
		21 0.321942315582748 22 0.00045132849061348172
		5 18 0.0015753891495017219 19 0.026858986105312167 20 0.60750555726800315 
		21 0.36293022956083848 22 0.001129837916344516
		5 18 0.002621009420324877 19 0.050394736505279612 20 0.58393839910115608 
		21 0.36123502145058445 22 0.0018108335226550175
		5 18 0.0033205252230069935 19 0.063874866564922972 20 0.57337035758135402 
		21 0.35720252219449611 22 0.0022317284362198715
		5 18 0.0025125493023958078 19 0.04168973923979824 20 0.58621059380877794 
		21 0.3678217748177473 22 0.0017653428312806871
		5 18 0.00034116059578771535 19 0.0014288452677654038 20 0.023773323759042935 
		21 0.93717631338202578 22 0.037280356995378072
		5 18 0.00063187174116275844 19 0.0027832741148123897 20 0.045192556600380469 
		21 0.8897609168130185 22 0.061631380730625858
		5 18 0.00057365958030981584 19 0.0025091944069312471 20 0.039718064979330427 
		21 0.8936044578941148 22 0.063594623139313841
		5 18 0.00036353454680101342 19 0.001535260131197387 20 0.024978842554386538 
		21 0.93259872151275514 22 0.040523641254859959
		5 18 2.6195506994078863e-05 19 6.3361900703165649e-05 20 0.00030884756071842623 
		21 0.19961702086268127 22 0.79998457416890301
		5 18 2.7282674294957439e-05 19 6.6145866323662856e-05 20 0.00031978751548315684 
		21 0.20036396708762608 22 0.79922281685627217
		5 6 0.00029729173527531344 7 0.0016691320584684445 8 0.04358988571175295 
		9 0.836554135842837 10 0.11788955465166623
		5 6 0.00042426494894425715 7 0.0022480918699319861 8 0.046821666612870905 
		9 0.77093739012630524 10 0.17956858644194762
		5 6 0.00039080475088028337 7 0.00212873831585825 8 0.050118433341491339 
		9 0.77778808536478394 10 0.16957393822698619
		5 13 0.0048623835722280467 14 0.48722461770105446 15 0.50158810162989376 
		16 0.0056358666079653749 17 0.00068903048885832273
		5 17 0.0022758336184543738 18 0.050519852502288021 19 0.77323334895061113 
		20 0.17077590109837459 21 0.0031950638302719108
		5 17 0.0026048440130377812 18 0.057703858367701762 19 0.73343348392560792 
		20 0.20310640408005529 21 0.0031514096135972646
		5 17 0.002334568530542043 18 0.057563437489433718 19 0.75478523060244718 
		20 0.18252309011593826 21 0.0027936732616389093
		5 17 0.0014208156135021501 18 0.043704013993274768 19 0.85131599021654492 
		20 0.10172331701002357 21 0.0018358631666546702
		5 16 0.0068972539181726645 17 0.34086680318787066 18 0.58598306461609784 
		19 0.062889892711709 20 0.0033629855661499444
		5 16 0.0054723147706645693 17 0.38242422625342237 18 0.56249697169267865 
		19 0.047102716721579209 20 0.0025037705616552685
		5 16 0.0037135052066970663 17 0.41361862388606541 18 0.54975898302617787 
		19 0.031338190205159683 20 0.0015706976759000176
		5 16 0.0015980635873816863 17 0.39561208444143559 18 0.58798699753350581 
		19 0.014196820185148794 20 0.00060603425252809011
		5 15 0.011730319838459704 16 0.5078739331006743 17 0.46737482289547611 
		18 0.011523508643378193 19 0.001497415522011735
		5 15 0.0057323142969099 16 0.49500616772320361 17 0.49259776715217851 
		18 0.0059293142255974771 19 0.00073443660211048277
		5 14 0.0066273620553811974 15 0.63030825007002467 16 0.35680585672014264 
		17 0.0055742259768149236 18 0.00068430517763654454
		5 6 0.0007133388043121632 7 0.015813973047447881 8 0.68449952644292422 
		9 0.29707888080109762 10 0.0018942809042180786
		5 6 0.000716436841631014 7 0.014570422773081565 8 0.71028510412135093 
		9 0.27233774186076282 10 0.0020902944031737898
		5 6 0.00052313316699392472 7 0.010573371300845307 8 0.7599573341490693 
		9 0.2273361340685372 10 0.0016100273145542119
		5 6 5.3243269266975374e-05 7 0.00017215503026898611 8 0.0011708722411736061 
		9 0.21573446655764694 10 0.78286926290164349
		5 6 5.5524792940450421e-05 7 0.00017791880849189583 8 0.0011816530822296428 
		9 0.20293857706908131 10 0.79564632624725673
		5 18 6.4250366600023413e-05 19 0.00014486235885590091 20 0.00069358103985932827 
		21 0.11956468698488833 22 0.87953261924979642
		5 18 5.8394080794544371e-05 19 0.00022205371374709991 20 0.0037296708547993715 
		21 0.98902975188590558 22 0.0069601294647534239
		5 18 0.0011617372106296282 19 0.016884426521168186 20 0.62276388434494834 
		21 0.35833183372201416 22 0.00085811820123975245
		5 18 0.00010474913244702147 19 0.0004161849732285269 20 0.0070751932195522657 
		21 0.98013445381609221 22 0.012269418858680036
		5 3 0.0026519189553084587 4 0.093416251695529792 5 0.88501231158682203 
		6 0.014454762782522956 12 0.0044647549798166779
		5 3 0.0032984998833910581 4 0.11412262943051235 5 0.86069699195713067 
		6 0.01638975789234394 12 0.0054921208366219823
		5 3 0.0018710810860817332 4 0.092443432935183437 5 0.88980594557483761 
		6 0.010426354733670255 12 0.0054531856702269921
		5 18 6.0926487361192641e-05 19 0.00013710785674086475 20 0.00065469878229519 
		21 0.10881579980584999 22 0.89033146706775279
		5 18 4.9393657601389771e-05 19 0.00011316987935791011 20 0.00054607594285961702 
		21 0.11600188294546089 22 0.88328947757472009
		5 18 8.241153176527299e-05 19 0.00031176802936424278 20 0.0051453355461955732 
		21 0.98539370439760399 22 0.0090667804950709616
		5 17 0.0016762702146426256 18 0.049608152218295502 19 0.85500701373486832 
		20 0.09114818279309414 21 0.0025603810390993922
		5 16 0.0012513681162477056 17 0.32884311081009804 18 0.65767122928217492 
		19 0.011776316822464016 20 0.00045797496901521626
		5 15 0.0029880773393504223 16 0.49687050839625135 17 0.49687050839625158 
		18 0.0029118628156723212 19 0.00035904305247417249
		5 15 0.0025248423516980069 16 0.49739891166164224 17 0.49739891166164246 
		18 0.0023839711225364306 19 0.00029336320248075774
		5 14 0.0069971643382639717 15 0.55196543222751537 16 0.43331354353238788 
		17 0.0069212690030955723 18 0.00080259089873738784
		5 14 0.0065079224410996431 15 0.49930095572219235 16 0.48589565602444479 
		17 0.0074866305839121098 18 0.00080883522835117504
		5 14 0.0055775972399804948 15 0.49325992255117557 16 0.49325992255117546 
		17 0.0071711760287356454 18 0.00073138162893284062
		5 13 0.0067564191283069324 14 0.48880885018626974 15 0.49528958590957561 
		16 0.0081822474233393672 17 0.0009628973525083464
		5 13 0.0080027775568939936 14 0.49068568420788766 15 0.49075156852054552 
		16 0.0095065616320251078 17 0.0010534080826477418
		5 2 0.0058113059781015391 3 0.50050671081075804 4 0.49047417561748302 
		5 0.0029577519238978668 12 0.0002500556697596631
		5 1 0.0014312245841521306 2 0.49525348740779951 3 0.49080215580277897 
		4 0.011838211262856127 5 0.00067492094241329375
		5 1 0.00096846048826177832 2 0.49838199460097443 3 0.49166794905407535 
		4 0.0085153467024223928 5 0.00046624915426612311
		5 1 0.0012768663352880488 2 0.48702480423882738 3 0.49942932427341907 
		4 0.011609695074381782 5 0.00065931007808357571
		5 0 0.0011311282672133577 1 0.09105772503556063 2 0.8842146040170249 
		3 0.021274822573646882 4 0.0023217201065542383
		5 0 0.00080864992062709402 1 0.071339351433875764 2 0.90942359714425791 
		3 0.016625344595150488 4 0.0018030569060887554
		5 0 0.0013363847171588574 1 0.096908302074299693 2 0.8716777671001501 
		3 0.027072361903166187 4 0.0030051842052251179
		5 0 0.0024509738143377339 1 0.13417465641847245 2 0.81238174261535701 
		3 0.045849919561108857 4 0.005142707590724006
		5 0 0.0397941238262777 1 0.66388586810631134 2 0.28593302056993847 
		10 0.0051934937487362158 11 0.0051934937487362158;
	setAttr ".wl[100:199].w"
		5 0 0.040231631440079338 1 0.65025740549849975 2 0.29679265551670192 
		10 0.0063591537723595472 11 0.0063591537723595472
		5 0 0.047014981230226939 1 0.62353650075352995 2 0.31782882317121253 
		3 0.0060644504916818548 10 0.00555524435334876
		5 0 0.48944630781195581 1 0.48944630781195569 2 0.014740244435504308 
		10 0.0031835699702920692 11 0.0031835699702920692
		5 0 0.48941833381703165 1 0.48941833381703165 2 0.013954708167054873 
		10 0.0036043120994409031 11 0.0036043120994409031
		5 4 0.0043431106228428674 5 0.44409477038980694 6 0.0053063264937238614 
		12 0.48391126608393265 13 0.062344526409693637
		5 14 0.0070749463905641361 15 0.63352312294491242 16 0.35285719860158743 
		17 0.0058215992203354871 18 0.00072313284260037221
		5 13 0.0042521526635648016 14 0.4944988246888784 15 0.49622504778096133 
		16 0.004505582925234084 17 0.00051839194136146468
		5 13 0.0032201478558189665 14 0.49217700836677047 15 0.50067930898943558 
		16 0.0035036138671144532 17 0.00041992092086043359
		5 5 0.033185700047854066 12 0.47647621774200505 13 0.47647621774200505 
		14 0.012950610828321506 15 0.00091125363981434538
		5 5 0.0012937581150341186 12 0.0082144286258328935 13 0.47547247716346508 
		14 0.50611427081394766 15 0.008905065281720274
		5 5 0.0013351156066988676 12 0.0088559068126828136 13 0.48250480080681202 
		14 0.49883174234772881 15 0.008472434426077504
		5 5 0.030940448364925585 6 0.0023600045657661542 12 0.44801721840519798 
		13 0.5052064212831926 14 0.013475907380917749
		5 5 0.49649776288767589 6 0.49649776288767589 7 0.0048711908761135793 
		12 0.0011994094944300742 13 0.00093387385410468693
		5 5 0.010121402259351528 6 0.59406151162843646 7 0.38888332580972695 
		8 0.0059979920183127079 9 0.00093576828417230484
		5 5 0.0071180083317225291 6 0.72247214708297758 7 0.26521284011656954 
		8 0.0045131209796799203 9 0.00068388348905049209
		5 6 0.00052116598601974803 7 0.011955446969699218 8 0.63513181300147914 
		9 0.35093752766209491 10 0.0014540463807069207
		5 5 0.00055604831573636323 6 0.022609639866919561 7 0.65320809155670001 
		8 0.31875174592866057 9 0.0048744743319835112
		5 5 0.022450229578655796 6 0.00081200887658561824 12 0.47501117226791939 
		13 0.49377512171569871 14 0.0079514675611404174
		5 5 0.0012154740347706684 12 0.007112531109999677 13 0.4884970783434312 
		14 0.49623550798895366 15 0.0069394085228448987
		5 5 0.0014651549900796432 12 0.0079865613664625024 13 0.48781689037430642 
		14 0.49478731660924802 15 0.0079440766599035376
		5 13 0.0079946458149530771 14 0.49098669208557771 15 0.49098669208557771 
		16 0.009089381376245903 17 0.00094258863764569119
		5 13 0.0074538268575039561 14 0.49178129359391659 15 0.49178129359391648 
		16 0.0080945065293993295 17 0.00088907942526358951
		5 5 0.001199536029832573 12 0.0067257943584584801 13 0.48731561875172885 
		14 0.49807432767804233 15 0.006684723181937728
		5 5 0.036364787131882348 6 0.0029531114605027089 12 0.44593496093504897 
		13 0.49944772304589458 14 0.01529941742667144
		5 4 0.0054974933219498427 5 0.45050900303698155 6 0.0064335556564701947 
		12 0.47028265578557243 13 0.067277292199025979
		5 5 0.0014837846273748727 12 0.0091227249040851648 13 0.48443471946051303 
		14 0.49590640625779736 15 0.0090523647502296183
		5 6 0.0004802237100510536 7 0.011172933848531968 8 0.62300187175123822 
		9 0.36400277441274798 10 0.0013421962774308824
		5 5 0.000678203409264256 6 0.026298272267670987 7 0.59167668687048358 
		8 0.37573365154554306 9 0.0056131859070381396
		5 6 0.0010728846143210405 7 0.021772813217311286 8 0.57624192193588886 
		9 0.39791105152401424 10 0.0030013287084645433
		5 6 9.2143992132314633e-05 7 0.00053310217413375638 8 0.01415596101934777 
		9 0.95841006168594156 10 0.026808731128444608
		5 6 0.00021960456856159546 7 0.0012070234313538248 8 0.027991265918518742 
		9 0.88561585438527124 10 0.084966251696294556
		5 5 0.00029525129336871957 6 0.0093777690577720573 7 0.76260874538979606 
		8 0.2249377442344728 9 0.0027804900245903667
		5 5 0.0051498018913158404 6 0.84582290838847829 7 0.14533864503893471 
		8 0.0032253850216812283 9 0.00046325965958994705
		5 5 0.00037201791616455572 6 0.0099332800375982223 7 0.71262710273392982 
		8 0.27376109239043056 9 0.0033065069218768495
		5 18 3.3984137988148243e-05 19 8.0600074746915872e-05 20 0.00039291923086672524 
		21 0.17028047443467192 22 0.82921202212172629
		5 18 4.8827452808538724e-05 19 0.00011253976732430205 20 0.00054482990407509944 
		21 0.13764981418733729 22 0.86164398868845482
		5 18 0.00013505291750024023 19 0.0005349420008930653 20 0.0091096791108453128 
		21 0.97500449039264381 22 0.015215835578117612
		5 18 0.00041213487290227399 19 0.0054148090335312199 20 0.6727921294969389 
		21 0.32106461972406497 22 0.000316306872562674
		5 18 0.0005999994270087176 19 0.0077502351444276307 20 0.64604277181080949 
		21 0.34514315237725024 22 0.0004638412405039136
		5 5 0.0092014996543749155 6 0.81524488191468047 7 0.16877898544481965 
		8 0.0059545784441965921 9 0.00082005454192852275
		5 5 0.00042262538417652169 6 0.011182794502862978 7 0.64486848950628584 
		8 0.34004077126919918 9 0.0034853193374755108
		5 5 0.02465873581290625 6 0.66573793415312654 7 0.29042318715126952 
		8 0.0168354651746742 9 0.0023446777080236383
		5 5 0.00078404024569467734 6 0.021217303402462032 7 0.56014764137746853 
		8 0.41188384875725553 9 0.0059671662171192335
		5 5 0.021776489329946455 6 0.54579660952139664 7 0.41043241269868519 
		8 0.019437758131480194 9 0.002556730318491521
		5 5 0.00065975970298348143 6 0.02205915045381162 7 0.56308761239467375 
		8 0.40891328365967161 9 0.0052801937888596381
		5 17 0.0041573060029306812 18 0.083344429354385671 19 0.74243560740726355 
		20 0.16250541299622479 21 0.0075572442391954424
		5 18 2.5780151892479267e-05 19 6.1087171066619711e-05 20 0.0002973009358617097 
		21 0.12442250495098821 22 0.87519332679019102
		5 6 0.00087374263237329137 7 0.017425187100737278 8 0.64573367704076545 
		9 0.33339326436754918 10 0.002574128858574911
		5 5 0.00035178327747850934 6 0.013445575699256239 7 0.73598893668969034 
		8 0.24694375925115122 9 0.0032699450824237707
		5 6 0.0006262935025081695 7 0.012486072277668969 8 0.7259376863269752 
		9 0.25902560010717707 10 0.0019243477856706374
		5 5 0.000714709349613166 12 0.004424015365637868 13 0.48118247573344725 
		14 0.50908109317416006 15 0.0045977063771415541
		5 16 0.0081381806978914773 17 0.32102419492484308 18 0.59270602896236768 
		19 0.074145440937426546 20 0.0039861544774711724
		5 17 0.0026065378216138298 18 0.057799792550196752 19 0.78754796409671557 
		20 0.14784676792335433 21 0.0041989376081194661
		5 15 0.018721921998028496 16 0.52108286503652235 17 0.44115770309973107 
		18 0.016725872337388911 19 0.0023116375283290919
		5 2 0.0044037810959013648 3 0.50285129764989189 4 0.49022717714804126 
		5 0.002339251958290735 12 0.00017849214787475846
		5 2 0.0061723969006433118 3 0.49058743711003011 4 0.4991297479114839 
		5 0.0038229958282663705 12 0.00028742224957630967
		5 2 0.0090525336432928927 3 0.4826198562413585 4 0.50105064689128354 
		5 0.0067324866976698414 12 0.00054447652639538747
		5 2 0.0087912151263969032 3 0.48468271125064932 4 0.49865699195828339 
		5 0.0072019682460781635 12 0.00066711341859205695
		5 1 0.0019450499298704451 2 0.48300167794307225 3 0.49604653660846681 
		4 0.017916416134587495 5 0.0010903193840030292
		5 1 0.0022078543497772076 2 0.48705026781157379 3 0.48942308436905796 
		4 0.020046129239664194 5 0.0012726642299268145
		5 0 0.0031416368990395118 1 0.14962708137302499 2 0.78719703223364468 
		3 0.05428677758264619 4 0.0057474719116446067
		5 5 0.046938373558416131 12 0.46603375464903618 13 0.46603375464903618 
		14 0.019472405044810809 15 0.001521712098700632
		5 4 0.005764100769125844 5 0.45540737904881284 12 0.45622254126976841 
		13 0.078637620739425054 14 0.0039683581728677418
		5 4 0.064869798705551818 5 0.65392748239248955 6 0.0042961611346221378 
		12 0.25240766405880061 13 0.024498893708535831
		5 3 0.0074963636889757452 4 0.092766659254402084 5 0.60539246591093909 
		12 0.26349729048226045 13 0.03084722066342261
		5 3 0.021197048012467318 4 0.45399926109612321 5 0.48933866698945477 
		12 0.029499765173406873 13 0.0059652587285479158
		5 3 0.038052610519962338 4 0.48499715155620249 5 0.43222356229412695 
		12 0.036855192878549832 13 0.0078714827511582371
		5 2 0.010424078692162376 3 0.49035487428785168 4 0.49071953650444822 
		5 0.0076402217706761574 12 0.00086128874486158461
		5 1 0.0020168028606508477 2 0.48981140241047494 3 0.48981140241047494 
		4 0.017251067472228362 5 0.0011093248461708251
		5 0 0.0031452629085458742 1 0.14717471723603615 2 0.7922206292584858 
		3 0.052390595358320552 4 0.0050687952386114822
		5 0 0.0034346326887381841 1 0.15479101262229777 2 0.78307570744517829 
		3 0.053610477241056866 4 0.0050881700027289043
		5 0 0.037065923489193006 1 0.71472428438376678 2 0.24332906734460141 
		3 0.0039101651935503946 4 0.00097055958888842334
		5 0 0.034811432805300996 1 0.73160061343196736 2 0.22914684832662591 
		3 0.0035780536147700412 4 0.00086305182133577835
		5 0 0.045041759246619809 1 0.68260368391113824 2 0.26591332287601877 
		3 0.0051675992838397669 4 0.0012736346823834406
		5 0 0.49584795508223772 1 0.48629570913372749 2 0.015964876723067258 
		3 0.0012108371081562934 10 0.00068062195281123439
		5 0 0.48996124497886745 1 0.49084198575644172 2 0.017303934150203856 
		3 0.0012556961903913738 10 0.00063713892409575444
		5 0 0.47612302944615664 1 0.49304622639918938 2 0.027512225912635222 
		3 0.0021165936689231495 10 0.0012019245730956597
		5 0 0.82311008240780625 1 0.15286022127813489 2 0.018144907678619031 
		3 0.0036069246964141092 10 0.0022778639390257263
		5 0 0.80135545637494099 1 0.16764372366741517 2 0.02353397416179762 
		3 0.004790829726789258 10 0.0026760160690569509
		5 0 0.76755987895953837 1 0.19389149009253814 2 0.028825024158326579 
		3 0.0059392232942800226 10 0.0037843834953170501
		5 0 0.76799920853255355 1 0.19703969489873441 2 0.025167302150022459 
		3 0.0050828518626337502 10 0.0047109425560556842
		5 3 0.0017689742220956327 4 0.073438120647685706 5 0.90790964591417178 
		6 0.012071430266790141 12 0.0048118289492567936
		5 4 0.064833658809354211 5 0.90544446805764445 6 0.014143544335382847 
		12 0.012294334759789192 13 0.0032839940378293357
		5 4 0.0077892107430972387 5 0.44648636149870735 12 0.44718004186732535 
		13 0.093275811987985374 14 0.0052685739028847057
		5 4 0.0040307766012841794 5 0.46819228703666826 12 0.47182000903185634 
		13 0.053584856915013794 14 0.0023720704151772984
		5 3 0.0082844684810498646 4 0.093241603628402184 5 0.57805653153723913 
		12 0.28396210503342834 13 0.036455291319880415
		5 4 0.075112989077386672 5 0.72280625127507148 6 0.0039537180415165482 
		12 0.17931713353597359 13 0.018809908070051732
		5 3 0.042391919340775436 4 0.48492402962025005 5 0.4246164634572242 
		12 0.039373413328011843 13 0.0086941742537384337
		5 3 0.019051679628626757 4 0.50343693407278189 5 0.45433170715514415 
		12 0.01900678194168955 13 0.0041728972017575517
		5 2 0.01222099349551798 3 0.4896231833854861 4 0.48962318338548633 
		5 0.0075523080188704675 12 0.00098033171463915176
		5 5 0.031948328716655455 6 0.00081463266934804122 12 0.47762347939320049 
		13 0.47775894630786925 14 0.011854612912926669
		5 4 0.0029332834779712664 5 0.4721908167751605 12 0.48488198873727639 
		13 0.038426021284570192 14 0.0015678897250215441
		5 4 0.04095560737443333 5 0.86644869059276319 6 0.0030905208757525853 
		12 0.081646782865466269 13 0.0078583982915845958
		5 5 0.020878682110893547 6 0.57515997148657505 7 0.39297104464702304 
		8 0.0095551747015546716 9 0.0014351270539536653
		5 5 0.014406430761397644 6 0.5481203943859112 7 0.42886172271802031 
		8 0.0074553991722354556 9 0.0011560529624352826
		5 4 0.0018094778070818227 5 0.49478096854733705 6 0.49140466959401197 
		7 0.010380312210075605 8 0.001624571841493455
		5 6 0.0001936558843152072 7 0.0011114481885809917 8 0.030612230923370193 
		9 0.90062877778964612 10 0.067453887214087585
		5 6 7.3475322459722495e-05 7 0.0004325198873249361 8 0.012792538417873582 
		9 0.96363743746415442 10 0.023064028908187414
		5 6 2.8693393002741469e-05 7 0.0001722284186466783 8 0.0053108981271095864 
		9 0.98663323153309379 10 0.0078549485281472747
		5 4 0.00055311851463831418 5 0.48734619454427514 6 0.50705693656904971 
		7 0.0042360240552924058 8 0.00080772631674433197;
	setAttr ".wl[200:237].w"
		5 5 0.48915994173741784 6 0.49861756783043254 7 0.0088503660655640422 
		8 0.0017819535270385504 12 0.0015901708395470039
		5 5 0.037253421837927049 12 0.47312880011071606 13 0.47312880011071595 
		14 0.015344039503312165 15 0.0011449384373286848
		5 4 0.0035156446256232612 5 0.46265214174233493 12 0.47112576413799023 
		13 0.060183903603118517 14 0.0025225458909331117
		5 5 0.021718777736613775 6 0.00080502466119746299 12 0.47650634767859051 
		13 0.49268135739564201 14 0.0082884925279562982
		5 5 0.49749792629382339 6 0.49749792629382328 7 0.0029376720652761201 
		12 0.0011071192195039826 13 0.0009593561275732899
		5 5 0.49383107924569802 6 0.49383107924569802 7 0.0071516699777172841 
		12 0.0027418747763273926 13 0.0024442967545592205
		5 18 6.0789496396354557e-06 19 1.1346809133746334e-05 20 3.5948564191703754e-05 
		21 0.001058076794963961 22 0.9988885488820709
		5 18 4.8632060510883797e-06 19 8.9402161647759806e-06 20 2.8221219843675534e-05 
		21 0.00077344335868857631 22 0.99918453199925183
		5 0 0.89333930572278952 1 0.088337274911647487 2 0.010156951883616408 
		10 0.0040832337409732805 11 0.0040832337409732805
		5 0 0.87350888556187589 1 0.10282052090955064 2 0.014554490682474193 
		10 0.0045580514230496557 11 0.0045580514230496557
		5 0 0.88028475988017885 1 0.095166449426548325 2 0.016354153050942424 
		3 0.0043263024739183817 10 0.0038683351684119863
		5 18 3.7902195935690363e-06 19 6.8279843980841629e-06 20 2.1479674258277282e-05 
		21 0.0005280577988559745 22 0.99943984432289412
		5 18 3.0843706917900134e-06 19 5.6423868130638365e-06 20 1.7830905849843453e-05 
		21 0.00047196262861602602 22 0.99950147970802938
		5 0 0.89161637914040004 1 0.088087823787114286 2 0.010639725133953174 
		10 0.0048280359692662389 11 0.0048280359692662389
		5 0 0.8958128866032149 1 0.086001066395017867 2 0.0093115843555587156 
		10 0.0044372313231042532 11 0.0044372313231042532
		5 0 0.88354344631608472 1 0.089268990458836059 2 0.018444279147118322 
		3 0.0052083142434361353 10 0.0035349698345247364
		5 0 0.86492006774454921 1 0.099487105807772078 2 0.024046847372912027 
		3 0.0072149043781293068 10 0.0043310746966373995
		5 0 0.83968798832609781 1 0.11673587471230987 2 0.028841104748522955 
		3 0.0087004009330906729 10 0.006034631279978696
		5 0 0.84555829199592614 1 0.11708912720457265 2 0.023984458321203838 
		3 0.0066857351933405779 10 0.0066823872849568365
		5 0 0.87038770799981491 1 0.10214829633473929 2 0.015810706959677318 
		10 0.0058266443528842424 11 0.0058266443528842424
		5 6 3.0837108133030887e-05 7 9.7099104679751195e-05 8 0.00063371245304822213 
		9 0.16941055997886512 10 0.82982779135527396
		5 6 3.1764095311849833e-05 7 0.00010100002111461795 8 0.00067446959133449908 
		9 0.1869054977901505 10 0.81228726850208854
		5 3 0.0067437589404696335 4 0.53602647906826595 5 0.45209881737585955 
		6 0.0021159454101154626 12 0.0030149992052893064
		5 3 0.015490055035478848 4 0.56277955384681366 5 0.41358129441552782 
		6 0.0042383054889828979 12 0.0039107912131968086
		5 3 0.017517464330903062 4 0.56668246497546249 5 0.40703638778648543 
		6 0.0046790596561525196 12 0.0040846232509964961
		5 3 0.011236233342445459 4 0.54113469877068354 5 0.44015390860675108 
		6 0.003399045632488649 12 0.0040761136476313011
		5 6 4.5792497761614314e-05 7 0.00014812988559378552 8 0.0010162185179378527 
		9 0.21796383815435 10 0.78082602094435671
		5 6 3.7676618141352066e-05 7 0.00012106106473743437 8 0.00082413483748400675 
		9 0.20734382999960943 10 0.79167329748002779
		5 6 3.7232278456743447e-05 7 0.0001168698624927079 8 0.00075192631156460656 
		9 0.16893354948666042 10 0.83016042206082563
		5 18 2.0158862521336721e-05 19 3.7793433383034011e-05 20 0.00011945733272411251 
		21 0.0034498752290403941 22 0.99637271514233117
		5 18 1.0312508609107273e-05 19 1.8497021911765685e-05 20 5.7959696561962609e-05 
		21 0.0013759576395341578 22 0.99853727313338303
		5 4 0.07089574233053704 5 0.75420384088628167 6 0.025703393622366739 
		12 0.12991829306153369 13 0.019278730099280914
		5 3 0.0047431418769569621 4 0.48935779298491394 5 0.49719343427484414 
		6 0.0020958033106089026 12 0.0066098275526761101
		5 18 1.2189946549663006e-05 19 2.2041438384376056e-05 20 6.9129199225886813e-05 
		21 0.0017074320878132149 22 0.99818920732802696
		5 4 0.053800181393992091 5 0.80814785416425339 6 0.016365433392055439 
		12 0.10827371608578208 13 0.01341281496391708
		5 18 1.6265793755208952e-05 19 3.0155475195499898e-05 20 9.5195069765312409e-05 
		21 0.0025943618738109957 22 0.99726402178747298
		5 3 0.0026566649175598285 4 0.44828201027458475 5 0.5423333460530273 
		6 0.0012478944788563476 12 0.005480084275971824
		5 6 4.8588853440576337e-05 7 0.00015365769360725604 8 0.00099541155920880955 
		9 0.18422391607595964 10 0.81457842581778372;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.092903076835537612 0.80088309718127215 0 1;
	setAttr -s 23 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 23 ".lw";
	setAttr -s 23 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak5";
	rename -uid "B5E620C0-6D4B-CAE3-376D-6F8830FBA5FD";
createNode skinCluster -n "skinCluster26";
	rename -uid "8251C643-4A46-E08C-CD92-6CBC4FBE192B";
	setAttr -s 552 ".wl";
	setAttr ".wl[0:99].w"
		5 3 0.0060798038726413307 4 0.37798786770696496 5 0.59382544337060195 
		12 0.018582703048168923 13 0.0035241820016228176
		5 4 0.20475152333666274 5 0.76352803025441818 6 0.0034722916719214067 
		12 0.024281789085928016 13 0.0039663656510696352
		5 4 0.21018505880873356 5 0.76439951425841712 6 0.0047437420663521586 
		12 0.01770406179311106 13 0.0029676230733859878
		5 3 0.002283500043158135 4 0.37216948200880501 5 0.61608789138334619 
		6 0.0015938971687251861 12 0.0078652293959655187
		5 3 0.0082362130602773205 4 0.51413643702305223 5 0.4676762026410316 
		12 0.0081846710220232575 13 0.001766476253615507
		5 3 0.034016154345422434 4 0.69404020887825868 5 0.26206150501979214 
		12 0.0078616050196524748 13 0.0020205267368742677
		5 2 0.0036372544192438514 3 0.066315194478663284 4 0.67751626474102589 
		5 0.23956202043233801 12 0.012969265928729039
		5 2 0.0042806813647511413 3 0.078102279641851083 4 0.66675380257866979 
		5 0.23605611046284036 12 0.014807125951887691
		5 2 0.0032497262784977488 3 0.058882627857922101 4 0.67877610996344329 
		5 0.24717828370155154 12 0.011913252198585434
		5 3 0.019079583205202845 4 0.5213074304426959 5 0.43915446528432323 
		12 0.016711846113451827 13 0.0037466749543263308
		5 4 0.12529173369379673 5 0.79749685952035665 6 0.016075718247800581 
		12 0.051757757326386031 13 0.0093779312116600115
		5 4 0.057872611626913477 5 0.86435063598929274 6 0.016324753855487414 
		12 0.052850766067353609 13 0.0086012324609528162
		5 4 0.031191068025114593 5 0.92338268142575941 6 0.011972923790156947 
		12 0.028589287409112877 13 0.0048640393498561758
		5 0 0.85499394208830726 1 0.13213576503979174 2 0.007923507491938056 
		10 0.0024733926899814323 11 0.0024733926899814323
		5 0 0.82174943450189686 1 0.15986523079482251 2 0.012377715374724794 
		10 0.0030038096642779686 11 0.0030038096642779686
		5 0 0.8094755558232668 1 0.16840342044888376 2 0.016044682884692258 
		3 0.0031208747192414837 10 0.002955466123915606
		5 0 0.81567886835993575 1 0.16044972318987336 2 0.017835516677476862 
		3 0.0035267014905894099 10 0.0025091902821246944
		5 0 0.8090954127603025 1 0.16266300971199837 2 0.02139553098222937 
		3 0.004331566821180648 10 0.0025144797242891981
		5 0 0.78672697466309438 1 0.17795916171970647 2 0.026702349391640508 
		3 0.0055433478368168247 10 0.0030681663887417673
		5 0 0.75774034983689176 1 0.19967290429196138 2 0.031711108957570643 
		3 0.0067033002681168713 10 0.0041723366454592603
		5 0 0.7503729096615579 1 0.20799504850500519 2 0.030305315589883978 
		3 0.0063071355030021497 10 0.0050195907405508342
		5 0 0.77762566394867039 1 0.19134373622960599 2 0.021678761484483902 
		10 0.0046759191686199233 11 0.0046759191686199233
		5 0 0.81787664197379117 1 0.16150126635364587 2 0.013113129756353368 
		10 0.0037544809581047671 11 0.0037544809581047671
		5 0 0.85578737156270879 1 0.13075722474527782 2 0.0079200289054909903 
		10 0.0027676873932611732 11 0.0027676873932611732
		5 0 0.86398511720382676 1 0.12420371913933168 2 0.0068496608331574437 
		10 0.0024807514118421149 11 0.0024807514118421149
		5 0 0.60305689909702209 1 0.37364748731028163 2 0.016628112105127744 
		10 0.0033337507437842628 11 0.0033337507437842628
		5 0 0.61107245835890944 1 0.36603331947646123 2 0.017972483088954976 
		10 0.0024608695378372375 11 0.0024608695378372375
		5 0 0.63549482367079169 1 0.34518106147609728 2 0.015915060633064179 
		3 0.0019632955609040037 10 0.0014457586591427919
		5 0 0.6551778905422061 1 0.32779946076515482 2 0.014439394302548631 
		3 0.0016334098095036971 10 0.00094984458058685922
		5 0 0.63668276790261635 1 0.34205951296791753 2 0.018150155555976835 
		3 0.0020120278293193189 10 0.0010955357441697893
		5 0 0.60133248284932372 1 0.36873273905937859 2 0.025149994408182445 
		3 0.002944932882028066 10 0.0018398508010873385
		5 0 0.58800124321569547 1 0.38000890975741469 2 0.026041694283729599 
		3 0.003222031709599451 10 0.0027261210335606696
		5 0 0.59533843232251349 1 0.37826005653472394 2 0.020064727696813969 
		10 0.0031683917229743241 11 0.0031683917229743241
		5 0 0.60872099864517237 1 0.37047101653269743 2 0.014197211927583085 
		10 0.0033053864472735979 11 0.0033053864472735979
		5 0 0.62414999294540763 1 0.35889989082919965 2 0.010581422701634891 
		10 0.0031843467618789417 11 0.0031843467618789417
		5 0 0.62261573323952324 1 0.35993484213348276 2 0.010665370596407339 
		10 0.0033920270152932898 11 0.0033920270152932898
		5 0 0.61570488809266899 1 0.36498699627807668 2 0.012529063235085628 
		10 0.0033895261970842841 11 0.0033895261970842841
		5 0 0.48523259485764919 1 0.48431507928931766 2 0.023121514014868162 
		10 0.0036654059190825102 11 0.0036654059190825102
		5 0 0.48687070449133169 1 0.48388053452758012 2 0.024444077247205903 
		10 0.0024023418669411704 11 0.0024023418669411704
		5 0 0.49100421261682836 1 0.48513428051086788 2 0.020891975432342388 
		3 0.0017584491487789835 10 0.0012110822911824979
		5 0 0.47763304162944376 1 0.50310026074756531 2 0.01737585716496921 
		3 0.0012377529542301746 10 0.00065308750379161086
		5 0 0.45337281464079549 1 0.52339470406788435 2 0.021112610817384973 
		3 0.0014211285104496264 10 0.00069874196348557768
		5 0 0.45694897654925937 1 0.5083000386856471 2 0.031126664518943765 
		3 0.0022946428725425516 10 0.0013296773736072654
		5 0 0.47262014946189673 1 0.4886013781425661 2 0.033706051736640132 
		3 0.0027766450398915613 10 0.0022957756190053209
		5 0 0.48396170170925318 1 0.4835756890294301 2 0.026361828028819371 
		10 0.0030503906162486676 11 0.0030503906162486676
		5 0 0.48690379054875865 1 0.48690035779992358 2 0.018963299413299921 
		10 0.0036162761190088942 11 0.0036162761190088942
		5 0 0.48881588627366485 1 0.48881588627366473 2 0.014634969318188223 
		10 0.0038666290672411644 11 0.0038666290672411644
		5 0 0.48825836048601612 1 0.48825836048601612 2 0.015015359019441421 
		10 0.0042339600042632011 11 0.0042339600042632011
		5 0 0.48710097129089974 1 0.48696506456854105 2 0.017760820370331193 
		10 0.0040865718851139368 11 0.0040865718851139368
		5 0 0.40022098645915005 1 0.52558920232214745 2 0.063489515753221121 
		10 0.0053501477327406325 11 0.0053501477327406325
		5 0 0.37952951444203631 1 0.55066500546976627 2 0.062854456066997952 
		3 0.0038554026453624748 10 0.0030956213758371021
		5 0 0.33163741156277582 1 0.61305680191661083 2 0.051226318717575971 
		3 0.0026512133329447858 10 0.0014282544700924588
		5 0 0.26234820985722185 1 0.69634351235188019 2 0.038915721628670415 
		3 0.0016884717426824758 10 0.00070408441954513995
		5 0 0.24307834459036315 1 0.71179790440097335 2 0.042614839890530096 
		3 0.0017959999434077256 10 0.00071291117472581996
		5 0 0.28070055369628166 1 0.65420433485352902 2 0.060822227886100165 
		3 0.0028987109100391934 10 0.0013741726540498949
		5 0 0.31649178311553089 1 0.60747533358098993 2 0.069791820179093605 
		3 0.0037047574735000512 10 0.0025363056508853985
		5 0 0.34335310886489506 1 0.58499991084002323 2 0.063756140248674015 
		10 0.0039454200232038805 11 0.0039454200232038805
		5 0 0.36736846058632899 1 0.56641874386901458 2 0.054605234050642285 
		10 0.0058037807470070176 11 0.0058037807470070176
		5 0 0.38708199317910819 1 0.55024637597700277 2 0.047792243777064765 
		10 0.0074396935334121554 11 0.0074396935334121554
		5 0 0.40169908215139588 1 0.53262718515259744 2 0.04914393838174648 
		10 0.0082648971571300661 11 0.0082648971571300661
		5 0 0.40573136728581771 1 0.52564176119906436 2 0.054467055492604381 
		10 0.0070799080112567813 11 0.0070799080112567813
		5 0 0.1215100230515415 1 0.63266999416976544 2 0.2321151078502279 
		3 0.0077188031642746197 10 0.0059860717641905805
		5 0 0.11732359161935969 1 0.65707272670964834 2 0.21538417705616328 
		3 0.0068970771764468213 10 0.003322427438381782
		5 0 0.095073049824629774 1 0.72380980000884321 2 0.1749494902566695 
		3 0.0046312231228572654 10 0.0015364367870002945
		5 0 0.071584208373808342 1 0.79152091133053182 2 0.13315223863690276 
		3 0.0029468789275645508 4 0.00079576273119264006
		5 0 0.073803559744940725 1 0.78762750798577319 2 0.13466511035831102 
		3 0.0030814084185699859 4 0.00082241349240508733
		5 0 0.095707645264429736 1 0.72720387351136906 2 0.17089041631351107 
		3 0.0047014806335023088 10 0.001496584277187827
		5 0 0.10692423938024639 1 0.68712383728659698 2 0.19731208980452672 
		3 0.0059503322549080608 10 0.0026895012737218594
		5 0 0.10226560491945193 1 0.68225398997444497 2 0.20536614532038502 
		3 0.0058444506561308625 10 0.0042698091295872726
		5 0 0.094818810566590556 1 0.68493374824358255 2 0.20690616488248204 
		10 0.0066706381536724441 11 0.0066706381536724441
		5 0 0.090449500959668708 1 0.68372086498574414 2 0.20737126587541924 
		10 0.0092291840895839285 11 0.0092291840895839285
		5 0 0.097501654603762852 1 0.66411256647638195 2 0.21750725742529156 
		10 0.010439260747281879 11 0.010439260747281879
		5 0 0.1085582813333833 1 0.64775996512695733 2 0.22664079517004931 
		10 0.0085204791848050819 11 0.0085204791848050819
		5 0 0.017943760076071808 1 0.50174394862966809 2 0.46857916330817762 
		3 0.0089147456575260527 10 0.0028183823285564866
		5 0 0.019071923044791286 1 0.50915355586980993 2 0.46072681131662668 
		3 0.0089689591405412439 4 0.0020787506282306692
		5 0 0.015849074427480857 1 0.52801437754435676 2 0.44780313257719828 
		3 0.0068533404487176701 4 0.0014800750022464207
		5 0 0.013062918924409396 1 0.5498154432099539 2 0.43082143344595286 
		3 0.0052296222632612242 4 0.0010705821564226741
		5 0 0.014819134425933047 1 0.5504685941602171 2 0.42771054904090466 
		3 0.005816692281180166 4 0.0011850300917649937
		5 0 0.01971777788998404 1 0.532829206349687 2 0.43768761408728102 
		3 0.0080587567623504486 4 0.0017066449106974571
		5 0 0.020966627801352215 1 0.51972463981846095 2 0.44819331297331694 
		3 0.0090966409284331806 4 0.0020187784784366394
		5 0 0.016872563108165328 1 0.51509393943552184 2 0.45784925683478161 
		3 0.0076956766856485902 10 0.0024885639358826063
		5 0 0.012166583050597103 1 0.5123636973258141 2 0.46666324588846092 
		3 0.0058120604626825207 10 0.0029944132724452105
		5 0 0.0091927459385887315 1 0.51024236129894418 2 0.4728042249500527 
		3 0.004539393035022485 10 0.0032212747773918823
		5 0 0.0098469267421383636 1 0.50614587443875625 2 0.47555830785741349 
		3 0.0049699748917480186 10 0.0034789160699439129
		5 0 0.012795636431274767 1 0.50345449549473509 2 0.47403605899249024 
		3 0.0064709124746260621 10 0.0032428966068738289
		5 0 0.0046663989388569874 1 0.3363008984563588 2 0.63330175808949818 
		3 0.022182506640264107 4 0.003548437875021908
		5 0 0.0055291914182628698 1 0.33837970700481629 2 0.6264432522895651 
		3 0.025748418185203091 4 0.0038994311021525456
		5 0 0.0051477364337197927 1 0.3268091510996749 2 0.64086884309416914 
		3 0.023863189203090739 4 0.0033110801693454167
		5 0 0.0047944507186520238 1 0.31739160678540435 2 0.65293809899713429 
		3 0.022011220987767446 4 0.0028646225110419586
		5 0 0.0056091187707190959 1 0.3276543538379264 2 0.63858362995940243 
		3 0.024889321850528702 4 0.0032635755814234019
		5 0 0.0070651371167466523 1 0.34554073022678106 2 0.61306360439215846 
		3 0.030117652742889734 4 0.0042128755214242116
		5 0 0.0070706904801039498 1 0.35174019766248465 2 0.60661070309273668 
		3 0.030103708998746599 4 0.0044746997659281598
		5 0 0.0052005772527459974 1 0.34128724869565191 2 0.62670992949321236 
		3 0.023242307680414343 4 0.0035599368779754489
		5 0 0.0031991386744874535 1 0.3156360629402013 2 0.6635303188083006 
		3 0.015262803907430633 4 0.0023716756695801198
		5 0 0.0019615267451933514 1 0.2823994133172032 2 0.70421790933481043 
		3 0.0098768979604397546 4 0.001544252642353257
		5 0 0.0019682282760495251 1 0.28398899849216852 2 0.70245065415551911 
		3 0.010002671004888577 4 0.0015894480713741963
		5 0 0.002858569712670375 1 0.30977678358473087 2 0.67089905439227726 
		3 0.01419134519747506 4 0.0022742471128462225
		5 0 0.0015276815757830273 1 0.053922710265889372 2 0.83623351569779758 
		3 0.10034456773779203 4 0.0079715247227380073
		5 0 0.0019617320960073461 1 0.060781311931298133 2 0.80181223141006053 
		3 0.12590657705112154 4 0.0095381475115125496
		5 0 0.001971064126475523 1 0.057515885112542887 2 0.7969200975599724 
		3 0.13454184212143874 4 0.0090511110795704324;
	setAttr ".wl[100:199].w"
		5 0 0.0020034211522761106 1 0.056146626302141366 2 0.79278319580318479 
		3 0.14031793534130146 4 0.008748821401096344
		5 0 0.0024100351474216262 1 0.06370170744063422 2 0.76882560619360307 
		3 0.15489925665461096 4 0.010163394563730046
		5 0 0.0029522811010982706 1 0.075084580363156947 2 0.7435858588823977 
		3 0.16601246792477184 4 0.012364811728575186
		5 0 0.00287080249829479 1 0.077382483917266223 2 0.75246747349306664 
		3 0.15480160015804148 4 0.012477639933330984
		5 0 0.0020117409199290693 1 0.064317536903152756 2 0.80518074651642124 
		3 0.11899634795544257 4 0.0094936277050543649
		5 0 0.0010812552979733141 1 0.042930781998748099 2 0.87644852019025399 
		3 0.073938568486012518 4 0.0056008740270121343
		5 1 0.024587669696180113 2 0.93189690468052744 3 0.040032148539781896 
		4 0.0028705987077387021 10 0.00061267837577195789
		5 1 0.023133189768046767 2 0.93693361622817584 3 0.036725041189077892 
		4 0.0026647663545240736 10 0.00054338646017530181
		5 0 0.00080151887229839495 1 0.03464910338986657 2 0.90133802040202671 
		3 0.058777146915045764 4 0.0044342104207625429
		5 1 0.0055458716528257162 2 0.57004353545554221 3 0.40890436272184583 
		4 0.014227836981805197 5 0.0012783931879809809
		5 1 0.0062105138538670291 2 0.53600243120174673 3 0.44048491860264294 
		4 0.015843891150963189 5 0.0014582451907800961
		5 1 0.005688193376169254 2 0.52002066456337559 3 0.45854934181573903 
		4 0.014425343541877206 5 0.0013164567028388936
		5 1 0.0055839211101891282 2 0.51068075499975407 3 0.46847835327750542 
		4 0.013987712863058376 5 0.0012692577494930976
		5 1 0.0068849383819044553 2 0.50492585135604628 3 0.46990643692423306 
		4 0.016733674522194857 5 0.0015490988156212999
		5 1 0.0088805876307131177 2 0.50414128957488236 3 0.4640087285697948 
		4 0.020975865613098992 5 0.0019935286115107566
		5 1 0.0093003629596000951 2 0.51529857135882162 3 0.45155677909020531 
		4 0.021787547236785464 5 0.0020567393545875513
		5 1 0.0072765090909316949 2 0.54768957262212203 3 0.42613562576519859 
		4 0.017341870109313894 5 0.0015564224124338239
		5 1 0.0045341185834093271 2 0.60681416977769287 3 0.37655448696267313 
		4 0.01115923036641232 5 0.00093799430981229273
		5 1 0.0025646798773110283 2 0.6838830758875567 3 0.30657510823757927 
		4 0.0064590517180601248 5 0.00051808427949288081
		5 1 0.0023972773388221112 2 0.69601720765268005 3 0.29499168853774316 
		4 0.0061008782055926893 5 0.00049294826516208987
		5 1 0.0034905204025437913 2 0.6366728844032028 3 0.35005794766627951 
		4 0.0090187938852555171 5 0.00075985364271839739
		5 1 0.0014218074187370509 2 0.25389201708152026 3 0.66295964204971891 
		4 0.078981934912275564 5 0.0027445985377481464
		5 1 0.001746602742246579 2 0.28925448796201569 3 0.6183211078127655 
		4 0.087350277170110777 5 0.0033275243128613762
		5 1 0.0017732532245822873 2 0.31053114657631381 3 0.59914389558095871 
		4 0.08525783842809348 5 0.0032938661900515768
		5 1 0.0018697137203274351 2 0.32641073924248948 3 0.5824810311809282 
		4 0.085866262449167272 5 0.0033722534070876587
		5 1 0.0022501162437679597 2 0.33856580661403474 3 0.56126689923910478 
		4 0.093998737818788231 5 0.0039184400843043582
		5 1 0.0026829156856070457 2 0.33945425320204753 3 0.54958721089423679 
		4 0.10372046323063344 5 0.0045551569874751922
		5 1 0.0025809408926735196 2 0.32469295004469562 3 0.56507405083938278 
		4 0.1032965072323847 5 0.0043555509908633607
		5 1 0.001854918963161761 2 0.28900526676439103 3 0.61856832278491047 
		4 0.087408526576828557 5 0.0031629649107081724
		5 1 0.0010467775897997507 2 0.22676476091778217 3 0.70844018977103917 
		4 0.06191872973251817 5 0.0018295419888605907
		5 1 0.00053553456573308999 2 0.15682593034161596 3 0.8031214604433583 
		4 0.038549868750848336 5 0.00096720589844430513
		5 1 0.00050629186388719569 2 0.14838749978518298 3 0.81266828724757945 
		4 0.03749329016308045 5 0.0009446309402699369
		5 1 0.00081467981854165981 2 0.19352454970236629 3 0.74966616024281085 
		4 0.0544331685788274 5 0.0015614416574536703
		5 2 0.019072567539225128 3 0.51748353831151084 4 0.45654384691997452 
		5 0.0062634646635130126 12 0.00063658256577646909
		5 2 0.022637899097991965 3 0.5072850548344946 4 0.46189091274727317 
		5 0.0073313083160404767 12 0.00085482500419976665
		5 2 0.023030214628208572 3 0.50440387457977487 4 0.46462589943467453 
		5 0.0070093155671658285 12 0.00093069579017614266
		5 2 0.024185412007162743 3 0.50163564279324901 4 0.46616340766295628 
		5 0.0069861303310042354 12 0.001029407205627729
		5 2 0.02840874862124532 3 0.49755784926028862 4 0.46481014132540299 
		5 0.0079735883280885426 12 0.0012496724649745336
		5 2 0.032319749296994826 3 0.49514530505637805 4 0.46207398284941287 
		5 0.0090513510190162599 12 0.0014096117781980753
		5 2 0.030046636416906355 3 0.50107888061685879 4 0.45937836713954872 
		5 0.0083107482570445833 12 0.001185367569641584
		5 2 0.021351640830835593 3 0.51728605813396844 4 0.45484330039518639 
		5 0.0058076704223790779 12 0.000711330217630564
		5 2 0.012486097834789815 3 0.54232620769740292 4 0.44147002028471327 
		5 0.0033685995809662594 12 0.00034907460212781814
		5 2 0.0073542035412495627 3 0.56790631503956002 4 0.42251935729633583 
		5 0.0020356697700024216 12 0.00018445435285200946
		5 2 0.0077487757254058346 3 0.56374448801508248 4 0.42602862923972773 
		5 0.0022810685666706139 12 0.00019703845311329883
		5 2 0.011873498913518262 3 0.54022365736088607 4 0.44383833842905107 
		5 0.0037277045764051984 12 0.00033680072013940341
		5 2 0.003693458904612556 3 0.12649537510508338 4 0.81638223096473528 
		5 0.051631632351405374 12 0.0017973026741634041
		5 2 0.0033933189568978186 3 0.12593458167772215 4 0.81884938449681588 
		5 0.049804011644238359 12 0.0020187032243258549
		5 2 0.0034447699069345378 3 0.12708436393735362 4 0.80903825573486809 
		5 0.057621236421939302 12 0.0028113739989043081
		5 2 0.0047254828127902297 3 0.16991447456154568 4 0.75758943029521864 
		5 0.063678086671366915 12 0.0040925256590785648
		5 2 0.0057689783489581628 3 0.19790937774381878 4 0.72346258805911901 
		5 0.06789832219526129 12 0.0049607336528427861
		5 2 0.005717948579024564 3 0.1970056102178144 4 0.72635701481231985 
		5 0.066364813356589364 12 0.0045546130342517593
		5 2 0.0053125483326376477 3 0.20204042536248859 4 0.7371423598493424 
		5 0.052373080485115672 12 0.003131585970415691
		5 2 0.0043146798249950507 3 0.17654203344839065 4 0.77403871091381282 
		5 0.043057855010875119 12 0.002046720801926328
		5 2 0.0034049553031726149 3 0.14431289805720909 4 0.81465873739854855 
		5 0.036256197883314245 12 0.0013672113577555493
		5 2 0.0028170669709427967 3 0.117813029032465 4 0.84530660325182161 
		5 0.033022798467492773 12 0.0010405022772777407
		5 2 0.0028854739101928546 3 0.11125856450137257 4 0.84804638627689022 
		5 0.036728827691400096 12 0.0010807476201443009
		5 2 0.0032542583106682592 3 0.11595895167798324 4 0.83532561931512916 
		5 0.044112396400304982 12 0.0013487742959144425
		5 3 0.0078641077534092729 4 0.47183559951518106 5 0.51200550934265732 
		6 0.0038692848839317995 12 0.0044254985048206349
		5 3 0.0029874705656641539 4 0.48737169782555317 5 0.50531342719920413 
		6 0.0014327509390270883 12 0.0028946534705514221
		5 3 0.0064405090808366643 4 0.50339256013759837 5 0.48211777555868435 
		6 0.0019932639188545783 12 0.0060558913040260533
		5 3 0.010352770593722921 4 0.51929449256642579 5 0.46160297747340157 
		6 0.0032628150164333049 12 0.0054869443500164461
		5 3 0.01283435286787841 4 0.51793363311889595 5 0.45982900274043925 
		6 0.0045025150228966988 12 0.0049004962498897901
		5 3 0.013776159917537481 4 0.49773243648154553 5 0.47840867047402208 
		6 0.0055302995875539324 12 0.0045524335393411133
		5 3 0.014472664064347242 4 0.47278244105793776 5 0.50108494630001921 
		6 0.0066941656413339575 12 0.0049657829363618329
		5 3 0.012506211134425679 4 0.46281174586508134 5 0.51326180074703964 
		6 0.0062612716975054784 12 0.0051589705559479211
		5 4 0.038274157954530257 5 0.91830841571283672 6 0.034470433423611023 
		7 0.0023631061937716504 12 0.0065838867152503856
		5 4 0.020541748749244255 5 0.96077717434014598 6 0.012644417282303764 
		12 0.0046464390103980822 13 0.0013902206179079244
		5 4 0.028279002654338071 5 0.95012819349658484 6 0.0074733955942525776 
		12 0.011808529719918342 13 0.0023108785349064088
		5 4 0.068528601321953403 5 0.89481753670589603 6 0.01831720197104688 
		12 0.014345488103116517 13 0.0039911718979871082
		5 4 0.051830216528849803 5 0.91929718075865008 6 0.019533354348538343 
		12 0.0070255958025698942 13 0.0023136525613919562
		5 4 0.04290903823646857 5 0.92847787119010383 6 0.022105591522438232 
		7 0.0018935880090909648 12 0.0046139110418984943
		5 4 0.043851489605935656 5 0.91818197739217755 6 0.030774508076319193 
		7 0.0026015568284320431 12 0.0045904680971355508
		5 4 0.049150733693439773 5 0.89631712220881776 6 0.04496815769003356 
		7 0.0037170276389266463 12 0.005846958768782131
		5 4 0.047774208890782169 5 0.89344957634288469 6 0.048300145165284143 
		7 0.0037147662767901919 12 0.0067613033242586249
		5 5 0.1316807044265417 6 0.79751987454201323 7 0.065938928967389634 
		8 0.0038939456696691671 9 0.00096654639438630127
		5 5 0.12602162934634478 6 0.82351660068710619 7 0.047217805669690721 
		8 0.0026058487448877773 12 0.00063811555197053945
		5 5 0.11292545488200519 6 0.85649014110992794 7 0.028506002418608942 
		8 0.0015907321883247914 12 0.00048766940113314307
		5 5 0.11407345616932638 6 0.86330178194740004 7 0.020855699735708038 
		8 0.0013145929016085585 12 0.00045446924595707913
		5 5 0.13920059887018255 6 0.83735569688778366 7 0.021240125048882199 
		8 0.0016455505430086361 12 0.00055802865014301019
		5 5 0.15654153047141139 6 0.8195185832624281 7 0.021349788210077096 
		8 0.0020079916513016192 12 0.00058210640478190026
		5 5 0.13482055678273336 6 0.84659355200239317 7 0.01644493188465275 
		8 0.001706718483502208 9 0.00043424084671845334
		5 5 0.085581309207307041 6 0.90265733470731091 7 0.010422802186704803 
		8 0.0010634847397907165 9 0.00027506915888659574
		5 5 0.063578832003456404 6 0.92419946314351953 7 0.010943289401918375 
		8 0.0010147672301357934 9 0.00026364822096988275
		5 5 0.079127410742554069 6 0.89412009656739999 7 0.024263429161737536 
		8 0.001977563738828186 9 0.00051149978948028627
		5 5 0.10462502773722596 6 0.8411094468235577 7 0.049749143459791756 
		8 0.0035947894545305102 9 0.00092159252489403204
		5 5 0.12165679440731614 6 0.80673721720645386 7 0.06623431801565384 
		8 0.0042877357399592874 9 0.0010839346306169117
		5 5 0.0025181485417583123 6 0.49607342088520745 7 0.49607342088520745 
		8 0.0047716033576376037 9 0.00056340633018926668
		5 5 0.0023938143000096258 6 0.49657788649029205 7 0.49657788649029205 
		8 0.0039849002550903312 9 0.000465512464315975
		5 5 0.0023721157943403506 6 0.49674707912786592 7 0.49674707912786592 
		8 0.0037152135756103356 9 0.00041851237431755753
		5 5 0.0029788904638300071 6 0.49765189503822116 7 0.49411358065240113 
		8 0.004744335065390428 9 0.00051129878015717355
		5 5 0.0043892212557250527 6 0.50814701726575795 7 0.47925181126172522 
		8 0.0074388158460959803 9 0.00077313437069580118
		5 5 0.005578888139969194 6 0.5337846933165058 7 0.44948422079417177 
		8 0.010127604069128682 9 0.0010245936802243834
		5 5 0.0048885115422796334 6 0.57723244741512858 7 0.40737016988579705 
		8 0.0095681498508848346 9 0.00094072130590982226
		5 5 0.0029611598438189853 6 0.61717034459689257 7 0.37283422225874907 
		8 0.0064176516074298754 9 0.00061662169310952347
		5 5 0.0019180192104513807 6 0.60776600488937893 7 0.38519710279991687 
		8 0.0046661678035196082 9 0.0004527052967331686
		5 5 0.00186254655718007 6 0.5504669901301481 7 0.44233966904388689 
		8 0.0048370434231621408 9 0.00049375084562279601
		5 5 0.002162121088292624 6 0.50726674844223918 7 0.48453240717209334 
		8 0.0054448812551443236 9 0.00059384204223052422
		5 5 0.0023285316964926899 6 0.49594984384659785 7 0.49593842109493347 
		8 0.0051881744657530622 9 0.00059502889622294194
		5 5 0.0022466863072966516 6 0.11327828681150605 7 0.62272778892315284 
		8 0.25211633855378301 9 0.009630899404261508
		5 5 0.0025283229042590144 6 0.12461810482973408 7 0.59938780131468994 
		8 0.26339658435782981 9 0.010069186593487066;
	setAttr ".wl[200:299].w"
		5 5 0.0023318059258953818 6 0.11132897495271635 7 0.59900424797089902 
		8 0.2780579929285576 9 0.0092769782219316223
		5 5 0.0018165310118206659 6 0.082507696573433986 7 0.61526386632155505 
		8 0.29276383204749662 9 0.007648074045693655
		5 5 0.0012124958846866406 6 0.051215645773612553 7 0.64383738262024259 
		8 0.29810615123498824 9 0.0056283244864698831
		5 5 0.00065822692407857108 6 0.026408767537878537 7 0.69989631992375068 
		8 0.26962427391530081 9 0.0034124116989914252
		5 5 0.00024231824437586857 6 0.0098393900539872087 7 0.81296723285211892 
		8 0.17555399867009425 9 0.0013970601794237162
		5 5 5.0653843762497166e-05 6 0.0022118606230489947 7 0.94236409408811905 
		8 0.055054647944722715 9 0.00031874350034675304
		5 5 4.1125054119960578e-05 6 0.0019624386651225633 7 0.9605104054916388 
		8 0.037217857045582045 9 0.00026817374353670456
		5 5 0.00022483762535686428 6 0.011447269373121592 7 0.87913212871688673 
		8 0.1077838247889505 9 0.0014119394956843266
		5 5 0.0007648326303526658 6 0.039672656808550533 7 0.76401465193358509 
		8 0.19121876073171495 9 0.0043290978957966735
		5 5 0.0015170216798509313 6 0.078460007170105164 7 0.67891447981596909 
		8 0.23366770209071575 9 0.0074407892433590644
		5 6 0.0096551045322537197 7 0.3345819985452706 8 0.56269746997541081 
		9 0.089318540917489378 10 0.003746886029575517
		5 6 0.010249751619651951 7 0.3568143248754293 8 0.53994208129306775 
		9 0.089190501628873556 10 0.0038033405829775374
		5 6 0.009123924382905494 7 0.35529459623448295 8 0.54536191478794915 
		9 0.086779761205411282 10 0.0034398033892511165
		5 6 0.0070866408244420155 7 0.32962031024398447 8 0.57754563688198324 
		9 0.082892405150513881 10 0.0028550068990764125
		5 6 0.0048488909034074849 7 0.27297144231581294 8 0.64313645401578123 
		9 0.076861661730325145 10 0.0021815510346732099
		5 6 0.0025539560623950501 7 0.17964436250499541 8 0.75797701519720295 
		9 0.058527575062076037 10 0.0012970911733305849
		5 6 0.0006677904916729938 7 0.059498410456475893 8 0.91574189701744912 
		9 0.023705980074556796 10 0.00038592195984526382
		5 6 2.2453065290557076e-05 7 0.0022528029482749641 8 0.99654735722958365 
		9 0.0011628272669047834 10 1.4559489946138099e-05
		5 6 1.730583543890803e-05 7 0.001548759502067629 8 0.99751972280453516 
		9 0.00090255182424890223 10 1.1660033709344183e-05
		5 6 0.00070868321278479271 7 0.048657282874345245 8 0.92641935514967366 
		9 0.023778236970181596 10 0.00043644179301474695
		5 6 0.0033164036495705665 7 0.16790497938503196 8 0.76323198435959227 
		9 0.063810913774486985 10 0.0017357188313181469
		5 6 0.0068320883765076949 7 0.27381350696846629 8 0.63319150296346993 
		9 0.083166237045523686 10 0.0029966646460324251
		5 6 0.0012723243988625077 7 0.011634603566534158 8 0.46693634316335725 
		9 0.50016806370808509 10 0.019988665163161053
		5 6 0.0013548405293057834 7 0.012466144450340371 8 0.47707317085133616 
		9 0.4891127001604732 10 0.019993144008544458
		5 6 0.0012489313116473891 7 0.011645826867205396 8 0.48126939010339653 
		9 0.48749032510889267 10 0.018345526608858007
		5 6 0.00099213778359769143 7 0.0092940587366939637 8 0.47857628660853768 
		9 0.49482970577547442 10 0.016307811095696283
		5 6 0.0006830949662128649 7 0.0063688102916055886 8 0.45630439180893606 
		9 0.52281628059713114 10 0.013827422336114427
		5 6 0.00036203674529593943 7 0.0033950753570155725 8 0.39151246187308297 
		9 0.59553259630286814 10 0.0091978297217374869
		5 6 0.00010624926676864575 7 0.0010116282660606339 8 0.22805771759182702 
		9 0.76745238234364532 10 0.0033720225316983604
		5 6 5.9083458110884109e-06 7 5.7463900531976261e-05 8 0.02545400643015475 
		9 0.97427197705248525 10 0.00021064427101692612
		5 6 5.2857952242553769e-06 7 5.1401258792579093e-05 8 0.020353409654214363 
		9 0.97940527257549104 10 0.00018463071627771561
		5 6 0.00012343512456674207 7 0.0011836592435231865 8 0.21129096015975779 
		9 0.78386360303279545 10 0.0035383424393567774
		5 6 0.00048172276607026909 7 0.0045164460012714746 8 0.3744877353214856 
		9 0.60979340487090683 10 0.010720691040265819
		5 6 0.00093625439208407644 7 0.008629385738255245 8 0.44164963433773163 
		9 0.53195602938131425 10 0.016828696150614875
		5 0 0.7156453389118842 1 0.26310990533512058 2 0.014801942620784278 
		10 0.0032214065661054624 11 0.0032214065661054624
		5 0 0.73846158097029801 1 0.24543322748861127 2 0.010268001038048329 
		10 0.0029185952515211923 11 0.0029185952515211923
		5 0 0.75024885955489173 1 0.23534917176200235 2 0.0086574950432135363 
		10 0.002872236819946224 11 0.002872236819946224
		5 0 0.75245237188970393 1 0.23247635168679875 2 0.0092138094806737941 
		10 0.0029287334714117818 11 0.0029287334714117818
		5 0 0.7273821040649926 1 0.25159781092943506 2 0.01389063368782912 
		10 0.0035647256588715809 11 0.0035647256588715809
		5 0 0.70631872451671895 1 0.2648387857254455 2 0.02098387673446294 
		10 0.0039293065116862962 11 0.0039293065116862962
		5 0 0.69700091266808462 1 0.26684315691590788 2 0.027684763132462705 
		3 0.0046512721317877653 10 0.0038198951517570356
		5 0 0.71773701984551352 1 0.24773078160809764 2 0.027111868445989791 
		3 0.0045399448894477374 10 0.0028803852109514582
		5 0 0.75860756346887903 1 0.21541487684268609 2 0.020732178971668357 
		3 0.0033567670324255194 10 0.001888613684341113
		5 0 0.77662234337659819 1 0.20253415647339676 2 0.016630648599260698 
		3 0.0026469890446665081 10 0.0015658625060778308
		5 0 0.7555397659338754 1 0.22328708268364056 2 0.016573043806199891 
		3 0.0026645907229334445 10 0.0019355168533506618
		5 0 0.72339769970308632 1 0.2537596246377346 2 0.017280950636673346 
		3 0.0028123397166717281 10 0.0027493853058340218
		5 0 0.88683318900404862 1 0.099726674894213829 2 0.0079580329839674547 
		10 0.0027410515588850758 11 0.0027410515588850758
		5 0 0.85716855159883665 1 0.12346473984574435 2 0.012571397529229882 
		10 0.0033976555130945931 11 0.0033976555130945931
		5 0 0.84637767704598621 1 0.13013176776830593 2 0.016363998448087887 
		3 0.0036689418375286486 10 0.0034576149000914076
		5 0 0.84736557500468213 1 0.12580732901021061 2 0.019125319893014459 
		3 0.0044998822919287149 10 0.0032018938001639728
		5 0 0.83601982189507928 1 0.13073428854584004 2 0.023856897846746435 
		3 0.0059154623863932262 10 0.0034735293259411291
		5 0 0.81789847782989777 1 0.14171337266328662 2 0.028828562866701237 
		3 0.0073906967109337715 10 0.0041688899291805913
		5 0 0.79806456181528307 1 0.15614644136339184 2 0.032235932841162537 
		3 0.0082926744296434284 10 0.0052603895505191562
		5 0 0.79260639242888986 1 0.1632056065797548 2 0.030505031560657765 
		3 0.0075783452740137607 10 0.0061046241566837809
		5 0 0.81596244377726557 1 0.150342073774618 2 0.022431963584128432 
		10 0.0056317594319939815 11 0.0056317594319939815
		5 0 0.85139676325465252 1 0.12588769158268767 2 0.013788771611425686 
		10 0.0044633867756171345 11 0.0044633867756171345
		5 0 0.88295524565019168 1 0.10198605043466126 2 0.00845309118255602 
		10 0.0033028063662955574 11 0.0033028063662955574
		5 0 0.89194420968913679 1 0.095270574006872791 2 0.0070948010016559431 
		10 0.0028452076511672523 11 0.0028452076511672523
		5 0 0.89180997037956444 1 0.08954875350303583 2 0.010255929101550263 
		10 0.0041926735079247162 11 0.0041926735079247162
		5 0 0.87033317823225853 1 0.10538561141319296 2 0.01476082173184822 
		10 0.0047601943113501632 11 0.0047601943113501632
		5 0 0.86857575907892226 1 0.10483648319505572 2 0.017518786230269055 
		3 0.0045922887188343496 10 0.0044766827769187577
		5 0 0.87617003852302433 1 0.095885828286804739 2 0.018838636883001792 
		3 0.0052247012332110052 10 0.0038807950739580114
		5 0 0.86706595575787637 1 0.099179019950743075 2 0.022857773901598759 
		3 0.0067371227382592644 10 0.0041601276515226262
		5 0 0.85215806863447274 1 0.1075554010129904 2 0.027088646463269622 
		3 0.0082693090443118657 10 0.0049285748449554075
		5 0 0.83636405936551717 1 0.11849511222942921 2 0.029912582039046696 
		3 0.0091131747742902655 10 0.0061150715917165574
		5 0 0.82826041606330658 1 0.1264509646097137 2 0.029389431527514054 
		3 0.0086228313263534626 10 0.007276356473112186
		5 0 0.84401950962803529 1 0.11893480768581756 2 0.022991733560986563 
		10 0.0070269745625803131 11 0.0070269745625803131
		5 0 0.86849628535611789 1 0.10386478161725117 2 0.015557787667731554 
		10 0.006040572679449692 11 0.006040572679449692
		5 0 0.88765834299231883 1 0.091284912324205658 2 0.010879516480976971 
		10 0.005088614101249272 11 0.005088614101249272
		5 0 0.89254803695455409 1 0.088602926379190164 2 0.0096358266120381113 
		10 0.0046066050271087681 11 0.0046066050271087681
		5 3 0.025668955732703298 4 0.7262564915924723 5 0.2428184644831704 
		6 0.0021366656721513713 12 0.0031194225195027439
		5 3 0.034022794601802478 4 0.73067010703314594 5 0.22938823072927703 
		6 0.0027867529733883833 12 0.0031321146623861963
		5 3 0.037774526987250097 4 0.74512156334524915 5 0.2112926600555925 
		6 0.0028730762071525204 12 0.0029381734047557537
		5 3 0.03879407415986709 4 0.76101232841374244 5 0.19478190895287362 
		6 0.002573381422117515 12 0.0028383070513993479
		5 3 0.040399452292845139 4 0.75797172189589512 5 0.195984681096848 
		6 0.0023641877500131629 12 0.0032799569643986478
		5 3 0.036063113604992605 4 0.7530438337307811 5 0.20511490666717236 
		6 0.0019484938042819537 12 0.0038296521927720008
		5 3 0.025226299023713854 4 0.7115756644481791 5 0.25654187571988163 
		6 0.0016181070050392417 12 0.005038053803186204
		5 3 0.011970157286961353 4 0.7060166079692215 5 0.27814223351424239 
		6 0.0011756931788264291 12 0.0026953080507483755
		5 3 0.0034629193400434483 4 0.16953028270258444 5 0.80895244376392195 
		6 0.011378819429399809 12 0.006675534764050463
		5 3 0.0055290542711070416 4 0.18385324658319022 5 0.78538392370025412 
		6 0.017916516343465132 12 0.0073172591019835462
		5 3 0.0062484933203852131 4 0.19064543284936716 5 0.77795371144320136 
		6 0.01838694303726222 12 0.0067654193497841339
		5 3 0.0055550749197617252 4 0.19801500106224476 5 0.77634532909738718 
		6 0.014169164542730232 12 0.0059154303778761177
		5 3 0.0048904371129439286 4 0.22410872790586123 5 0.75389494998180895 
		6 0.010820991911230827 12 0.0062848930881551019
		5 3 0.0042593464867659433 4 0.26580170951289339 5 0.71322071379949625 
		6 0.0084791099163505149 12 0.0082391202844938616
		5 3 0.0033889747652086966 4 0.30691735052841707 5 0.67016449101608666 
		6 0.0064950309995878723 12 0.013034152690699592
		5 3 0.0012994041256956072 4 0.13079688222059571 5 0.85884420539329032 
		6 0.0042151398058058714 12 0.0048443684546123651
		5 2 0.0024398447170543304 3 0.056007364053199941 4 0.8234812398951028 
		5 0.11562026701964088 12 0.0024512843150021257
		5 2 0.0026640400821227208 3 0.061389352893006302 4 0.82634877391631878 
		5 0.10744129576672666 12 0.0021565373418254334
		5 2 0.0026162578449662566 3 0.063090252022399387 4 0.83691587388370769 
		5 0.095488778488605555 12 0.0018888377603209386
		5 2 0.0026234659869184022 3 0.067076500833129882 4 0.84070796072861909 
		5 0.087724080440506599 12 0.0018679920108259523
		5 2 0.0028525045141070387 3 0.075441681198592528 4 0.82948762723862524 
		5 0.089962858440443577 12 0.0022553286082316443
		5 2 0.0029268060439061189 3 0.079345490095702478 4 0.81907300685005224 
		5 0.09577495259853791 12 0.0028797444118013093
		5 2 0.0026936827809494186 3 0.069437529370030268 4 0.80564258593065441 
		5 0.11819274724465108 12 0.0040334546737146653
		5 2 0.001510132082892069 3 0.035339315728161291 4 0.84190874733114751 
		5 0.1188629441013897 12 0.0023788607564094212
		5 4 0.0095431206222196009 5 0.83249988966652255 6 0.14881848016081078 
		7 0.0046842360854973848 12 0.0044542734649496473
		5 4 0.012438254042290278 5 0.80807977911746098 6 0.1682600476429249 
		7 0.0066969876828807205 12 0.0045249315144431194
		5 4 0.012720781160940926 5 0.82863758957722156 6 0.14822823996047904 
		7 0.0065074056832011987 12 0.0039059836181572541
		5 4 0.010021601428433644 5 0.88258386372427344 6 0.10028144810162094 
		7 0.0042512175675408301 12 0.00286186917813097
		5 4 0.0077669202253481603 5 0.92221514735905397 6 0.065004737568668855 
		7 0.0026099037625561027 12 0.0024032910843728985
		5 4 0.0080782228950686073 5 0.92905335364162023 6 0.057347611948831298 
		7 0.0022411118974021713 12 0.0032796996170775766;
	setAttr ".wl[300:399].w"
		5 4 0.0099038211859186921 5 0.91739453484726274 6 0.063864725562985156 
		12 0.0062172542337084287 13 0.0026196641701249296
		5 4 0.0093856095582491635 5 0.9154250202175499 6 0.061771044762535511 
		12 0.0096076788559016409 13 0.0038106466057638423
		5 4 0.004554368487726927 5 0.94084152856075309 6 0.045595549765371099 
		12 0.0064752406246666666 13 0.0025333125614822351
		5 4 0.0022506638149736792 5 0.96311291781112585 6 0.030139373183374559 
		12 0.003229161505432425 13 0.0012678836850935603
		5 4 0.0024251081569970447 5 0.96014860950394187 6 0.033812144977195951 
		12 0.0025699555713039591 13 0.0010441817905611072
		5 4 0.0048370568117449509 5 0.90597991972041259 6 0.084106641857252806 
		7 0.0018936560040701787 12 0.0031827256065194414
		5 2 0.0073120454122029633 3 0.37381527670118064 4 0.60185010506056857 
		5 0.015997889038241207 12 0.0010246837878065713
		5 2 0.0054519606327811656 3 0.35110128721025097 4 0.63106025743446681 
		5 0.011725690995459018 12 0.00066080372704203677
		5 2 0.0041598919200230228 3 0.33958148695069973 4 0.64727456977344122 
		5 0.0085252995476075271 12 0.00045875180822851046
		5 2 0.0038510485919479838 3 0.35526661496544959 4 0.63312339116146887 
		5 0.007340912681053054 12 0.00041803260008046355
		5 2 0.005174606911866636 3 0.39838777979092799 4 0.58671997263423425 
		5 0.0091107004394264165 12 0.00060694022354477583
		5 2 0.0073716258599833967 3 0.43079136638330517 4 0.54848443486621878 
		5 0.01235148867522113 12 0.0010010842152715228
		5 2 0.0095017558791738489 3 0.44636441188858439 4 0.52688376746640098 
		5 0.01572216293143355 12 0.0015279018344071845
		5 2 0.0097029649928225738 3 0.44936364736178253 4 0.52258931635052874 
		5 0.016559969193333843 12 0.0017841021015323694
		5 2 0.0081007711073935434 3 0.44345554912192553 4 0.53223570439419887 
		5 0.014633468845366702 12 0.0015745065311155129
		5 2 0.0067032073392058588 3 0.42701448273894616 4 0.55192092418428396 
		5 0.013074252022555521 12 0.0012871337150083893
		5 2 0.006641900923343891 3 0.40661537706385542 4 0.57166349548691009 
		5 0.013884672646377489 12 0.0011945538795131491
		5 2 0.0074544844602291351 3 0.39064250225112279 4 0.5845745140955414 
		5 0.016129794285378699 12 0.0011987049077278619
		5 4 0.036580948313055903 5 0.72102937527503141 6 0.0026973146119746573 
		12 0.22228943262916656 13 0.017402929170771572
		5 4 0.012649178716360863 5 0.81545362595924065 6 0.0014548763195664847 
		12 0.16176515250471246 13 0.0086771665001194841
		5 4 0.011063722204522513 5 0.90037875458160732 6 0.0014222724569488915 
		12 0.082540788026204098 13 0.0045944627307171011
		5 4 0.029432326573084585 5 0.83144367586934609 6 0.0021883259626910945 
		12 0.1281152113351941 13 0.0088204602596841531
		5 4 0.069475959626865966 5 0.72086338287352769 6 0.0038006855785992695 
		12 0.18822870384379953 13 0.017631268077207572
		5 3 0.0067091000622922998 4 0.097568085809943278 5 0.63651238007526834 
		12 0.2326507460175998 13 0.026559688034896292
		5 3 0.0096763296218028375 4 0.11281988366479172 5 0.59007502506205722 
		12 0.25454899305719725 13 0.032879768594150996
		5 3 0.010266286782215771 4 0.11239875098222214 5 0.57903372308830536 
		12 0.26336045662970348 13 0.034940782517553254
		5 3 0.0084055125537573563 4 0.10017284276954258 5 0.5969636695254954 
		12 0.2616486990578818 13 0.032809276093322869
		5 3 0.0051069138771292315 4 0.073978319294728256 5 0.63969290474096474 
		12 0.25385577849819074 13 0.027366083588987115
		5 4 0.0064767389288566003 5 0.87695574494148998 6 0.0011729271367113649 
		12 0.11014827719182642 13 0.0052463118011156547
		5 4 0.0052348396844284989 5 0.89737343994634089 6 0.0013491471946151334 
		12 0.091590782829648124 13 0.0044517903449672906
		5 4 0.006039156503443428 5 0.90458447284916077 6 0.0017054767728908655 
		12 0.083260529146677004 13 0.004410364727827765
		5 4 0.0072085488752329551 5 0.91151097804628711 6 0.0015720530278972773 
		12 0.075618885151317289 13 0.0040895348992653277
		5 4 0.00096901866564478233 5 0.049034272155064951 12 0.47349213627230552 
		13 0.46722369426229649 14 0.0092808786446883871
		5 5 0.0059525674338011484 12 0.067483958723766363 13 0.70631804640254847 
		14 0.21629220717249684 15 0.0039532202673869896
		5 12 0.0046661923828658271 13 0.257779107663827 14 0.70710434303904068 
		15 0.029190887868245103 16 0.0012594690460212678
		5 12 0.00076162403466944323 13 0.010814275104674831 14 0.55630824022314573 
		15 0.42812448642015394 16 0.003991374217356132
		5 13 0.0027953864998357574 14 0.16963298556771653 15 0.77582565488043953 
		16 0.049330850055746285 17 0.0024151229962618924
		5 14 0.0086177289853629699 15 0.60335586109185591 16 0.38355274062292977 
		17 0.0039708339202254757 18 0.00050283537962593245
		5 15 0.01060929893460736 16 0.68055042576926472 17 0.30591405205365169 
		18 0.0025274449748642009 19 0.00039877826761206692
		5 15 0.00031163306464058809 16 0.0070003511333343255 17 0.72565387452844965 
		18 0.26430705558075335 19 0.0027270856928221609
		5 17 0.00025907055798679677 18 0.021915145744412452 19 0.97254810558989069 
		20 0.0051510219244644256 21 0.00012665618324572071
		5 18 2.9875769051635692e-05 19 0.00093511826933090402 20 0.98810325182377545 
		21 0.010919578120294302 22 1.2176017547647546e-05
		5 18 6.7124511126263811e-06 19 3.1108673821297507e-05 20 0.00083127145173853337 
		21 0.99860956237702592 22 0.00052134504630172492
		5 18 5.2313877135453226e-08 19 1.4620599202756317e-07 20 1.016772414648837e-06 
		21 0.93306060000939384 22 0.066938184698322356
		5 18 2.065790033215318e-07 19 3.9020556899751832e-07 20 1.3110474909588683e-06 
		21 4.7439969377118592e-05 22 0.99995065219855961
		5 4 0.0013540451625111746 5 0.061215438980825834 12 0.46273868435049953 
		13 0.46176762134232674 14 0.012924210163836741
		5 5 0.0086541683820776354 12 0.095477801539849388 13 0.66170456162820057 
		14 0.22850357665905408 15 0.005659891790818228
		5 12 0.0061723277452116138 13 0.29047016277767129 14 0.66866919095743416 
		15 0.033084265701593285 16 0.0016040528180896883
		5 12 0.00080517847361034163 13 0.011777011274349028 14 0.57619769549910727 
		15 0.4071526750009889 16 0.0040674397519444433
		5 13 0.002170695423963235 14 0.14722597751835614 15 0.81104734741004469 
		16 0.037634190825262523 17 0.0019217888223733988
		5 14 0.0080880304616941356 15 0.65239169482047743 16 0.33540136548342264 
		17 0.0036470506051011621 18 0.00047185862930460644
		5 15 0.013114567169780548 16 0.69914383024009719 17 0.28391401607833755 
		18 0.0033043988932001949 19 0.00052318761858452447
		5 15 0.00029255433218945974 16 0.0058704103680813358 17 0.72338898449537803 
		18 0.2675827348070377 19 0.0028653159973134673
		5 17 0.00036050223949244347 18 0.026779293162409734 19 0.96561590200701075 
		20 0.0070475017385053969 21 0.00019680085258170103
		5 18 0.00010603321264096989 19 0.0023456636668442933 20 0.94099565478671143 
		21 0.05650081728953546 22 5.1831044267846854e-05
		5 18 5.70171691143319e-07 19 2.505093060531662e-06 20 6.1621811501316555e-05 
		21 0.99988656617990568 22 4.8736743841272244e-05
		5 18 5.3200302223769377e-06 19 1.4451323225364174e-05 20 9.7843990943360847e-05 
		21 0.61773424547557776 22 0.3821481391800311
		5 18 2.2542269713912107e-06 19 4.2393096985745802e-06 20 1.4304147767231389e-05 
		21 0.00049844741020872393 22 0.99948075490535415
		5 5 0.045958204313609204 6 0.00080644645951042466 12 0.4897102807616206 
		13 0.45717096296962711 14 0.0063541054956325971
		5 5 0.0037709416918788236 12 0.04352655034337833 13 0.7468725945889072 
		14 0.20301447562283392 15 0.0028154377530017973
		5 12 0.0022714046064292717 13 0.17649621334580226 14 0.80361072244373333 
		15 0.01693181819159648 16 0.00068984141243869578
		5 12 0.0002971218244848457 13 0.0046375500087283096 14 0.61897450644815688 
		15 0.37419701732128324 16 0.0018938043973466593
		5 13 0.00081330091653170858 14 0.060353856497864657 15 0.91752991833689768 
		16 0.020352109039920942 17 0.00095081520878504268
		5 14 0.0060844733038645828 15 0.65362230246578001 16 0.33549234101602965 
		17 0.0042709206321646905 18 0.00052996258216089223
		5 15 0.01857132803825454 16 0.59926113451731755 17 0.37104724710002407 
		18 0.0096847066255207909 19 0.0014355837188831518
		5 16 0.0086001019043972018 17 0.54865059251050807 18 0.43098663445081781 
		19 0.010937019663295605 20 0.00082565147098133363
		5 17 0.004450503515304423 18 0.13499703434873836 19 0.77467517725145929 
		20 0.081626486857517389 21 0.0042507980269806322
		5 18 0.0020405777784882361 19 0.021251733738969308 20 0.57524052933821046 
		21 0.39997491728055168 22 0.0014922418637802262
		5 18 0.00040072646802353953 19 0.0015280975162379616 20 0.024565128239736427 
		21 0.94635604943188911 22 0.027149998344112962
		5 18 0.00031783266224632032 19 0.00079851841268164755 20 0.0047343854455719715 
		21 0.4921292114366454 22 0.5020200520428546
		5 18 0.00016185398702492519 19 0.00029779086469878098 20 0.0009866053960069321 
		21 0.025514395118101628 22 0.9730393546341678
		5 5 0.038425102389580315 6 0.00082929087963842395 12 0.51195978789810936 
		13 0.44400700897231415 14 0.0047788098603577358
		5 5 0.0031719263986347639 12 0.03325627970664205 13 0.74133627816922287 
		14 0.21970178077795599 15 0.0025337349475443552
		5 12 0.0021638559937828278 13 0.15864248313480714 14 0.81924466441728261 
		15 0.019226992192704288 16 0.00072200426142307898
		5 12 0.00032280450898305703 13 0.0048143952137325611 14 0.58099255763173541 
		15 0.41170104166695914 16 0.0021692009785898988
		5 13 0.0010987445580528728 14 0.073951670215873552 15 0.89421993068621353 
		16 0.02944565977701738 17 0.0012839947628426798
		5 14 0.0053354796130169356 15 0.6229150980618543 16 0.36756279155759547 
		17 0.0037379563964982979 18 0.00044867437103507146
		5 15 0.012293154045674725 16 0.6080811301131499 17 0.37297965768853847 
		18 0.0058040827980351426 19 0.00084197535460170457
		5 16 0.0075513281954190537 17 0.5752377023848928 18 0.40931705884605279 
		19 0.0073184461768011338 20 0.00057546439683424334
		5 17 0.0039046023674051181 18 0.1414602545758476 19 0.78725166474112218 
		20 0.064363970620272867 21 0.0030195076953521867
		5 18 0.0018648025842503367 19 0.023163410642884897 20 0.62287514798218724 
		21 0.35093500159318597 22 0.0011616371974914671
		5 18 0.00042719502552954355 19 0.0016978303978805499 20 0.028983363493297411 
		21 0.94210189456282134 22 0.026789716520471237
		5 18 0.00027588144257832177 19 0.00070870703445287159 20 0.0042941377321682201 
		21 0.5090856540031955 22 0.48563561978760506
		5 18 0.00015337075903495981 19 0.00028290848428692942 20 0.00093218768163399655 
		21 0.02443580117668823 22 0.97419573189835595
		5 5 0.044124611448719916 6 0.0014154441461821658 12 0.51888269922013996 
		13 0.42999054634299289 14 0.0055866988419650864
		5 5 0.003435432285347333 12 0.032095510830225674 13 0.7095285597550266 
		14 0.25208377858268455 15 0.0028567185467158434
		5 12 0.002639653412068095 13 0.16670098819450294 14 0.80364611666249886 
		15 0.026072199845650713 16 0.00094104188527948762
		5 12 0.00041504540005632011 13 0.0058670328757184165 14 0.54679640566499388 
		15 0.44408216215190705 16 0.0028393539073244332
		5 13 0.0015645486932679778 14 0.095743898611518455 15 0.85861110318252876 
		16 0.042320897223155927 17 0.0017595522895289483
		5 14 0.0048475341141288198 15 0.59224292879395146 16 0.39928491981366238 
		17 0.0032442712890395574 18 0.00038034598921763373
		5 15 0.007501517388593686 16 0.61847653750714782 17 0.37051400426095144 
		18 0.0030667300460325351 19 0.00044121079727434614
		5 16 0.0069078867236608658 17 0.61085892387796747 18 0.37699099190071744 
		19 0.0048389362048144426 20 0.00040326129283968656
		5 17 0.0033631237370122589 18 0.14463588136949745 19 0.79813976209327919 
		20 0.05171551243829782 21 0.0021457203619130731
		5 18 0.0016735291832581497 19 0.026547804251043892 20 0.69288234631687895 
		21 0.27803611343936302 22 0.00086020680945609717
		5 18 0.00041974671189715692 19 0.0017629842731437843 20 0.032880007962362845 
		21 0.94029191864676254 22 0.02464534240583368
		5 18 0.00019495030077839361 19 0.00051629893924074529 20 0.0032337488046137734 
		21 0.52096308173400108 22 0.47509192022136604
		5 18 0.00012000168310921759 19 0.00022243921714073974 20 0.0007304824897486356 
		21 0.019960240678685591 22 0.97896683593131584
		5 5 0.058511227356075148 6 0.0028481219234409503 12 0.50787377323816607 
		13 0.42259797899041091 14 0.0081688984919069743
		5 5 0.004106253267425199 12 0.035037663432017009 13 0.6774166898538051 
		14 0.28000300104593795 15 0.0034363924008147481
		5 12 0.0034421919459247784 13 0.18674889998441074 14 0.77379098399467749 
		15 0.034763981106267126 16 0.0012539429687197308;
	setAttr ".wl[400:499].w"
		5 12 0.00056333135309194926 13 0.0075810445053959945 14 0.52563492134912793 
		15 0.46243690514120633 16 0.0037837976511779009
		5 13 0.0022008186626936901 14 0.12319193883166979 15 0.81567848734069492 
		16 0.056603267030818818 17 0.0023254881341227165
		5 14 0.0049038715177268924 15 0.56475414919788358 16 0.42689767164086312 
		17 0.0030859960752208922 18 0.00035831156830562326
		5 15 0.0051292240554642998 16 0.62452530275929896 17 0.36829679243677321 
		18 0.0017889784430311015 19 0.00025970230543240051
		5 15 0.00036766003551013001 16 0.0074480084667928681 17 0.63793690960551619 
		18 0.3503767226186979 19 0.0038706992734829537
		5 17 0.0026914372603832472 18 0.13553417753477115 19 0.81825949129050002 
		20 0.042016987530461722 21 0.0014979063838838945
		5 18 0.0014061891194867592 19 0.029923975152920765 20 0.77061393424171987 
		21 0.19745387863775768 22 0.00060202284811494136
		5 18 0.00040695441800515784 19 0.0018094805164554873 20 0.037001522315868132 
		21 0.93804749878558458 22 0.022734543964086661
		5 18 0.00011615101001834808 19 0.00031760963236390294 20 0.002060138595554296 
		21 0.52353775831384253 22 0.47396834244822095
		5 18 7.7624155168448526e-05 19 0.00014476806792202373 20 0.00047500241371645967 
		21 0.013787161638344257 22 0.98551544372484889
		5 5 0.064084204705256095 6 0.0035173769165596958 12 0.49946680972826141 
		13 0.42326849400607319 14 0.0096631146438496702
		5 5 0.0046367444542352709 12 0.038414467471857762 13 0.66593897141934322 
		14 0.28724282841609128 15 0.0037669882384723844
		5 12 0.004087795050790456 13 0.20464388593431998 14 0.75000754384428792 
		15 0.039806270609995448 16 0.0014545045606063028
		5 12 0.00071360108547158848 13 0.0093078230101418559 14 0.51625223585595603 
		15 0.46913749640807667 16 0.004588843640353839
		5 13 0.002863358922949553 14 0.14972074081499268 15 0.77690774552862185 
		16 0.067680069682243896 17 0.0028280850511919506
		5 14 0.0055767242545710612 15 0.54815341822482355 16 0.44263722667748595 
		17 0.0032526348445626194 18 0.0003799959985568571
		5 15 0.0047111185494134941 16 0.62023462125961726 17 0.37340577135888425 
		18 0.001435935368118567 19 0.0002125534639664437
		5 15 0.00040656354129796297 16 0.0090644249952968464 17 0.64984044847050226 
		18 0.33691997032201854 19 0.003768592670884436
		5 17 0.0019218468474930693 18 0.11185647271250251 19 0.8523771008689871 
		20 0.032855936824954204 21 0.00098864274606297515
		5 18 0.0010580144620528135 19 0.03013134981186797 20 0.83740181698484073 
		21 0.13101293212774526 22 0.00039588661349317973
		5 18 0.00038150422949098932 19 0.0017797647427210345 20 0.03950039291217413 
		21 0.93753797786350601 22 0.02080036025210789
		5 18 6.0171708786824348e-05 19 0.00016918187263833927 20 0.0011330336172467456 
		21 0.52735644206559962 22 0.47128117073572851
		5 18 4.0432230840807625e-05 19 7.5860806559435473e-05 20 0.00024929332003590537 
		21 0.0077463572916065719 22 0.99188805635095723
		5 5 0.055467504062118603 6 0.0023779260946883343 12 0.4996708401906379 
		13 0.43389219234772258 14 0.0085915373048325479
		5 5 0.0044651049922585463 12 0.039034799746755701 13 0.6840792155548584 
		14 0.26897698706258222 15 0.0034438926435451981
		5 12 0.0041912033698763449 13 0.21462436405383517 14 0.74172404279310855 
		15 0.038057299363751247 16 0.0014030904194286941
		5 12 0.00080230501768570404 13 0.010404441851300135 14 0.5154655474259382 
		15 0.46844562871517165 16 0.004882076989904306
		5 13 0.0033373879230491018 14 0.16957104882758384 15 0.75198353877750057 
		16 0.072002750336057672 17 0.0031052741358088311
		5 14 0.0065550412881013806 15 0.54288498353550263 16 0.44656992217818325 
		17 0.0035672815655708946 18 0.000422771432641903
		5 15 0.0055096401374026523 16 0.61826900766537363 17 0.37448543793084105 
		18 0.0015076807669692914 19 0.00022823349941344313
		5 15 0.00045077611252773811 16 0.010579044127509592 17 0.65622732771442316 
		18 0.32887942849309476 19 0.0038634235524449001
		5 17 0.0012331015847342551 18 0.082236530776291658 19 0.89267795825986063 
		20 0.023249782277365273 21 0.00060262710174828352
		5 18 0.00064964952570396135 19 0.023283778371510418 20 0.8938947541631509 
		21 0.081944695290350769 22 0.00022712264928392433
		5 18 0.00030843723817145077 19 0.001484061617099332 20 0.035386950509518435 
		21 0.94562453045554973 22 0.017196020179661011
		5 18 2.4835511089120266e-05 19 7.1067793790391466e-05 20 0.00048704735776237528 
		21 0.53401388930812643 22 0.46540316002923166
		5 18 1.5756697973729458e-05 19 2.9713141427533877e-05 20 9.8030975861840224e-05 
		21 0.0032574982920516673 22 0.99659900089268527
		5 5 0.043844681479739925 6 0.0012571449350721033 12 0.49832682387438493 
		13 0.44969681381551713 14 0.0068745358952859367
		5 5 0.0039949301818575332 12 0.039199411737287061 13 0.71973665102278517 
		14 0.23417709901528594 15 0.0028919080427842266
		5 12 0.0038447409369238199 13 0.21730729356816239 14 0.74567221300144937 
		15 0.031984989762570158 16 0.0011907627308942984
		5 12 0.00078826955194300299 13 0.010454712531188124 14 0.52314803047085567 
		15 0.46107001164832923 16 0.0045389757976839794
		5 13 0.003476669289122099 14 0.17995525217012859 15 0.74432743496538156 
		16 0.069144888195441512 17 0.0030957553799262905
		5 14 0.0076317348516599859 15 0.54953024268306416 16 0.43848360540667458 
		17 0.0038844996383257621 18 0.00046991742027546269
		5 15 0.0069269658346789408 16 0.62759545190009003 17 0.36344885661610016 
		18 0.0017576683972481974 19 0.00027105725188275451
		5 15 0.00044895889034895787 16 0.010732632837029408 17 0.67032893617930389 
		18 0.31477582707371032 19 0.0037136450196075103
		5 17 0.00072184330512826717 18 0.054055200863861029 19 0.93029012051166227 
		20 0.014589468966842222 21 0.00034336635250624713
		5 18 0.00028463871522909501 19 0.011495793835237631 20 0.94429144535739984 
		21 0.04382933190916033 22 9.8790182973116552e-05
		5 18 0.00017739500959484481 19 0.00086211181778607967 20 0.022026520539839861 
		21 0.96621690656208392 22 0.010717066070695442
		5 18 5.663293083481451e-06 19 1.6259204740290105e-05 20 0.00011297044637594295 
		21 0.56093865587322012 22 0.43892645118258022
		5 18 3.8401919496934324e-06 19 7.2634571874111606e-06 20 2.4094398125850606e-05 
		21 0.00084492603904289074 22 0.99911987591369411
		5 5 0.040855723538074186 6 0.00085741590557108659 12 0.48740386200254227 
		13 0.46402864172394559 14 0.0068543568298667854
		5 5 0.0042283779535543129 12 0.046304412188314985 13 0.73544359300777107 
		14 0.21112460979618999 15 0.0028990070541696413
		5 12 0.0038005483845829692 13 0.22801499665035441 14 0.73917844874048377 
		15 0.027916436974525446 16 0.0010895692500534227
		5 12 0.00074875888242406164 13 0.010270347360504624 14 0.53721326675018011 
		15 0.44764870838634618 16 0.0041189186205450225
		5 13 0.0032641137134398345 14 0.18026563578412819 15 0.75311706858251537 
		16 0.060524375103429208 17 0.0028288068164873926
		5 14 0.0084209466153904438 15 0.56889536730197643 16 0.4181320206041203 
		17 0.0040504291652827245 18 0.00050123631323007877
		5 15 0.0087103938635649109 16 0.65070268264545972 17 0.33816021728820794 
		18 0.0020984061959927348 19 0.0003283000067746664
		5 15 0.00038596274445810725 16 0.0091515483363927789 17 0.69864730977821188 
		18 0.28861656951283893 19 0.0031986096280982239
		5 17 0.00038289033176561128 18 0.031439149806659704 19 0.96005584529009369 
		20 0.0079397780810597472 21 0.00018233649042136602
		5 18 7.5566201768849337e-05 19 0.0029571156746655189 20 0.98017274249728059 
		21 0.016767208752976458 22 2.7366873308632812e-05
		5 18 5.7764789870385113e-05 19 0.0002773898238500309 20 0.0074597025114681529 
		21 0.98827436265165647 22 0.0039307802231550561
		5 18 2.5339820322295148e-07 19 7.2200073868639935e-07 20 5.0607517318769165e-06 
		21 0.7791219000325158 22 0.2208720638168104
		5 18 4.5147865591074984e-07 19 8.5448598238399678e-07 20 2.8533350079499376e-06 
		21 0.00010331904742836126 22 0.9998925216529253
		5 4 0.0015932194858860867 5 0.068654368264040325 12 0.45750019176544038 
		13 0.45727287726373606 14 0.014979343220897183
		5 5 0.010409234256235522 12 0.11253129978364966 13 0.63768960013289167 
		14 0.2325829588278012 15 0.0067869069994219225
		5 12 0.0071141276190720398 13 0.30752013326331651 14 0.64910438385592106 
		15 0.034453913872574175 16 0.0018074413891162149
		5 12 0.00078414910381816288 13 0.011817522104382559 14 0.59656052325765774 
		15 0.38690847896330938 16 0.0039293265708320807
		5 13 0.0015269403932174671 14 0.11561350415938317 15 0.85433652219468736 
		16 0.027100584108429516 17 0.0014224491442825055
		5 14 0.0070528147381945386 15 0.70050524890928922 16 0.28870704861295327 
		17 0.0033020057532747379 18 0.0004328819862882082
		5 15 0.01684320620404493 16 0.68941010041473516 17 0.28799130425167357 
		18 0.004970569447565085 19 0.00078481968198129183
		5 16 0.0063373131056858947 17 0.66557525223288916 18 0.32327443059379146 
		19 0.0044366704973987942 20 0.00037633357023460559
		5 17 0.00095340702956072927 18 0.051396514294292275 19 0.92762164598291708 
		20 0.019380430754269384 21 0.00064800193896051865
		5 18 0.00041783705667197105 19 0.0064819001202793105 20 0.77390720361699594 
		21 0.21894050759568201 22 0.00025255161037073643
		5 18 8.2710749052520764e-06 19 3.4178070265150215e-05 20 0.0007315592957114588 
		21 0.9984919296467154 22 0.00073406191240271918
		5 18 3.7133721660394676e-05 19 9.7621528087237872e-05 20 0.00063401670082572595 
		21 0.5242932816703475 22 0.47493794637907921
		5 18 1.3790604750620139e-05 19 2.5776319231983806e-05 20 8.7078511638812652e-05 
		21 0.0028334425659436481 22 0.997039911998435
		5 4 0.0017972638190222752 5 0.075873585527835352 12 0.45326770361378571 
		13 0.45280647875967983 14 0.016254968279676825
		5 5 0.0099435264521822685 12 0.11014283762283303 13 0.64519776809636453 
		14 0.22818886196494315 15 0.0065270058636770992
		5 12 0.0065171972447085041 13 0.30233335947284729 14 0.65838594263205252 
		15 0.03111559104480479 16 0.0016479096055869128
		5 12 0.00065501222425406753 13 0.010203466227032488 14 0.61885907246832272 
		15 0.36691791988549 16 0.0033645291949007112
		5 13 0.0010196425013480205 14 0.084069451083747596 15 0.89476720614613126 
		16 0.019131625958108717 17 0.0010120743106644
		5 14 0.0064018732601053233 15 0.72169908319061482 16 0.26810640944167163 
		17 0.0033523515304354564 18 0.00044028257717275887
		5 15 0.021592452930365189 16 0.65589602071023168 17 0.31324651241549684 
		18 0.0080082817428707691 19 0.0012567322010356089
		5 16 0.0076695717108490619 17 0.59729077148813181 18 0.38660544421680498 
		19 0.0078131282098395146 20 0.00062108437437473395
		5 17 0.0023364730104659466 18 0.086950323482761091 19 0.8593004937912595 
		20 0.049346290225463725 21 0.0020664194900496913
		5 18 0.00093576763757849477 19 0.01100953231699741 20 0.62768166721026997 
		21 0.3596880855690453 22 0.00068494726610883732
		5 18 6.1627260400428255e-05 19 0.00024096542503115173 20 0.0044581809401581093 
		21 0.98989689205279208 22 0.0053423343216182509
		5 18 0.00011098495986613711 19 0.00028356287817968235 20 0.0017651682481483969 
		21 0.48965399186810193 22 0.50818629204570387
		5 18 4.3897326955419095e-05 19 8.1506839126359478e-05 20 0.00027475875216129169 
		21 0.0082311400664038369 22 0.99136869701535302
		5 4 0.001606134281108763 5 0.07326551288756708 12 0.45681586590791895 
		13 0.45416483503361171 14 0.014147651889793418
		5 5 0.0077548332692141233 12 0.090384786121140759 13 0.67890577861238199 
		14 0.21774987571935697 15 0.0052047262779061527
		5 12 0.004792756920605502 13 0.27142020701255404 14 0.69757086768757248 
		15 0.024969106746689732 16 0.001247061632578262
		5 12 0.00047617361965361947 13 0.0076000463769614075 14 0.63727918644568426 
		15 0.35204327112931821 16 0.0026013224283825834
		5 13 0.00074247775002081321 14 0.06280451337582231 15 0.92050952695659005 
		16 0.015155021108218029 17 0.00078846080934882792
		5 14 0.006501787125305844 15 0.71215375342595788 16 0.27697451551488173 
		17 0.0038650568443456342 18 0.00050488708950891556
		5 15 0.024694874424360778 16 0.62017309055618963 17 0.34194050818483096 
		18 0.011419855314221471 19 0.0017716715203970684
		5 16 0.0088778448075552373 17 0.55299379244329816 18 0.42524611728649664 
		19 0.011975820210856422 20 0.00090642525179350693
		5 17 0.0038788524419680003 18 0.11376195788652557 19 0.79800710279408016 
		20 0.080272003498278538 21 0.004080083379147597
		5 18 0.001512345107498104 19 0.015211903074602883 20 0.56911537489751163 
		21 0.4129342497850565 22 0.001226127135330944
		5 18 0.00017958122671856566 19 0.00067730878703982529 20 0.011248009911300315 
		21 0.9732890662066136 22 0.014606033868327749
		5 18 0.00021127611201748322 19 0.00052869035132451338 20 0.0031717732918526082 
		21 0.47437079397787507 22 0.52171746626693039;
	setAttr ".wl[500:551].w"
		5 18 9.0492472890735102e-05 19 0.00016707853839112078 20 0.00056047111643686091 
		21 0.015565176809417582 22 0.98361678106286377
		5 4 0.0011386387852212357 5 0.060636450522431683 12 0.4693893464852294 
		13 0.45884081164309348 14 0.0099947525640242778
		5 5 0.0054010739668696565 12 0.064511473857844531 13 0.71969996648015433 
		14 0.2066010837561616 15 0.0037864019389699374
		5 12 0.0031535060457577352 13 0.22191709901585877 14 0.75478229214131154 
		15 0.01927419176658314 16 0.00087291103048877977
		5 12 0.00034670806755449763 13 0.0055544659006436887 14 0.64147609154133001 
		15 0.35058064427853453 16 0.0020420902119371999
		5 13 0.00068924011261193685 14 0.055697945749957338 15 0.92720687325295659 
		16 0.015627586906300894 17 0.00077835397817306237
		5 14 0.0065864048009928637 15 0.68298151601616197 16 0.30547351868245814 
		17 0.0043959297951434891 18 0.00056263070524365335
		5 15 0.023563841156979567 16 0.59945176556389135 17 0.36275563944981304 
		18 0.012350697720724453 19 0.0018780561085916068
		5 16 0.0092143510370287385 17 0.53916823735194375 18 0.43723093976362076 
		19 0.013390623398239453 20 0.00099584844916712095
		5 17 0.0046738143608994181 18 0.12918886422192674 19 0.77014961209164956 
		20 0.090984181474340481 21 0.0050035278511836919
		5 18 0.0019378272746008699 19 0.018797360014116197 20 0.55842074355894711 
		21 0.41928928832853579 22 0.0015547808238000546
		5 18 0.00031028600253249857 19 0.0011615430395132565 20 0.018461110757628012 
		21 0.95705533805578735 22 0.023011722144538817
		5 18 0.00029351954812455812 19 0.0007306792200756731 20 0.0043159596974008084 
		21 0.47895607921053424 22 0.51570376232386472
		5 18 0.00013753682239133413 19 0.0002531103213179883 20 0.00084386178290605965 
		21 0.022243288949788248 22 0.97652220212359642
		5 4 0.0031313937369900932 5 0.49612002659853688 12 0.47638467341826218 
		13 0.023256266732420913 14 0.0011076395137900206
		5 4 0.0061117750639379876 5 0.47579574731938845 12 0.47559623419974734 
		13 0.04025201805161438 14 0.0022442253653119654
		5 4 0.0099386260085488273 5 0.46478741504645155 12 0.46478741504645155 
		13 0.056789640301237565 14 0.0036969035973105305
		5 4 0.012302413600101949 5 0.45932193256958742 12 0.45932193256958742 
		13 0.064496728324762623 14 0.004556992935960574
		5 4 0.013893194888687026 5 0.45679321302489551 12 0.45679321302489551 
		13 0.067501017091276191 14 0.0050193619702458524
		5 4 0.013753883411637696 5 0.45999651501197325 12 0.45999651501197325 
		13 0.061664170575784549 14 0.0045889159886313069
		5 4 0.0114238108762103 5 0.46888596848869385 12 0.46846832443970621 
		13 0.047854228572469529 14 0.0033676676229199591
		5 4 0.0070669222832750412 5 0.48933181923662122 12 0.47229880395118323 
		13 0.029456327111661018 14 0.0018461274172593188
		5 4 0.0033832649538465091 5 0.53091027537832902 6 0.00097889555779133138 
		12 0.44947472258157495 13 0.015252841528458187
		5 4 0.0022823632923442685 5 0.58773748956031846 6 0.00098072020845883139 
		12 0.39792633034476466 13 0.011073096594113718
		5 4 0.0027855272374063887 5 0.61762519744095101 6 0.0016949215153793573 
		12 0.3645348909027587 13 0.013359462903504576
		5 4 0.0033328986160248591 5 0.61123579378930215 6 0.0023442412010071471 
		12 0.36629627511222645 13 0.016790791281439333
		5 4 0.0028296597640018787 5 0.58173287494078352 6 0.0017309866959061627 
		12 0.39642358928735377 13 0.017282889311954621
		5 4 0.0022994939594068631 5 0.53823205876005698 6 0.0010047655113314712 
		12 0.44174385717482867 13 0.016719824594376063
		5 6 0.00080494268133609085 7 0.00415222672281445 8 0.074627164042931224 
		9 0.67439422320037545 10 0.24602144335254281
		5 6 0.00092016670727520611 7 0.0045607447116713714 8 0.073186454843533727 
		9 0.61625087775014564 10 0.30508175598737403
		5 6 0.00090949640204664682 7 0.0043928927410867048 8 0.066437616731770233 
		9 0.58666862752705529 10 0.34159136659804118
		5 6 0.00079608955969693587 7 0.0038183231180635969 8 0.057784957939686576 
		9 0.58667532754625473 10 0.35092530183629811
		5 6 0.00063593030956356135 7 0.0030866568375321401 8 0.049377336753631956 
		9 0.61759269763972513 10 0.32930737845954727
		5 6 0.00043413952108466196 7 0.0021757211802659656 8 0.039302006715091098 
		9 0.69377112735330448 10 0.26431700523025387
		5 6 0.00019942999104897088 7 0.0010518902673865387 8 0.023261083465076045 
		9 0.83219434699033312 10 0.14329324928615525
		5 6 3.5716836363059384e-05 7 0.00019972112163798702 8 0.0056719459278634626 
		9 0.96637429069413339 10 0.027718325420002049
		5 6 2.1551763793440369e-06 7 1.2590804855646053e-05 8 0.00042932555250980937 
		9 0.99810234814900523 10 0.001453580317249966
		5 6 2.4402187600958505e-05 7 0.000143638921486057 8 0.0047907871744703985 
		9 0.98300651422718044 10 0.012034657489262177
		5 6 0.00019989166163447572 7 0.001140960270101811 8 0.03109295038743165 
		9 0.89415422477154016 10 0.073411972909291939
		5 6 0.00052591528792297101 7 0.0028536045755048725 8 0.061512128736846847 
		9 0.77014781692630396 10 0.16496053447342124
		5 6 0.00020583850621831498 7 0.00077775083914895921 8 0.0071018115708944909 
		9 0.49595729954186918 10 0.49595729954186918
		5 6 0.00023581003573494805 7 0.00087875082625699487 8 0.0077730407837235671 
		9 0.49555619917714222 10 0.49555619917714222
		5 6 0.00023168260745893161 7 0.00085395005119961185 8 0.0074007954511450848 
		9 0.49575678594509803 10 0.49575678594509826
		5 6 0.00019083777523955478 7 0.00069940720554807756 8 0.0060349039403247758 
		9 0.4965374255394438 10 0.4965374255394438
		5 6 0.00013369988535056162 7 0.00049013047691773509 8 0.0042745784328195834 
		9 0.49755079560245591 10 0.49755079560245613
		5 6 7.1010261472182162e-05 7 0.00026241167091271931 8 0.0023594059701729335 
		9 0.49865358604872106 10 0.49865358604872106
		5 6 2.019627811602466e-05 7 7.5867349971428787e-05 8 0.00071934498064600224 
		9 0.49959229569563329 10 0.49959229569563329
		5 6 1.3081529035859509e-06 7 5.0154595802859787e-06 8 5.0558505190709117e-05 
		9 0.50000144132459046 10 0.49994167655773486
		5 6 5.4915910096142009e-08 7 2.1401733566141261e-07 8 2.2466072329407997e-06 
		9 0.74016260719655402 10 0.25983487726296722
		5 6 7.1476638918460772e-06 7 2.8003294432576064e-05 8 0.00029326266626708656 
		9 0.55178947206909745 10 0.44788211430631109
		5 6 5.1975448187822409e-05 7 0.00020225813891113607 8 0.0020357585653801948 
		9 0.51268334438366403 10 0.48502666346385676
		5 6 0.00013309923540426134 7 0.00051079462354769358 8 0.0048818370786041362 
		9 0.49824793888339569 10 0.49622633017904827;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.092903076835537612 0.80088309718127215 0 1;
	setAttr -s 23 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 23 ".lw";
	setAttr -s 23 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode skinCluster -n "skinCluster25";
	rename -uid "2A617395-3E41-F8A0-CD44-8C8CB77E6F0D";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.58514003049245333 0 0.58514003049245356 0 0 0.8275129670098339 0 0
		 -0.58514003049245356 0 0.58514003049245333 0 2.1171460810616196 -0.58322536658201241 -2.1470486002920017 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster24";
	rename -uid "DB2DBA96-9D41-088E-7807-558B673B8FD4";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.58514003049245333 0 0.58514003049245356 0 0 0.8275129670098339 0 0
		 -0.58514003049245356 0 0.58514003049245333 0 2.1171460810616205 -0.60957434065415139 -2.1470486002920013 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster23";
	rename -uid "73112362-2748-3057-6861-F7A45E9522F4";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.58514003049245333 0 0.58514003049245356 0 0 0.8275129670098339 0 0
		 -0.58514003049245356 0 0.58514003049245333 0 2.1171460810616196 -0.58568062976959467 -2.1470486002920017 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster22";
	rename -uid "828541DC-4643-F4E0-CBA4-4AABE6C5F2A1";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.58514003049245333 0 0.58514003049245356 0 0 0.8275129670098339 0 0
		 -0.58514003049245356 0 0.58514003049245333 0 2.1171460810616214 -0.60957434065415139 -2.1470486002920008 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster21";
	rename -uid "07320E11-944F-AFBE-FD2C-3B87EB4035C7";
	setAttr -s 34 ".wl";
	setAttr ".wl[0:33].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.29505279133693035 0 0 0 0 0.29505279133693035 0 0
		 0 0 0.29505279133693035 0 0.56598032692848854 3.4169062886700847 -2.0102253859463417 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "B85287F1-694D-265E-AD32-2F869EF0097A";
createNode skinCluster -n "skinCluster20";
	rename -uid "EBFB740B-5B41-DB43-1496-519E330C5973";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.46869266879101368 0.0076202705568219203 0.60268344255731598 0
		 0.014030075767889337 0.86293440711305369 0 0 -0.6026038013866396 0.0097974735064249793 -0.46875461203256652 0
		 0.72334094459859921 -0.97862543392240486 -0.58312837331898715 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster19";
	rename -uid "FDD4979C-2744-DE39-5BFA-1498FAD496F8";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.43682372524487295 -0.0071021272438315458 0.6261731478483753 0
		 0.014030075767889337 0.86293440711305369 0 0 -0.6260904026474633 0.010179331956503435 0.43688145663119621 0
		 1.917755101973158 -0.99804489499392202 -1.7973608555222946 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster18";
	rename -uid "E93DE07D-D546-599D-E60F-EEA208B51454";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.43915399763826812 -0.0071400141306791022 -0.62454063501991675 0
		 0.014030075767889337 0.86293440711305369 0 0 0.62445810554623993 -0.010152793146812805 0.43921203699746009 0
		 0.20244340447413944 -0.97015638703423746 -3.4057332547960977 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster17";
	rename -uid "E5BB3BF5-A54A-EBC9-0161-32B48836FA43";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.44498264579837743 0.0072347795898340854 -0.62040012986547777 0
		 0.014030075767889337 0.86293440711305369 0 0 0.62031814753588099 -0.010085483367433933 -0.44504145548188839 0
		 -0.92657194334846182 -0.95180021680566318 -2.1854205644796751 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster16";
	rename -uid "7DAF6D45-A34B-538B-8072-4DA5B9FCAC35";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.76296076080078301 0.012404647669308991 -0.026367032996341525 0
		 0.014030075767889337 0.86293440711305369 0 0 0.026363548743702725 -0.00042863348979447325 -0.7630615950272357 0
		 -0.5185493171479012 -0.95843407948794823 -0.98606451457620681 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster15";
	rename -uid "88226893-AA47-E142-F551-B9BCF028F048";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.76292572040929385 -0.012404077962801201 0.027362423547484596 0
		 0.014030075767889337 0.86293440711305369 0 0 -0.027358807759676293 0.00044481497391155608 0.76302655000474728 0
		 1.5135949109316531 -0.99147382996749989 -3.0140125309761556 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster14";
	rename -uid "76375161-B146-A456-D65D-F0BEC092EB74";
	setAttr -s 352 ".wl";
	setAttr ".wl[0:351].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.74609285758971267 0 0 0 0 0.74609285758971267 0 0
		 0 0 0.74609285758971267 0 1.511455012556941 -0.0059220450023080157 -3.1111221408340479 1;
	setAttr -s 11 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode skinCluster -n "skinCluster13";
	rename -uid "B889EBE3-DF41-A72B-ACD5-CB986BA24D08";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.85736565085261618 0 0.85736565085261651 0 0 1.2124981313486056 0 0
		 -0.85736565085261651 0 0.85736565085261618 0 1.023076865803787 -1.2160805856016861 1.2600306370269898 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster12";
	rename -uid "904A9668-AA46-CFEF-6EF3-B5A43F1797AF";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.85736565085261618 0 0.85736565085261651 0 0 1.2124981313486056 0 0
		 -0.85736565085261651 0 0.85736565085261618 0 1.023076865803787 -1.2196781147590479 1.2600306370269898 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster11";
	rename -uid "34B0AD8A-4940-57C9-815D-6199D6DC020D";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.85736565085261618 0 0.85736565085261651 0 0 1.2124981313486056 0 0
		 -0.85736565085261651 0 0.85736565085261618 0 1.023076865803787 -1.2546879344881499 1.2600306370269898 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster10";
	rename -uid "1B5F4FD4-C246-756F-6B8E-898486C83756";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.85736565085261618 0 0.85736565085261651 0 0 1.2124981313486056 0 0
		 -0.85736565085261651 0 0.85736565085261618 0 1.023076865803787 -1.2546879344881499 1.2600306370269898 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster9";
	rename -uid "BD9CBDA4-9544-54F6-E3C6-6DB4C9727C9B";
	setAttr -s 74 ".wl";
	setAttr ".wl[0:73].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.49137834914246531 0 0 0 0 0.49137834914246531 0 0
		 0 0 0.49137834914246531 0 -1.2192810971735413 4.6526702624007807 1.4653922923741929 1;
	setAttr -s 6 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "FE68D020-9F4C-F20F-5B3C-1CBDB1C02D15";
createNode skinCluster -n "skinCluster8";
	rename -uid "1380A00A-7E4E-AC66-670E-54AC3C149BE3";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.7022823970266806 0.011418104504260904 0.90305225763232333 0
		 0.02102246503269432 1.29300858378558 0 0 -0.90293292444030027 0.014680394290454615 -0.7023752118946186 0
		 -1.043003034301955 -2.259206454790029 3.5896761028348885 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster7";
	rename -uid "FE390422-D944-C84F-AFE7-A08A3041B432";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.65453042744280998 -0.010641725968644256 0.93824889635894937 0
		 0.02102246503269432 1.29300858378558 0 0 -0.93812491213237958 0.015252565535073691 0.65461693132706178 0
		 0.74669007023779055 -2.2883042977442414 1.7702875035870889 1;
	setAttr -s 10 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
	setAttr -s 10 ".ifcl";
createNode skinCluster -n "skinCluster6";
	rename -uid "3D0011FB-3445-AE49-209E-D69134A520F0";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 0.65802207429613069 -0.01069849513847107 -0.93580276246634109 0
		 0.02102246503269432 1.29300858378558 0 0 0.93567910148237776 -0.015212800161888218 0.65810903964252787 0
		 -1.8235084644968151 -2.2465165559603859 -0.63967471491138073 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster5";
	rename -uid "DC31B8B8-4943-64F8-BC21-64829B606447";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -0.66675563740447941 0.010840490348215584 -0.92959868871314721 0
		 0.02102246503269432 1.29300858378558 0 0 0.92947584756205426 -0.01511194415036266 -0.66684375699382792 0
		 -3.5152089273907854 -2.2190119328101972 1.1888243812834136 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "1FE8DA21-2A4A-5855-180C-5F82F8FA933F";
	setAttr -s 54 ".wl";
	setAttr ".wl[0:53].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" -1.1432095008325998 0.018586946798090764 -0.039507985441540876 0
		 0.02102246503269432 1.29300858378558 0 0 0.039502764687178886 -0.00064225829568714072 -1.1433605893965373 0
		 -2.903833655171582 -2.2289520178515922 2.9859223469659701 1;
	setAttr -s 5 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "F6E3384B-FF49-7E43-E0F7-E195321C2703";
	setAttr -s 64 ".wl";
	setAttr ".wl[0:63].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.14315699681074 -0.018586093158000926 0.040999464418665997 0
		 0.02102246503269432 1.29300858378558 0 0 -0.040994046573885737 0.00066650440024539482 1.1433080784356542 0
		 0.14110221566447995 -2.2784583078129765 -0.052725980255667049 1;
	setAttr -s 9 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode skinCluster -n "skinCluster2";
	rename -uid "8CEF5CF4-9042-8283-361A-8C98A538FE10";
	setAttr -s 514 ".wl";
	setAttr ".wl[0:499].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr ".wl[500:513].w"
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0 0 0 1.0000000000000002 0
		 -6.9388939039072284e-17 -4.4408920985006262e-16 0.076617512680354605 1;
	setAttr -s 14 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
createNode skinCluster -n "skinCluster1";
	rename -uid "20DF9EF0-C342-5080-6C69-1EA29095F295";
	setAttr -s 900 ".wl";
	setAttr ".wl[0:99].w"
		5 19 0.0060276822950566886 20 0.01191306369212842 21 0.053605444282403977 
		22 0.92190856939698451 23 0.0065452403334264426
		5 12 0.071506019682452918 13 0.073536352530674073 14 0.068771238678174557 
		21 0.16119320323812555 22 0.62499318587057295
		5 13 0.045055794579734861 14 0.043829080245028282 20 0.066102497712145797 
		21 0.1866548189643516 22 0.65835780849873948
		5 13 0.022209670541402608 19 0.028706416423040143 20 0.056040611177207496 
		21 0.19691265559039683 22 0.69613064626795296
		5 12 0.015923145981562286 13 0.015923145981562286 20 0.021654040027246798 
		21 0.077529247775007332 22 0.86897042023462134
		5 12 0.01300772771192271 20 0.015773085143850271 21 0.056285913676918063 
		22 0.90058357373224962 23 0.014349699735059498
		5 5 0.0072275612876527111 12 0.0072275612876527111 21 0.015374517959696819 
		22 0.94361574020960737 23 0.026554619255390426
		5 12 0.16615459740456379 13 0.18037253462201241 14 0.17359243382517117 
		21 0.13858423115061158 22 0.34129620299764118
		5 5 0.064121317373873152 12 0.064121317373873152 13 0.057831163110945043 
		22 0.75400871750032472 23 0.059917484640983898
		5 18 0.061205870374643048 19 0.074453756053112011 20 0.13178121470857274 
		21 0.28262717298509482 22 0.44993198587857725
		5 13 0.11416306182357484 14 0.11552041540529447 20 0.1266886719658788 
		21 0.23102827495563547 22 0.41259957584961648
		5 5 0.0078932618407422973 12 0.0079669218030731549 21 0.02626856996958947 
		22 0.93760546437301395 23 0.020265782013581087
		5 5 0.0099797062967561783 12 0.01008562860909817 21 0.030040481123035721 
		22 0.92727149346090776 23 0.022622690510202256
		5 12 0.031087469125109023 13 0.031786603883180671 20 0.048195625973986703 
		21 0.1518153214489788 22 0.73711497956874494
		5 13 0.016549868991866373 19 0.020839108108697307 20 0.041200807984702471 
		21 0.15984254738045578 22 0.76156766753427807
		5 12 0.11091230101526663 13 0.12181866303014345 14 0.11895981588053961 
		21 0.17875187512496662 22 0.4695573449490838
		5 18 0.0087803080336460171 19 0.013657225306284371 20 0.033944637123210539 
		21 0.20965393936200566 22 0.73396389017485342
		5 13 0.080762320681484479 14 0.080717208879939023 20 0.10215834244538376 
		21 0.22561299852087688 22 0.51074912947231599
		5 18 0.040074345729458942 19 0.050823225039837466 20 0.095191207498485544 
		21 0.25934373133742966 22 0.55456749039478836
		5 5 0.14028325285528104 12 0.17605741514309073 13 0.18256003715539773 
		14 0.16739845958221775 22 0.33370083526401267
		5 5 0.16633387381484097 12 0.16680210883731392 13 0.15378503182980385 
		14 0.09359866921164528 22 0.41948031630639598
		5 5 0.16951654925703244 12 0.17311794387911567 13 0.16684380559131762 
		14 0.10963493462876851 22 0.38088676664376581
		5 5 0.16457005512868819 12 0.1745200851593415 13 0.17312897524073426 
		14 0.12471554343012269 22 0.36306534104111332
		5 5 0.10369776140629154 12 0.10369776140629154 13 0.089234445702277246 
		22 0.62851062053306106 23 0.074859410952078612
		5 5 0.045496802191689292 12 0.045494740624224511 13 0.035749384706152333 
		22 0.79197976931633596 23 0.081279303161597871
		5 4 0.071941728016505321 5 0.12815455376667712 12 0.12819933017114662 
		13 0.11674086888269804 22 0.55496351916297293
		5 5 0.013052347214847852 12 0.013052347214847852 13 0.011254885137336633 
		22 0.9149130843376071 23 0.047727336095360513
		5 5 0.030979775453702802 12 0.030979775453702802 13 0.025124476229023272 
		22 0.8416494683927046 23 0.071266504470866576
		5 5 0.0056360117137923098 12 0.0056360117137923098 13 0.004637128966620583 
		22 0.94172809711358729 23 0.04236275049220746
		5 4 0.0036029843226384941 5 0.0044660889383054186 12 0.0044406446685394223 
		22 0.94298282029573521 23 0.044507461774781452
		5 4 0.00031461239278047175 5 0.00036830263114180872 12 0.00036521982256161378 
		22 0.9865207239237096 23 0.012431141229806524
		5 5 0.0013189804965981604 12 0.0013189804965981604 13 0.0010670304517091844 
		22 0.97404540939488549 23 0.022249599160208935
		5 5 0.0061919562792375135 12 0.0061931793490902446 21 0.018981280769060506 
		22 0.94321856708932816 23 0.025415016513283623
		5 5 0.0060291108066110807 12 0.0060291108066110807 21 0.016706654172881787 
		22 0.94410121617920129 23 0.027133908034694766
		5 5 0.021910267458114942 12 0.021918341336058585 21 0.030587153473886363 
		22 0.88450456575556413 23 0.041079671976375937
		5 5 0.0095267352539246744 12 0.0095267352539246744 21 0.018301999191170707 
		22 0.93281310599137535 23 0.02983142430960466
		5 5 0.0052140648173180692 12 0.0052140648173180692 21 0.0082167122214121847 
		22 0.9556375335019659 23 0.025717624641985737
		5 4 0.00031147771057848163 5 0.00033785645191188523 12 0.0003269785621476364 
		22 0.98000420875381267 23 0.019019478521549237
		5 5 0.12636904595393142 12 0.14287189700958774 13 0.14297725811547515 
		14 0.12075565007208176 22 0.46702614884892402
		5 5 0.009147708439434089 12 0.0091531349258946407 21 0.023749380420895326 
		22 0.92852337891967018 23 0.029426397294105875
		5 5 0.011856998336102847 12 0.011869175573294505 21 0.027677014063636155 
		22 0.91592878374187137 23 0.032668028285095199
		5 5 0.025115418415868153 12 0.02523094347645298 21 0.043328231225794461 
		22 0.86382546330373544 23 0.042499943578148958
		5 5 0.039769680926138362 12 0.0401702850007409 21 0.057247008025022215 
		22 0.81410369494411794 23 0.048709331103980499
		5 5 0.0073990903786199545 12 0.0073990903786199545 21 0.010116986186261773 
		22 0.93946278127904037 23 0.035622051777458023
		5 5 0.0062039762761107184 12 0.0062039762761107184 21 0.0097753103958099392 
		22 0.94546535378317142 23 0.032351383268797274
		5 18 0.0033895247991101956 19 0.0051619681817772975 20 0.01150665976880701 
		21 0.071828901616286911 22 0.90811294563401868
		5 19 0.0060194709208934915 20 0.01239395249374632 21 0.062307952474692847 
		22 0.91404301244199249 23 0.0052356116686748458
		5 18 0.0033320578017312133 19 0.0053864314472846725 20 0.014103175465921713 
		21 0.12315173309565743 22 0.85402660218940496
		5 18 0.010895538967107165 19 0.017518072541298741 20 0.046266543914062867 
		21 0.27650545921710312 22 0.64881438536042813
		5 19 0.0066374588630537653 20 0.014074431993118069 21 0.076767668411090187 
		22 0.89727741569941588 23 0.0052430250333220284
		5 4 0.00045320455847029 5 0.00048605376873633741 12 0.00047512377795339933 
		22 0.96202885691125162 23 0.036556760983588503
		5 4 0.043133118056757909 5 0.057178481052136437 12 0.056593750483194517 
		22 0.73568492189847545 23 0.10740972850943571
		5 5 0.13286002740892355 12 0.13286002740892355 13 0.1090583922861946 
		22 0.54001522763071452 23 0.085206325265243757
		5 4 0.090528200659294816 5 0.15455022497528972 12 0.15455022497528972 
		13 0.13440506646830852 22 0.46596628292181724
		5 5 0.0018484213869960214 12 0.0018471289475660718 21 0.0015437146273289733 
		22 0.94803962294216348 23 0.046721112095945525
		5 5 0.15884394199175986 12 0.17872594753301418 13 0.17872594753301418 
		14 0.14205625454470497 22 0.34164790839750692
		5 5 0.15032940346745785 12 0.17976155208465977 13 0.1816611330780066 
		14 0.15696635982186075 22 0.33128155154801509
		5 18 0.00028229325094782575 19 0.00049187146848079697 20 0.0014082458646460948 
		21 0.022655527610963677 22 0.97516206180496157
		5 4 0.012570594128100276 5 0.015917248781237191 12 0.015842688414936093 
		22 0.8758374409763543 23 0.079832027699372157
		5 5 0.010660843467785622 12 0.010660843467785622 13 0.0089208552775495442 
		22 0.91071192580358873 23 0.059045531983290434
		5 5 0.0077673556451654966 12 0.0077673556451654966 21 0.0094722856005435129 
		22 0.92740038179525031 23 0.047592621313875171
		5 5 0.0068295141756800643 12 0.0068295141756800643 21 0.0094564383261241634 
		22 0.93214078763145558 23 0.044743745691060065
		5 18 0.0036103818762836413 19 0.0061081539002560605 20 0.017383034325646769 
		21 0.17501946286168962 22 0.79787896703612393
		5 12 0.0064752045057962912 20 0.0069422071258588335 21 0.024011836637227547 
		22 0.93992802599446312 23 0.022642725736654198
		5 12 0.023109497713800733 13 0.023109497713800733 20 0.021934982777901412 
		21 0.069813165756049331 22 0.86203285603844781
		5 12 0.01442122848711516 13 0.014416006062953519 21 0.04703372235468558 
		22 0.90640868134417485 23 0.017720361751070945
		5 12 0.0078060611610944906 20 0.0086761352868611301 21 0.031231716369060226 
		22 0.93818652767209054 23 0.014099559510893495
		5 4 0.0070101064152418152 5 0.0081208383839713669 12 0.0078093942464330587 
		22 0.8924205794530734 23 0.084639081501280425
		5 4 0.020351394008601056 5 0.024846402976185185 12 0.024197381740355923 
		22 0.82431541064953662 23 0.10628941062532136
		5 5 0.073248277348294977 12 0.081118319895055399 13 0.081118319895055399 
		21 0.11459850970371918 22 0.64991657315787499
		5 12 0.10921873250816301 13 0.10982400589400201 14 0.096475972422712608 
		21 0.13297009214929381 22 0.55151119702582851
		5 12 0.05141093473417227 13 0.05168008167428615 20 0.048770014680601922 
		21 0.13389917320609548 22 0.71423979570484419
		5 13 0.0096194739611658968 19 0.0097116708128140005 20 0.018962092798118845 
		21 0.079681480545589572 22 0.88202528188231166
		5 13 0.0052683457153313833 19 0.0069561372048146134 20 0.014526498385116708 
		21 0.073971148275018592 22 0.89927787041971874
		5 18 0.0020880426908730454 19 0.0033161808226808442 20 0.0080751606177682077 
		21 0.065912819175455273 22 0.92060779669322257
		5 12 0.021638583680495475 13 0.02137796701942507 21 0.046941435090354665 
		22 0.87927839378393613 23 0.030763620425788622
		5 12 0.035495318637177108 13 0.035278802578697581 21 0.06548841088077928 
		22 0.82746774956100322 23 0.036269718342342862
		5 5 0.094158554931575086 12 0.095022534497179165 13 0.091106983913764317 
		14 0.061093737565824584 22 0.65861818909165681
		5 12 0.0063946754923874562 20 0.0094269495910097884 21 0.03706690741554175 
		22 0.93481404256270983 23 0.012297424938351256
		5 12 0.0066820130356363625 20 0.0083206671656388658 21 0.030681483052683867 
		22 0.93870008222695811 23 0.015615754519082811
		5 18 0.003165848981223649 19 0.0050161520008124572 20 0.011601235747322657 
		21 0.082008446014973105 22 0.89820831725566819
		5 12 0.0061906884670753018 20 0.011178368082163876 21 0.046621236856481278 
		22 0.92372461856431354 23 0.012285088029966057
		5 12 0.00643635872112297 20 0.0096017689657087891 21 0.037195814440416634 
		22 0.93119684923928681 23 0.015569208633464728
		5 12 0.0064690284902926797 20 0.0081526003719052456 21 0.029766377340663317 
		22 0.93679765555362438 23 0.018814338243514327
		5 5 0.00469438664575411 12 0.00469438664575411 21 0.0077888475488871881 
		22 0.94561231688848379 23 0.037210062271120684
		5 12 0.0083052124568568 20 0.013230192827679574 21 0.053304875496973825 
		22 0.91574233071574318 23 0.0094173885027466573
		5 12 0.0064784265718617956 20 0.0077740037036333207 21 0.028938723894161526 
		22 0.9443733428992489 23 0.012435502931094322
		5 4 0.00014628149987368769 5 0.0001451943868443512 12 0.00013566627611667504 
		22 0.97981463137805225 23 0.019758226459113102
		5 18 0.001676307140100807 19 0.0027831109487093148 20 0.0070654052066905001 
		21 0.068843197035736062 22 0.91963197966876331
		5 5 0.037267971967043068 12 0.037338130748893465 21 0.041641024015868659 
		22 0.83415123195641994 23 0.049601641311774795
		5 12 0.13827758746582089 13 0.1615499917608034 14 0.16061893259457383 
		21 0.17559498843863094 22 0.36395849974017097
		5 5 0.1347519504520065 12 0.16241651942332727 13 0.16528849198974446 
		14 0.14812323451652162 22 0.38941980361840017
		5 12 0.095593490344957663 13 0.096137620797403636 14 0.084079232653881314 
		21 0.12699345155622846 22 0.59719620464752898
		5 18 0.009350443416206649 19 0.013693308634216209 20 0.030210476360110934 
		21 0.15527728897406393 22 0.79146848261540226
		5 5 0.0069006124622071905 12 0.0069027431524166689 21 0.02005202005997311 
		22 0.94000338053339061 23 0.026141243792012412
		5 18 0.020649273533755754 19 0.029692476486144998 20 0.065952579094323449 
		21 0.26338142584777791 22 0.62032424503799788
		5 5 0.032858104825267194 12 0.032922937226996858 21 0.035985807694669338 
		22 0.85456945849752264 23 0.043663691755543965
		5 12 0.098354382505805055 13 0.10548057131742089 14 0.10151721508504004 
		21 0.17013117994101704 22 0.52451665115071699
		5 4 0.017101513260734988 5 0.021043065731176567 12 0.020689891406565752 
		22 0.8429801816750383 23 0.098185347926484368
		5 12 0.0068649753494787764 20 0.0067922626867647114 21 0.023625249944305395 
		22 0.94660482272306445 23 0.01611268929638672;
	setAttr ".wl[100:199].w"
		5 12 0.0084014447230072471 13 0.0083014148934125905 21 0.026537370876649004 
		22 0.93916377631878512 23 0.017595993188146131
		5 12 0.018226706480201221 13 0.018082457533702922 21 0.042440830910073953 
		22 0.89668677481317938 23 0.02456323026284243
		5 5 0.029892740306693078 12 0.031215506515633255 13 0.031123944944039333 
		21 0.061276389800733043 22 0.84649141843290132
		5 5 0.064945525310903793 12 0.073117899711318851 13 0.073117899711318851 
		21 0.11322354890626105 22 0.67559512636019747
		5 12 0.0055795091653118292 20 0.0073129967260280645 21 0.028265565729217026 
		22 0.94800632884589919 23 0.010835599533543851
		5 5 0.027657687637419007 12 0.027657687637419007 13 0.022571293617571028 
		22 0.86267774215367865 23 0.059435588953912322
		5 12 0.13866711393711034 13 0.14352145857457183 14 0.13239259716820778 
		21 0.13782839497507882 22 0.44759043534503123
		5 18 0.0071943158599435016 19 0.010980956041754275 20 0.0265673591146794 
		21 0.16597084209312138 22 0.78928652689050149
		5 18 0.0030338327437830471 19 0.004774240148118762 20 0.012007103342698559 
		21 0.096648460478900494 22 0.88353636328649909
		5 3 8.1468445641002887e-05 4 8.5501039158678152e-05 5 8.2957062072604488e-05 
		22 0.98034333463165435 23 0.019406738821473375
		5 5 0.018551090534608478 12 0.018559380862902795 21 0.025388639443478328 
		22 0.90285026831667159 23 0.034650620842338824
		5 5 0.0076496904209398201 12 0.0076496904209398201 21 0.01447207691150415 
		22 0.9462233387647857 23 0.024005203481830644
		5 5 0.005996750717798355 12 0.005996750717798355 21 0.012368754322753207 
		22 0.95369230524383908 23 0.021945438997811074
		5 13 0.067485919059981941 14 0.067007168639031778 20 0.086395566328049386 
		21 0.21072308410347698 22 0.56838826186946001
		5 18 0.03074434746928471 19 0.039706907088759805 20 0.076401741666232148 
		21 0.23505447638181023 22 0.61809252739391307
		5 4 0.0026953225132556363 5 0.0034500314544837355 12 0.0034420569469256141 
		22 0.95925803918672792 23 0.031154549898607192
		5 12 0.006444403423882172 20 0.0066416576943655369 21 0.02317132094744195 
		22 0.94595837106013247 23 0.017784246874177935
		5 5 0.13301290986939929 12 0.13513600444297347 13 0.129805157160161 
		14 0.084482525790182644 22 0.51756340273728374
		5 18 0.0011290559174717692 19 0.0018470877316606668 20 0.0048688187347073111 
		21 0.051177487039889495 22 0.94097755057627086
		5 5 0.1425284734485632 12 0.15042559743731918 13 0.14946967542309719 
		14 0.11089465582910522 22 0.44668159786191514
		5 5 0.14274159308745882 12 0.16004824755849059 13 0.16004982253751843 
		14 0.13026347773286276 22 0.4068968590836694
		5 13 0.1566982521835058 14 0.15951180817609095 15 0.13379666607992613 
		21 0.19974108399085477 22 0.35025218956962234
		5 18 0.075669232462034594 19 0.086461262077749734 20 0.14600844683363762 
		21 0.27432468588920894 22 0.41753637273736915
		5 5 0.0017491073382141938 12 0.0017485954155912007 21 0.0015538042143780405 
		22 0.9467264299616962 23 0.048222063070120405
		5 4 0.00043900665160856808 5 0.00046835677413299725 12 0.00045864516274081826 
		22 0.95889265470212182 23 0.03974133670939585
		5 5 0.089288602510331008 12 0.089288602510331008 13 0.078900897899556066 
		22 0.67818273881042879 23 0.064339158269353075
		5 4 0.0033273907413408871 5 0.0040225399985807236 12 0.0039611564007985952 
		22 0.94260329122775177 23 0.046085621631528115
		5 5 0.003097133132287916 12 0.003097133132287916 21 0.0035756020283774195 
		22 0.96328175241112735 23 0.026948379295919419
		5 5 0.0050832224037983325 12 0.0050832224037983325 21 0.0087770220163312651 
		22 0.9524050752524631 23 0.028651457923609056
		5 18 0.026482935217941001 19 0.039482880095576357 20 0.092105797206856896 
		21 0.3225428997391746 22 0.51938548774045112
		5 5 0.0056116845935088181 12 0.0056116845935088181 21 0.012768912554451175 
		22 0.9525325549718916 23 0.023475163286639546
		5 5 0.0044922754932554777 12 0.0044922754932554777 21 0.0077002154631013366 
		22 0.95950011086564002 23 0.023815122684747701
		5 12 0.0057346837421174343 20 0.010856963971900609 21 0.046231372839624127 
		22 0.92511399142473094 23 0.012062988021626871
		5 12 0.0059879856387539971 20 0.0093726743085669733 21 0.036980853375107668 
		22 0.93234961477461897 23 0.015308871902952385
		5 12 0.0060378537681601233 20 0.0079576478528331218 21 0.029505785390855282 
		22 0.93796420201573916 23 0.018534510972412332
		5 12 0.0060576789363786156 20 0.0067548184232681403 21 0.023642801068888476 
		22 0.94104239726134808 23 0.0225023043101167
		5 5 0.0057712556641121397 12 0.0057722410265835279 21 0.018679982785229879 
		22 0.94456752156886281 23 0.025208998955211663
		5 5 0.0056201220450971066 12 0.0056201220450971066 21 0.016534957819505577 
		22 0.94544335157351378 23 0.026781446516786336
		5 18 0.012300342966239493 19 0.019464217259132034 20 0.052230092558610192 
		21 0.28590758643766107 22 0.63009776077835722
		5 18 0.0032901921767015271 19 0.0055440911144499965 20 0.016319313317653031 
		21 0.16874102751726658 22 0.80610537587392883
		5 18 3.0561444722620743e-05 19 5.3398929668452605e-05 20 0.00015930763364285246 
		21 0.0030565952666906197 22 0.99670013672527547
		5 3 3.2988945653471406e-05 4 3.533858399948353e-05 5 3.4425552143769931e-05 
		22 0.99406234811556782 23 0.0058348988026354631
		5 4 0.0070479371375125255 5 0.0081623559779415242 12 0.0077473819875054925 
		22 0.89546667066913099 23 0.081575654227909411
		5 4 0.025815338767682095 5 0.03222596760677069 12 0.031106126926359962 
		22 0.80474512434120982 23 0.10610744235797746
		5 4 0.05921395083927411 5 0.082727323626685056 12 0.081685755914961286 
		22 0.67385105264692258 23 0.10252191697215705
		5 4 0.097316048387705703 5 0.16586336655062225 12 0.16586336655062225 
		13 0.13117569381721961 22 0.43978152469383008
		5 4 0.10061218315264144 5 0.18694420350178825 12 0.18694420350178825 
		13 0.15777373410712761 22 0.36772567573665449
		5 5 0.19733721206564397 12 0.19810612389462756 13 0.17993107953398049 
		14 0.10086861447375353 22 0.32375697003199444
		5 5 0.19802220779935364 12 0.20363274551739988 13 0.19515909590278288 
		14 0.11933324093639165 22 0.28385270984407202
		5 5 0.18002054500411707 12 0.20853051848494575 13 0.20854919775346767 
		14 0.15877969486752211 22 0.24412004388994746
		5 5 0.16380992025183802 12 0.20515016611418146 13 0.20879872312531139 
		14 0.17748607623445042 22 0.24475511427421864
		5 5 0.0045446201511643945 12 0.0045446201511643945 13 0.0037529861544747072 
		22 0.9551991136056891 23 0.031958659937507405
		5 5 0.079778663926370841 12 0.080417319616309754 13 0.076845791459051987 
		22 0.7082195730669546 23 0.054738651931312714
		5 18 0.0021045639900093439 19 0.0032687183131095083 20 0.0077387470941700084 
		21 0.057953257555999324 22 0.92893471304671182
		5 18 0.0030544185220507613 19 0.0045697826995567715 20 0.0099900531142295742 
		21 0.059424255487142669 22 0.92296149017702023
		5 19 0.005123182530511694 20 0.010410711293779852 21 0.050890249792556491 
		22 0.92862908386230902 23 0.0049467725208429524
		5 5 0.0060150727376307991 12 0.0060150727376307991 21 0.0083274426768021065 
		22 0.95218766221535256 23 0.027454749632583746
		5 5 0.14888254496510175 12 0.19827241939361773 13 0.21010521278041835 
		14 0.19273805549609585 22 0.25000176736476631
		5 5 0.13351735450992017 12 0.18732730872952155 13 0.21071358591044037 
		14 0.20361571885676105 22 0.26482603199335686
		5 12 0.16263613785632958 13 0.19958892121356644 14 0.19882616791395244 
		15 0.14553454628155404 22 0.29341422673459761
		5 5 0.0044315047066069277 12 0.0044315047066069277 21 0.0078160458835115614 
		22 0.94582729982897629 23 0.037493644874298328
		5 18 0.00014969772896101586 19 0.00026311288530769182 20 0.00075424858316175793 
		21 0.012954838624239644 22 0.98587810217832994
		5 18 0.0013771181496559527 19 0.0023147627801396839 20 0.0059332221723006695 
		21 0.061541717836481845 22 0.92883317906142182
		5 18 0.0027114146303238887 19 0.0043382741845597109 20 0.010117739318398711 
		21 0.074762434225217334 22 0.90807013764150035
		5 19 0.006197688614937664 20 0.01324732077656581 21 0.074528046108270282 
		22 0.90099147648441813 23 0.005035468015808087
		5 18 0.0054473735519024076 19 0.0081196934482461094 20 0.018122691350483392 
		21 0.10518169514321349 22 0.86312854650615456
		5 3 2.349462474167022e-05 4 2.4331413604943302e-05 5 2.2978787388721528e-05 
		22 0.99139200901755486 23 0.008537186156709807
		5 5 0.10529286203732625 12 0.11021887440995758 13 0.10964692910678975 
		21 0.095767562874145201 22 0.5790737715717813
		5 5 0.14245474340739059 12 0.16762586270883995 13 0.16881976562755815 
		14 0.1456611500765474 22 0.37543847817966391
		5 12 0.1222020309599835 13 0.12508721421314759 14 0.1132593303149579 
		21 0.13360393191802711 22 0.50584749259388384
		5 4 0.00014555801645495779 5 0.00016392945619325179 12 0.00016093911354899003 
		22 0.99157139071101397 23 0.0079581827027887936
		5 5 0.011279225271532958 12 0.011279225271532958 13 0.0097625296279047879 
		22 0.92915675701280853 23 0.038522262816220773
		5 5 0.0036954107343830718 12 0.0036954107343830718 21 0.0039342587335678917 
		22 0.9601096051270781 23 0.028565314670587892
		5 5 0.031464254898536201 12 0.031464254898536201 13 0.029099025400502271 
		22 0.86140204505706186 23 0.046570419745363446
		5 18 1.7451644579392583e-06 19 3.0859881013092811e-06 20 9.2249792883538455e-06 
		21 0.00019288077891824282 22 0.99979306308923421
		5 5 0.0048825595940672033 12 0.0048825595940672033 21 0.010604198285467163 
		22 0.95957675072793625 23 0.0200539317984622
		5 12 0.0068664817051927113 20 0.0078798842413848567 21 0.028162269785436733 
		22 0.93925871469177502 23 0.017832649576210668
		5 18 0.031696734284464984 19 0.045934489564325852 20 0.10714657901261108 
		21 0.32510553174735735 22 0.49011666539124082
		5 4 0.0025202722054801286 5 0.0031699195971771612 12 0.0031497774251222866 
		22 0.95969395453883832 23 0.031466076233382205
		5 5 0.1389307949007203 12 0.13959692376227834 13 0.13066468555613631 
		14 0.081944174436216335 22 0.50886342134464879
		5 5 0.11460975072195585 12 0.11608276390262216 13 0.11097804234816633 
		14 0.070997184837384666 22 0.587332258189871
		5 12 0.0058599429555022571 20 0.0060660974879493974 21 0.021517854951554082 
		22 0.95174337046940305 23 0.014812734135591272
		5 5 0.0051555401835655388 12 0.0051555401835655388 21 0.0053738246470395878 
		22 0.94541272599452086 23 0.038902368991308396
		5 18 0.015028680173014765 19 0.021279957386609833 20 0.045175215984204528 
		21 0.19478935318763285 22 0.72372679326853795
		5 18 0.0011840976756862019 19 0.0018903192903824556 20 0.0048112501525321887 
		21 0.045123985350935543 22 0.94699034753046352
		5 5 0.036834041614462514 12 0.036834041614462514 13 0.02941546161650899 
		22 0.83008244693361655 23 0.066834008220949453
		5 3 6.8531729375460363e-05 4 7.1200971487340385e-05 5 6.8134437964198106e-05 
		22 0.97929762148597577 23 0.020494511375197182
		5 18 0.013477643031667879 19 0.019887484564670561 20 0.045875517985095954 
		21 0.22331266931965424 22 0.69744668509891139
		5 12 0.12919444936467156 13 0.14814324975429005 14 0.14695841126299566 
		21 0.18357507978592891 22 0.39212880983211396
		5 12 0.16145684304226737 13 0.17039895369154504 14 0.16086812949829593 
		21 0.13743766579424732 22 0.36983840797364431
		5 18 0.055070969060907672 19 0.068408653968374145 20 0.12365663610283065 
		21 0.28299939548986996 22 0.46986434537801758
		5 18 0.024875949245339722 19 0.037109462145928383 20 0.086034760738736657 
		21 0.3154763133012421 22 0.53650351456875323
		5 13 0.1001460252588883 14 0.10109623955719274 20 0.12452048859066492 
		21 0.2379650832928453 22 0.4362721633004088
		5 5 0.0091507187627262003 12 0.0091975971514099281 21 0.028630143346398025 
		22 0.92737999502748769 23 0.025641545711978238
		5 5 0.011841659520457371 12 0.011913946356898754 21 0.033167802078680308 
		22 0.91425214800668142 23 0.028824444037282047
		5 12 0.0072825873791922601 20 0.0074157927109208197 21 0.025232933945535677 
		22 0.93703725962154294 23 0.023031426342808307
		5 5 0.024313875305505158 12 0.024612970832636458 21 0.049799449939656924 
		22 0.86344523942011597 23 0.037828464502085414
		5 18 0.010098379138334343 19 0.016180799930335811 20 0.041976299857320272 
		21 0.25909332782668154 22 0.67265119324732803
		5 18 0.00360886313128814 19 0.006052955208613456 20 0.016763686194516583 
		21 0.16307038674032515 22 0.8105041087252568
		5 5 0.083506458439470424 12 0.090691638985083561 13 0.090691638985083561 
		21 0.11609159235606634 22 0.61901867123429621;
	setAttr ".wl[200:299].w"
		5 12 0.12682454613909183 13 0.12734206919484922 14 0.1116701723709381 
		21 0.13477432896839645 22 0.49938888332672432
		5 12 0.039001947642352514 13 0.038568317462156963 21 0.067959164402318556 
		22 0.81075704271151794 23 0.043713527781654098
		5 18 0.0022399372636423632 19 0.0036548055091373596 20 0.0091610102116028522 
		21 0.081738625664807496 22 0.90320562135080995
		5 18 0.0040741838999195533 19 0.0063403521657151149 20 0.014390448322988242 
		21 0.093479782605506226 22 0.88171523300587085
		5 19 0.0073900301383819211 20 0.015395878466226948 21 0.079083234648505266 
		22 0.89221893059838653 23 0.0059119261484992828
		5 18 0.00096387274999908308 19 0.0016367936807027137 20 0.0045512689956182344 
		21 0.057982838406005217 22 0.93486522616767476
		5 12 0.0069770628620266454 20 0.011442053557268085 21 0.045820499926098122 
		22 0.9224571001474855 23 0.013303283507121609
		5 12 0.0071824286802729979 20 0.0097959106593921725 21 0.036700646510354186 
		22 0.92978440221244818 23 0.016536611937532433
		5 12 0.0072473873509437143 20 0.0085502630389882976 21 0.030510529924120715 
		22 0.93425107212887559 23 0.019440747557071727
		5 5 0.0086743785807502239 12 0.0086743785807502239 21 0.019203639908587603 
		22 0.93156913661177232 23 0.031878466318139571
		5 5 0.0066692593463117148 12 0.0066692593463117148 21 0.01643864962525628 
		22 0.94182030601771061 23 0.028402525664409758
		5 5 0.011438010111123036 12 0.011438010111123036 21 0.022629713568341536 
		22 0.91908358268560664 23 0.035410683523805692
		5 4 0.083347031391129325 5 0.14126288488880342 12 0.14126288488880342 
		13 0.1249424514582759 22 0.50918474737298791
		5 5 0.15171272288194088 12 0.15220033854767917 13 0.14142172366296263 
		14 0.088268640840752102 22 0.46639657406666524
		5 5 0.15801729789592123 12 0.16166783245746183 13 0.15667023472080993 
		14 0.10528617079561525 22 0.41835846413019173
		5 5 0.11943830635338849 12 0.11943830635338849 13 0.099787710627491311 
		22 0.57556945583144803 23 0.085766220834283632
		5 5 0.058986015285101098 12 0.058748182720157693 13 0.045012508310086623 
		22 0.7349780209849428 23 0.10227527269971183
		5 5 0.014624424145740092 12 0.014624424145740092 13 0.012538151044875793 
		22 0.900240611421945 23 0.057972389241699007
		5 5 0.033317526927661774 12 0.033317526927661774 13 0.026901569014118231 
		22 0.82365781848945496 23 0.082805558641103338
		5 5 0.0058368449221158705 12 0.0058368449221158705 21 0.0099325587964099581 
		22 0.94224597457029946 23 0.036147776789058832
		5 5 0.02505625710699734 12 0.025068008996590934 21 0.036103464370110971 
		22 0.86710861969640385 23 0.046663649829896917
		5 5 0.040875355841096306 12 0.04096024405259284 21 0.047550121594320711 
		22 0.8159211181863858 23 0.054693160325604361
		5 5 0.0086784491458823804 12 0.0086784491458823804 21 0.011643506862227511 
		22 0.92650809386658228 23 0.044491500979425398
		5 5 0.0073287416322582073 12 0.0073287416322582073 21 0.011436751693625933 
		22 0.9328354258017868 23 0.041070339240070815
		5 5 0.10742598357370534 12 0.10861141784596617 13 0.10475716044265439 
		14 0.072449101603627553 22 0.60675633653404659
		5 3 3.4424658791327748e-08 4 3.5547121385891048e-08 5 3.2918061404370412e-08 
		22 0.99998438823001345 23 1.5508880144987123e-05
		5 5 0.008239011145114045 12 0.008239011145114045 13 0.0068126009227704558 
		22 0.91914976322049813 23 0.057559613566503312
		5 4 0.0053792666575002814 5 0.0064985157685436392 12 0.0064332019091952854 
		22 0.91691985226922046 23 0.064769163395540397
		5 4 0.0052632200069615345 5 0.0060491841277927148 12 0.0058272741157450779 
		22 0.90554455041943926 23 0.077315771330061414
		5 5 0.0070269522766591395 12 0.0070269522766591395 21 0.0080435571057081226 
		22 0.92948894979593644 23 0.048413588545037162
		5 4 0.00026271939207798744 5 0.00026652230099227033 12 0.00025151835255491565 
		22 0.97139808141384343 23 0.027821158540531441
		5 4 0.0004746606787284246 5 0.00051041109759999374 12 0.0004984475049867119 
		22 0.9626346092099819 23 0.035881871508702853
		5 3 9.1012724256224847e-05 4 9.59298987159366e-05 5 9.3542441517153953e-05 
		22 0.97993540861516548 23 0.019784106320345159
		5 4 0.0016244901438434592 5 0.0019463780837444776 12 0.001944712788396712 
		22 0.94753855771316509 23 0.046945861270850334
		5 5 0.0047046324462476363 12 0.0047046324462476363 21 0.0067078853499698311 
		22 0.9434745286418772 23 0.0404083211156578
		5 5 0.0064254253133068599 12 0.0064254253133068599 21 0.0083258735961926223 
		22 0.93300886042686482 23 0.045814415350328819
		5 3 3.8013919321055856e-05 4 3.9941710821633307e-05 5 3.8502598303705568e-05 
		22 0.99024365366479972 23 0.0096398881067538862
		5 3 1.636809852835953e-06 4 1.7142790890961909e-06 5 1.6239966900533854e-06 
		22 0.99950013445668628 23 0.00049489045768171772
		5 3 3.2417386423709849e-05 4 3.3943036904865513e-05 5 3.2576489692403029e-05 
		22 0.99096960351462338 23 0.0089314595723556291
		5 3 6.750666649020887e-07 4 7.0435482290529484e-07 5 6.6363621509541981e-07 
		22 0.99977218610780028 23 0.00022577083449671335
		5 19 0.0041669625447924479 20 0.0087344066747444705 21 0.048053755474454542 
		22 0.93358313677705618 23 0.0054617385289523436
		5 19 0.018030114512278202 20 0.037310170601096364 21 0.17914570853425701 
		22 0.74538749479592081 23 0.020126511556447662
		5 19 0.015295995345043828 20 0.033697054478813868 21 0.19380691028829378 
		22 0.74604784474238706 23 0.011152195145461589
		5 18 0.0063641829480873702 19 0.010986438089376604 20 0.026058589867231217 
		21 0.19165603509957385 22 0.76493475399573096
		5 19 0.0065967680955927787 20 0.013581455944902707 21 0.069772485553600563 
		22 0.89934738723527696 23 0.010701903170627063
		5 19 0.0052981415342819201 20 0.010577832045536124 21 0.050287247911511485 
		22 0.92219725385062679 23 0.011639524658043748
		5 5 0.0041810681338908806 20 0.0042112292395882194 21 0.014399248165958153 
		22 0.95311362344938777 23 0.024094831011174926
		5 19 0.033481159587466405 20 0.065201202077450046 21 0.24707665254545036 
		22 0.61728213386796149 23 0.036958851921671663
		5 12 0.0089363996668175138 20 0.010806937786456989 21 0.036193996171092084 
		22 0.88704413042061703 23 0.05701853595501645
		5 18 0.011716652407105193 19 0.021627912298698589 20 0.052924732729529397 
		21 0.34743038992510528 22 0.5663003126395616
		5 18 0.0178726138796476 19 0.030649577381049401 20 0.066449921149242655 
		21 0.31500302263169411 22 0.57002486495836624
		5 12 0.0046361226299153815 20 0.0064575428797175724 21 0.024593997763899294 
		22 0.94604146756977792 23 0.018270869156689868
		5 12 0.0048579561055787776 20 0.0071986558708405264 21 0.027763024385043137 
		22 0.94032182057537339 23 0.01985854306316405
		5 19 0.01206027422444266 20 0.026126761557521031 21 0.14820877371331836 
		22 0.80241554752345234 23 0.01118864298126547
		5 18 0.0053730305903845711 19 0.0090490264970213476 20 0.02099165714235306 
		21 0.14883773384464777 22 0.81574855192559326
		5 19 0.026117575189534621 20 0.05383085998341685 21 0.24116852438747702 
		22 0.65640049217780627 23 0.022482548261765205
		5 18 0.002239646139760903 19 0.00423158603080171 20 0.012032441437311095 
		21 0.17928274062802471 22 0.80221358576410162
		5 18 0.013478712228180241 19 0.022954494774783805 20 0.05075858901463054 
		21 0.27160256519766079 22 0.64120563878474468
		5 18 0.0089038350804258887 19 0.016035215571754979 20 0.039176225602394518 
		21 0.28507315372372832 22 0.65081157002169632
		5 19 0.031485122455437477 20 0.059891994504283536 21 0.21847903829018919 
		22 0.64417035850796234 23 0.045973486242127451
		5 12 0.018151889976745005 20 0.026946062657778772 21 0.085340421650906634 
		22 0.77484623948013298 23 0.094715386234436594
		5 12 0.019370232516316199 20 0.033501976510739169 21 0.10866675300866015 
		22 0.75213549958787884 23 0.086325538376405622
		5 19 0.022337479860941551 20 0.040202933713384632 21 0.13450876336764025 
		22 0.72780006158531874 23 0.075150761472714864
		5 5 0.01201052992786792 20 0.013642138767670538 21 0.043070439948818373 
		22 0.84775347357445274 23 0.083523417781190448
		5 5 0.0062678515985892126 12 0.0062678515985892126 21 0.013565943228999743 
		22 0.8994418467694838 23 0.074456506804338088
		5 12 0.014375059155111527 20 0.019755149156664629 21 0.064098654685397743 
		22 0.82002890481695256 23 0.081742232185873467
		5 5 0.0039954266968116889 12 0.0039954266968116889 21 0.010127449121389354 
		22 0.94096870594140547 23 0.04091299154358171
		5 5 0.0054050024944874899 12 0.0054050024944874899 21 0.012448269954337928 
		22 0.91390303504832604 23 0.062838690008360967
		5 5 0.0022645685038095204 12 0.0022645685038095204 21 0.0037341528250146245 
		22 0.95527231138952318 23 0.036464398777843098
		5 5 0.001490942782051404 12 0.001490942782051404 21 0.0018468235302650504 
		22 0.9578100073403476 23 0.03736128356528462
		5 4 0.0001918733689289125 5 0.0002287921445952424 12 0.00022866547301680573 
		22 0.98879885646245524 23 0.01055181255100386
		5 12 0.0054337437433701332 20 0.0054976052183341069 21 0.018695853075936006 
		22 0.94554489848871637 23 0.024827899473643399
		5 5 0.0052905706314854374 12 0.0052905706314854374 21 0.016456480391130745 
		22 0.94644426552037697 23 0.026518112825521405
		5 12 0.0060437655423572541 20 0.0079582126069767944 21 0.02842017359658211 
		22 0.92228016405946389 23 0.035297684194620003
		5 5 0.0044612653900759748 20 0.0048666328125272634 21 0.016898768965290623 
		22 0.94742990458256238 23 0.02634342824954362
		5 5 0.0030529161378786661 12 0.0030529161378786661 21 0.0076166036011479799 
		22 0.9630623798738237 23 0.023215184249270937
		5 4 0.00016123747515173339 5 0.00017894964151655475 12 0.00017778447544197903 
		22 0.98389158212481476 23 0.015590446283074929
		5 19 0.024761683419649457 20 0.046568917173218302 21 0.17113994502884836 
		22 0.70429576592937959 23 0.053233688448904318
		5 12 0.0053670506790969748 20 0.0063795321264006255 21 0.022516107939778471 
		22 0.93878266781789332 23 0.026954641436830663
		5 12 0.0056394270628032451 20 0.0072428398670773657 21 0.025955347143601013 
		22 0.93197935588053482 23 0.029183030045983542
		5 12 0.0072031590669021876 20 0.011134127721163789 21 0.041052291629361498 
		22 0.90359971114862736 23 0.037010710433945222
		5 12 0.0088184213587886237 20 0.015136678370256181 21 0.05619983543936697 
		22 0.87674955609497018 23 0.043095508736618084
		5 5 0.0036808546837123293 12 0.0036808546837123293 21 0.0093508241311637177 
		22 0.95149313592351903 23 0.031794330577892597
		5 5 0.0036948068520539033 12 0.0036948068520539033 21 0.00917971783481112 
		22 0.95383955880511606 23 0.029591109655964995
		5 18 0.0021897778029757848 19 0.0035545353592240881 20 0.0083049248124759008 
		21 0.063833977472216877 22 0.9221167845531073
		5 19 0.0046092921357840941 20 0.0098870642483647273 21 0.057731686500973205 
		22 0.92317911939213171 23 0.0045928377227463747
		5 18 0.00095290635677420057 19 0.0017640608987063201 20 0.005053776299358128 
		21 0.085782932628758676 22 0.90644632381640278
		5 18 0.0023131572991314828 19 0.0045984958489938242 20 0.013994864989682547 
		21 0.25487317468586923 22 0.72422030717632291
		5 19 0.0060412150284165729 20 0.013001352565245672 21 0.075000972000003066 
		22 0.90093892677647602 23 0.0050175336298586958
		5 4 0.00038943470621760921 5 0.00042014318604566335 12 0.00041364697088491271 
		22 0.96348177436535054 23 0.035295000771501314
		5 5 0.0073395038292364632 12 0.0073395038292364632 21 0.013888943628473741 
		22 0.86597434986751876 23 0.10545769884553458
		5 5 0.014257630255620385 20 0.015179283820520089 21 0.045736407909174381 
		22 0.81634698568519404 23 0.10847969232949117
		5 12 0.016612774436456139 20 0.021096177089900848 21 0.065144676215904002 
		22 0.79397789811819863 23 0.10316847413954036
		5 5 0.0015976533275725182 12 0.0015976531727705579 21 0.001510609868904892 
		22 0.9498269992329138 23 0.045467084397838274
		5 19 0.026118762800163405 20 0.047873553161262565 21 0.16470882028960096 
		22 0.69671146544543139 23 0.064587398303541668
		5 19 0.029172369629231046 20 0.054478256920628715 21 0.19299223705922353 
		22 0.66888324295743451 23 0.054473893433482135
		5 18 0.0001493668419979073 19 0.0002681546770112802 20 0.00078208495231521383 
		21 0.014932906929147362 22 0.98386748659952816
		5 5 0.0037124437105629056 12 0.0037124437105629056 21 0.0061949569535132837 
		22 0.91666013865768214 23 0.069720016967678738
		5 5 0.0037641782172454846 12 0.0037641782172454846 21 0.007685633666397575 
		22 0.93297549800832169 23 0.051810511890789675
		5 5 0.0040458161800521406 12 0.0040458161800521406 21 0.0088933404836399523 
		22 0.93972344484604264 23 0.043291582310213184;
	setAttr ".wl[300:399].w"
		5 5 0.0041641049368831961 12 0.0041641049368831961 21 0.008992603756597297 
		22 0.94115643032316587 23 0.041522756046470502
		5 18 0.00085980877122096599 19 0.0016773371368991033 20 0.0052122495138606619 
		21 0.12421242152805202 22 0.86803818304996727
		5 12 0.0057060950306680449 20 0.006660762280809425 21 0.02365684576270154 
		22 0.94185945861396714 23 0.022116838311853879
		5 19 0.0070183385641108828 20 0.013893798241923463 21 0.063780958097441859 
		22 0.89874623416249699 23 0.016560670934026748
		5 19 0.0048860738781542025 20 0.0094954043199168559 21 0.041999439328057976 
		22 0.92918150294090274 23 0.014437579532968245
		5 12 0.003873510068725273 20 0.0067051451204644865 21 0.02836857103072447 
		22 0.94891649336080586 23 0.012136280419279978
		5 5 0.0020593183348713798 12 0.0020593183348713798 21 0.0021869264617753442 
		22 0.9199155992192245 23 0.073778837649257356
		5 5 0.0042872105643139407 12 0.0042872105643139407 21 0.0060397655453561811 
		22 0.88921369286081475 23 0.096172120465201225
		5 19 0.016469393224375423 20 0.031788681077016614 21 0.1294412328882539 
		22 0.78510523523793152 23 0.037195457572422527
		5 19 0.021112897344439992 20 0.041189503152944971 21 0.16806227218510678 
		22 0.73343482808287352 23 0.036200499234634656
		5 19 0.013916533288508686 20 0.028490637848635616 21 0.13698409853081084 
		22 0.80092111948797595 23 0.019687610844068889
		5 19 0.0055371667161626835 20 0.011922049161880898 21 0.070295050677789322 
		22 0.90615779357806214 23 0.0060879398661050233
		5 19 0.0042010566075093734 20 0.0094471044243507694 21 0.064272889995626484 
		22 0.91884346628135749 23 0.0032354826911559073
		5 18 0.0010851249579482223 19 0.0018551596777443189 20 0.0047585742859808022 
		21 0.052091578971485406 22 0.94020956210684126
		5 12 0.0062451235637436958 20 0.010978182694794067 21 0.043496700677874582 
		22 0.91323224893405819 23 0.026047744129529489
		5 19 0.0083090604305347295 20 0.015688499947131517 21 0.062879377579301537 
		22 0.88202447761865344 23 0.031098584424378704
		5 12 0.012435028860836221 20 0.020228417573410613 21 0.070404979758800404 
		22 0.83468345112838727 23 0.062248122678565471
		5 12 0.0043840427024168229 20 0.008139094258902236 21 0.035182003411746814 
		22 0.94099042841809843 23 0.011304431208835819
		5 12 0.0046670013120970215 20 0.0073031496697751035 21 0.029263616047467911 
		22 0.94427734615627246 23 0.014488886814387493
		5 18 0.0027253225874971816 19 0.0044128289374964829 20 0.010371155942852902 
		21 0.079007796821872034 22 0.90348289571028151
		5 19 0.0054544839541780963 20 0.010557111379930154 21 0.045782337735977674 
		22 0.92630135351615928 23 0.011904713413754752
		5 12 0.0056102586589341199 20 0.0091268385162587857 21 0.036575551166264639 
		22 0.93355009335095285 23 0.015137258307589581
		5 12 0.0056845948691124021 20 0.0077944748679618127 21 0.029305641648668449 
		22 0.93886989613518745 23 0.018345392479069876
		5 5 0.0041024283369455548 12 0.0041024283369455548 21 0.007664758990208128 
		22 0.94775301915153043 23 0.03637736518437025
		5 19 0.0045431786021236454 20 0.009289441893821063 21 0.047482834724205565 
		22 0.93096014538722338 23 0.0077243993926263566
		5 12 0.0037049887961498559 20 0.0062876498111190705 21 0.026624287088391096 
		22 0.9524250324533432 23 0.010958041850996806
		5 4 7.7550012873156901e-05 5 7.8513900317029071e-05 12 7.6442849118707351e-05 
		22 0.98374421754772534 23 0.016023275689965789
		5 18 0.0013273321391208974 19 0.0022602924441993246 20 0.0058416250527188723 
		21 0.063427284181117052 22 0.92714346618284393
		5 12 0.0077570200485161216 20 0.011237089522306095 21 0.040238695128113552 
		22 0.89725041260565952 23 0.043516782695404606
		5 19 0.034156585675632366 20 0.069127442717349774 21 0.28115121330890142 
		22 0.5893454874329862 23 0.026219270865130238
		5 19 0.028983445615410761 20 0.055078301303350369 21 0.20311281327049441 
		22 0.66510458038787645 23 0.04772085942286787
		5 19 0.017891021571541592 20 0.035387060886474142 21 0.15189688107655699 
		22 0.76544652101457067 23 0.029378515450856603
		5 18 0.0032125858734381725 19 0.0056254978153247089 20 0.014149222130932762 
		21 0.13519215597952761 22 0.84182053820077685
		5 12 0.0052568999031513538 20 0.0056319862813980085 21 0.019442268566489829 
		22 0.94475562192756668 23 0.024913223321394125
		5 18 0.0047078136785561608 19 0.0088627095478207504 20 0.023985999956289038 
		21 0.26271110142810022 22 0.69973237538923383
		5 12 0.00677302384167827 20 0.0094208898644849125 21 0.033988599493386555 
		22 0.91230027391996271 23 0.037517212880487538
		5 19 0.022114066378035126 20 0.045860623335377805 21 0.21446150351713703 
		22 0.6971895893720732 23 0.020374217397376795
		5 5 0.0040929223884966313 12 0.0040929223884966313 21 0.0061793827611245885 
		22 0.897994115616775 23 0.087640656845107176
		5 12 0.0039092868605683732 20 0.0055697489413071687 21 0.021826963925151304 
		22 0.95438010554721142 23 0.01431389472576172
		5 12 0.0040417247108322238 20 0.0060804157930413128 21 0.024146531523581163 
		22 0.95052391567216532 23 0.015207412300380094
		5 12 0.005280702676562765 20 0.0094004591681150409 21 0.038441467210158092 
		22 0.9265505970060276 23 0.020326773939136532
		5 19 0.0072461689327087252 20 0.013834372018583715 21 0.057454168015405087 
		22 0.8966545709667626 23 0.024810720066539935
		5 19 0.014929101904362543 20 0.029202714121412388 21 0.12398203729566172 
		22 0.80101876497051527 23 0.03086738170804814
		5 12 0.0035812017283780254 20 0.0061436070977128011 21 0.026337812984473321 
		22 0.95418728767691441 23 0.0097500905125214223
		5 5 0.0046807561733063028 12 0.0046807561733063028 21 0.010708146184677447 
		22 0.92917729869387355 23 0.050753042774836402
		5 19 0.025584112197027453 20 0.050299246729552979 21 0.20365559165935371 
		22 0.68664324873582483 23 0.033817800678240979
		5 18 0.0019374675483410267 19 0.0035589224261191274 20 0.009792287232351515 
		21 0.13320325063178634 22 0.85150807216140201
		5 18 0.00089038256997384297 19 0.0016043641359187936 20 0.0044217757791529966 
		21 0.06479588398965877 22 0.92828759352529555
		5 3 6.8308248063773486e-05 4 7.1146638735865048e-05 5 6.9416225976251113e-05 
		22 0.98157352719450885 23 0.018217601692715253
		5 12 0.0050795495385601462 20 0.0064067903305569801 21 0.023050849750151148 
		22 0.93631146014107869 23 0.029151350239653144
		5 12 0.0036170444639401704 20 0.0037689343679781725 21 0.01315725219707189 
		22 0.9585379248457675 23 0.02091884412524234
		5 5 0.0034518179056411812 12 0.0034518179056411812 21 0.01145148066349674 
		22 0.96194248927581361 23 0.019702394249407403
		5 18 0.011280244446764461 19 0.019057131394758436 20 0.042374978884022411 
		21 0.23916000110953547 22 0.68812764416491923
		5 18 0.0073111072820423 19 0.012992257469915457 20 0.031725048390927414 
		21 0.24297875545677272 22 0.70499283140034219
		5 5 0.0011510400003088784 12 0.0011510400003088784 21 0.0014089802115074183 
		22 0.97075478552583361 23 0.025534154262041194
		5 12 0.0044072323985744335 20 0.005823954253781221 21 0.022012371144393195 
		22 0.95129903684201123 23 0.016457405361239984
		5 12 0.015205184506928393 20 0.024943178807263919 21 0.084473110983197611 
		22 0.8048836760336322 23 0.070494849668977899
		5 18 0.00037672595638582634 19 0.0006721191389652062 20 0.0018756193623683845 
		21 0.029882515751305041 22 0.96719301979097549
		5 19 0.020862333461938325 20 0.037934513980321626 21 0.13078182209951258 
		22 0.74088837410490405 23 0.069532956353323447
		5 19 0.025006278190675958 20 0.046345892877756083 21 0.16438732620742333 
		22 0.70465248315610196 23 0.059608019568042611
		5 18 0.01962564023210105 19 0.03329462202543023 20 0.070963002688930021 
		21 0.31615912266513901 22 0.55995761238839969
		5 18 0.01281304115935453 19 0.023610348018561073 20 0.057416287909209184 
		21 0.35532486910683442 22 0.55083545380604093
		5 12 0.010539799493551064 20 0.012313182544173094 21 0.040146169428169898 
		22 0.86983432284929929 23 0.067166525684806605
		5 5 0.0012947502773032311 12 0.0012947502773032311 21 0.0014023138026063695 
		22 0.95689701207233036 23 0.039111173570456771
		5 5 0.0020811344562296557 12 0.0020811344562296557 21 0.0033504001349652429 
		22 0.96765302442000445 23 0.024834306532571064
		5 5 0.003552391060735956 12 0.003552391060735956 21 0.0083688793910168553 
		22 0.95769716154002549 23 0.026829176947485815
		5 5 0.00088284304801715939 12 0.00088284304801715939 21 0.00092790794285181328 
		22 0.97718032372119834 23 0.020126082239915563
		5 18 0.0049840967667365054 19 0.0099492401663222093 20 0.028784518356125853 
		21 0.35183506532086367 22 0.60444707938995179
		5 5 0.003917168966902816 12 0.003917168966902816 21 0.01216703183381814 
		22 0.95807943150661601 23 0.021919198725760123
		5 5 0.003034906363443671 12 0.003034906363443671 21 0.0072626457330405361 
		22 0.96463818109317356 23 0.02202936044689862
		5 18 0.0021609071490626183 19 0.0043457871108712335 20 0.01357987536654983 
		21 0.26465218069603663 22 0.71526124967747962
		5 18 0.00058014935787015665 19 0.0011445373467925037 20 0.0036851674388864498 
		21 0.10408055129745106 22 0.89050959455899981
		5 18 9.1584006777703124e-07 19 1.6557709428129428e-06 20 5.0361063759319691e-06 
		21 0.00011950049831883588 22 0.99987289178429462
		5 3 1.5118895741440737e-05 4 1.5746513454208961e-05 5 1.5641073403151709e-05 
		22 0.99604857468777619 23 0.0039049188296250456
		5 5 0.001760775908739738 12 0.001760775908739738 21 0.0015536899422027284 
		22 0.92532561057395435 23 0.069599147666363478
		5 5 0.0045587188626000814 12 0.0045587188626000814 21 0.0056574291652482095 
		22 0.88748838238130145 23 0.097736750728250207
		5 5 0.0087267478232167135 12 0.0087267478232167135 21 0.015571306123700777 
		22 0.85750051545004202 23 0.10947468277982365
		5 5 0.015823406787024524 12 0.015823406787024524 21 0.046332713336813276 
		22 0.81017534763021537 23 0.11184512545892233
		5 12 0.018267813949494095 20 0.021438395711650692 21 0.064686939160767259 
		22 0.78856602109512142 23 0.10704083008296658
		5 12 0.019974224347890052 20 0.027650317528646745 21 0.085567378586798221 
		22 0.76906739055179729 23 0.097740688984867874
		5 12 0.021434163460841371 20 0.034664748346056429 21 0.10960047213930391 
		22 0.74517457815715804 23 0.089126037896640364
		5 19 0.027379970244949987 20 0.049551421213302436 21 0.16471687838032312 
		22 0.69063199620843863 23 0.067719733952985875
		5 19 0.030542214296245044 20 0.056490664009066764 21 0.19453595395909057 
		22 0.66302178740178175 23 0.055409380333815761
		5 5 0.0018019836670700078 12 0.0018019836670700078 21 0.0029496087708244132 
		22 0.96658399663226158 23 0.026862427262773988
		5 12 0.010681690551797416 20 0.016434332366640169 21 0.05797282848443041 
		22 0.86121648199118483 23 0.05369466660594719
		5 18 0.0010256557598121913 19 0.0017305973323018227 20 0.0043449892581776646 
		21 0.044351823294629243 22 0.94854693435507909
		5 19 0.0030128229503240418 20 0.0069354723665214285 21 0.051391727524768206 
		22 0.93675596092464675 23 0.0019040162337395745
		5 19 0.0037743984801611482 20 0.0080255309825523966 21 0.046135442782018851 
		22 0.93783646762477135 23 0.0042281601304961555
		5 5 0.0029792423974840223 12 0.0029792423974840223 21 0.0075696013913089683 
		22 0.96235607105657084 23 0.024115842757152152
		5 19 0.033233060235072602 20 0.062748993021116986 21 0.22299055301517512 
		22 0.63533519433103192 23 0.045692199397603377
		5 19 0.035269643679016707 20 0.068172162264627273 21 0.25124879629556635 
		22 0.60860676893003907 23 0.036702628830750525
		5 19 0.036084792277424074 20 0.072234807408939741 21 0.28285579060627969 
		22 0.58211588570694761 23 0.026708724000408888
		5 18 0.0022937910833664889 19 0.0038995051622786243 20 0.0095796174864653284 
		21 0.087258764415866802 22 0.8969683218520228
		5 19 0.018144099486012238 20 0.03346358845423688 21 0.12073306017537574 
		22 0.7670130163828639 23 0.060646235501511284
		5 19 0.027846679579854729 20 0.052238322472467687 21 0.1881230813815376 
		22 0.6785501079952917 23 0.053241808570848294
		5 19 0.021690483221807815 20 0.042985461069443502 21 0.18123586293957034 
		22 0.72408060529986584 23 0.030007587469312591
		5 4 8.3198129313593645e-05 5 9.5249775288821026e-05 12 9.4838044105127877e-05 
		22 0.9933675532754459 23 0.0063591607758465589
		5 5 0.0033524105735840142 12 0.0033524105735840142 21 0.008489679700035507 
		22 0.9525589264163361 23 0.032246572736460428
		5 5 0.0020986804344762106 12 0.0020986804344762106 21 0.0036012369459275792 
		22 0.96666829344809613 23 0.025533108737023844
		5 12 0.0063643203126964275 20 0.0078171668733515495 21 0.027219665057233781 
		22 0.91857080526319079 23 0.040028042493527531;
	setAttr ".wl[400:499].w"
		5 5 0.0032927462830537654 12 0.0032927462830537654 21 0.0099921207528269815 
		22 0.96492752847905561 23 0.018494858202009919
		5 12 0.0048571653609932259 20 0.0069803926884248685 21 0.026949808876573538 
		22 0.9445757889171198 23 0.016636844156888562
		5 18 0.0049572397272252483 19 0.010023249339974885 20 0.029658313092866914 
		21 0.36757642373432686 22 0.58778477410560614
		5 5 0.0010379534962938076 12 0.0010379534962938076 21 0.0011527179721024332 
		22 0.97074448467550645 23 0.026026890359803552
		5 12 0.01569297829951118 20 0.023803173145808335 21 0.078097157595960906 
		22 0.80147426554638102 23 0.080932425412338624
		5 12 0.013116814942646703 20 0.020378263250220092 21 0.070151875776265596 
		22 0.83437376319971224 23 0.061979282831155412
		5 12 0.0038071972681795671 20 0.0051951604756510584 21 0.020171663091484757 
		22 0.95734726420061167 23 0.013478714964073041
		5 5 0.0027431344766501026 12 0.0027431344766501026 21 0.0049622917919023022 
		22 0.95460882992288476 23 0.034942609331912768
		5 18 0.0045071784048778115 19 0.0079844887034764018 20 0.020013611894602438 
		21 0.18095018126116008 22 0.78654453973588334
		5 18 0.00038541599225082237 19 0.00067555201368585925 20 0.0018303203899576704 
		21 0.025898662470906622 22 0.97121004913319897
		5 5 0.0052824040918295649 12 0.0052824040918295649 21 0.01155643832266575 
		22 0.91943866573885558 23 0.058440087754819618
		5 18 0.0033430363298100523 19 0.0062160285231756211 20 0.016919354094171821 
		21 0.20405358886917557 22 0.7694679921836669
		5 19 0.03275898688433828 20 0.066599549747803355 21 0.27630608909576854 
		22 0.59859458812512456 23 0.025740786146965306
		5 19 0.031548911721984457 20 0.061134494597870945 21 0.23197322634619838 
		22 0.63591230585163616 23 0.039431061482310119
		5 18 0.011045425946385115 19 0.020352258984119968 20 0.049976350907574962 
		21 0.33897285815542694 22 0.579653106006493
		5 18 0.005007274938133105 19 0.0098925082041856783 20 0.028245038366820862 
		21 0.33842791697972202 22 0.61842726151113836
		5 18 0.01683865452285889 19 0.028965689216049986 20 0.063353516278989205 
		21 0.31096810258612717 22 0.57987403739597476
		5 12 0.0054585084960864444 20 0.0073565077168241512 21 0.027125883231423804 
		22 0.93662772672640704 23 0.023431373829258612
		5 12 0.005747262344872963 20 0.0083199078098136776 21 0.031089666213203363 
		22 0.92917089806766473 23 0.025672265564445251
		5 12 0.0053850279498304848 20 0.0067196582919589248 21 0.024367715182051226 
		22 0.94174129018395458 23 0.021786308392204693
		5 18 0.0023841514956616759 19 0.0046662322899034001 20 0.013875309243284313 
		21 0.23519200819424652 22 0.74388229877690404
		5 18 0.00098709325355818907 19 0.0018940006071469066 20 0.0057177633869756172 
		21 0.11924740080039378 22 0.87215374195192552
		5 19 0.018439687159116928 20 0.035037429025101152 21 0.13590404541995424 
		22 0.76461730356582613 23 0.046001534830001592
		5 19 0.024987366506712027 20 0.047776497017991804 21 0.18233104754332169 
		22 0.69847254287069238 23 0.046432546061282151
		5 12 0.0071899118864667466 20 0.012292835519781956 21 0.047054616208451992 
		22 0.90073644413050302 23 0.032726192254796345
		5 19 0.0092359936504750589 20 0.017228042976872304 21 0.066554802723716347 
		22 0.86860820581731579 23 0.038372954831620613
		5 18 0.0013305209488726393 19 0.0023033202342866623 20 0.0060196981149614071 
		21 0.069091505521463176 22 0.92125495518041611
		5 18 0.0029130033147123989 19 0.0047700270671397474 20 0.011244434506217869 
		21 0.086810058659187908 22 0.89426247645274215
		5 19 0.0060181111802776839 20 0.012961170628421117 21 0.075308467472735147 
		22 0.90033089281281742 23 0.0053813579057486686
		5 18 0.00034151350755178613 19 0.00062429227961270086 20 0.0018191965701607592 
		21 0.034732358423093745 22 0.96248263921958099
		5 19 0.0052382995268156806 20 0.010139426569756598 21 0.044103372987200892 
		22 0.9280678767156525 23 0.012451024200574303
		5 12 0.0052931393818464664 20 0.0087675477783847409 21 0.035378495117524035 
		22 0.9350086205846837 23 0.015552197137561173
		5 12 0.0053493587182361539 20 0.0076999262219304273 21 0.0294328147036645 
		22 0.93918284136449315 23 0.018335058991675719
		5 5 0.0050635116653291847 20 0.0053403291705235922 21 0.018188592765139636 
		22 0.94217674592481626 23 0.029230820474191344
		5 5 0.0049285411156908552 12 0.0049285411156908552 21 0.015883663250649237 
		22 0.94730360229619348 23 0.026955652221775608
		5 12 0.0053372490367172339 20 0.0061165799062065408 21 0.021174886698965455 
		22 0.93574137921474798 23 0.031629905143362877
		5 12 0.015787091744480557 20 0.020783106631920227 21 0.065216079948207509 
		22 0.8008990632078915 23 0.097314658467500231
		5 12 0.017103802367391393 20 0.025960171792937893 21 0.083471573180423461 
		22 0.78346204396038599 23 0.09000240869886128
		5 12 0.018449081582388786 20 0.03279677302991349 21 0.10811715835951226 
		22 0.75869323160962787 23 0.081943755418557696
		5 5 0.013566478621557044 20 0.014896852748380195 21 0.045476646402049688 
		22 0.82305675528310895 23 0.10300326694490414
		5 5 0.0076661845584905111 12 0.0076661845584905111 21 0.016145082716126198 
		22 0.86846563805253729 23 0.10005691011435551
		5 5 0.004603699750702077 12 0.004603699750702077 21 0.011481882090628866 
		22 0.92860677050480922 23 0.050703947903157805
		5 5 0.006079446075857098 12 0.006079446075857098 21 0.014088593763408512 
		22 0.89883207260296727 23 0.074920441481910113
		5 5 0.0042933459110066612 12 0.0042933459110066612 21 0.009685059487396978 
		22 0.94720011500141366 23 0.03452813368917608
		5 12 0.0069718007758780209 20 0.0096115983314170751 21 0.034175810962542984 
		22 0.9084719950552087 23 0.040768794874953253
		5 12 0.0086869771516432919 20 0.013136685742068438 21 0.046801467724028045 
		22 0.88257727875565839 23 0.048797590626601765
		5 5 0.00435439852808944 12 0.00435439852808944 21 0.010909850909573393 
		22 0.94012889515970544 23 0.040252456874542326
		5 5 0.004451086186897768 12 0.004451086186897768 21 0.010873457602725695 
		22 0.94217177439542765 23 0.038052595628051036
		5 12 0.014487336638632815 20 0.025379723484114193 21 0.08701823562296726 
		22 0.8013184068118977 23 0.071796297442388052
		5 5 0.0032020853265446276 12 0.0032020853265446276 21 0.0057655890276006603 
		22 0.93717627535373571 23 0.050653964965574429
		5 5 0.0020589159882654045 12 0.0020589159882654045 21 0.002652511286483823 
		22 0.93760584249051637 23 0.055623814246469103
		5 5 0.0017601848374643528 12 0.0017601848374643528 21 0.0018254065431403956 
		22 0.92712434216458728 23 0.067529881617343718
		5 5 0.0037421732402946753 12 0.0037421732402946753 21 0.0075495397336093322 
		22 0.94085154873602528 23 0.044114565049776018
		5 4 0.00014295431265867885 5 0.00014802866449355615 12 0.00014509847992551949 
		22 0.97609897048193617 23 0.023464948060986108
		5 4 0.00037715069672731932 5 0.00040922308630020175 12 0.00040386115899869376 
		22 0.96479966328661082 23 0.034010101771362967
		5 3 7.1114746467725642e-05 4 7.4128940462573492e-05 5 7.285663038579552e-05 
		22 0.98165742692706037 23 0.018124472755623566
		5 5 0.0015862847739777351 12 0.0015862847739777351 21 0.0015442433355220156 
		22 0.95008730085857873 23 0.045195886257943761
		5 5 0.0036831346326830728 12 0.0036831346326830728 21 0.006516010360482407 
		22 0.94731360635538886 23 0.038804114018762666
		5 5 0.0039146380029602438 12 0.0039146380029602438 21 0.0079079840783801928 
		22 0.94177053489889329 23 0.042492205016806082
		5 3 2.8095542137766108e-05 4 2.9200552525530836e-05 5 2.8382060595401567e-05 
		22 0.9915122783122976 23 0.008402043532443745
		5 3 6.8434725789095199e-07 4 7.095233660152809e-07 5 6.7799444285457151e-07 
		22 0.99975408924813913 23 0.00024383888679408233
		5 3 2.5559680926316946e-05 4 2.6546062907663843e-05 5 2.5639938109028128e-05 
		22 0.99192647430356029 23 0.0079957800144968092
		5 3 2.6498482077687537e-07 4 2.7448279682192026e-07 5 2.6029592262605724e-07 
		22 0.99989903821005643 23 0.00010016202640349137
		5 12 0.019649763827817968 13 0.019698843816907684 14 0.015871335780777089 
		21 0.036878392041990747 22 0.90790166453250654
		5 5 0.10451801565019445 12 0.16614719212536666 13 0.18328953597673733 
		14 0.16702333558006754 22 0.37902192066763407
		5 12 0.10783097712386124 13 0.12820981097026266 14 0.12465523955807467 
		21 0.13602193535773752 22 0.50328203699006391
		5 13 0.063047420431699544 14 0.062759346075991984 20 0.060576847735587788 
		21 0.16970340236490591 22 0.6439129833918148
		5 12 0.071381374799197067 13 0.071677375899457607 14 0.054745411802315715 
		21 0.05500144453291729 22 0.74719439296611234
		5 5 0.045097902682031538 12 0.060434038460920665 13 0.060434038460920665 
		14 0.041119061502429548 22 0.79291495889369767
		5 5 0.030412835771402469 12 0.030687622818475157 13 0.028434584140335319 
		22 0.89338298498720325 23 0.017081972282583797
		5 5 0.13454540543982899 12 0.20208994239796554 13 0.23308296695685465 
		14 0.22341250533138429 22 0.20686917987396664
		5 5 0.14678612104436409 12 0.14695975241037279 13 0.12713670697024598 
		14 0.057332157922064975 22 0.52178526165295214
		5 14 0.08827210113262432 19 0.085665573709394038 20 0.14221588421767964 
		21 0.26273898738258522 22 0.42110745355771689
		5 13 0.17874420085221215 14 0.18304907031774589 15 0.14930720031946129 
		21 0.17483114175120754 22 0.31406838675937315
		5 5 0.033540819289853467 12 0.03648646946502377 13 0.036235818125303326 
		14 0.019624605993137655 22 0.87411228712668188
		5 5 0.046312076306370423 12 0.050939304862623908 13 0.050596504160866106 
		14 0.026625303687203516 22 0.82552681098293601
		5 12 0.10620541199031899 13 0.11775390038337712 14 0.10871081515605968 
		21 0.10616082705154448 22 0.56116904541869972
		5 12 0.048404864590773575 13 0.056459079978669321 14 0.055038208840017706 
		21 0.13215454628712106 22 0.70794330030341834
		5 12 0.16741135362725793 13 0.20035448601685402 14 0.19562753684096643 
		15 0.12285166341984355 22 0.31375496009507803
		5 18 0.010671858015666048 19 0.015389110109315787 20 0.037317226861537788 
		21 0.19198435576431847 22 0.74463744924916186
		5 13 0.1489238849205009 14 0.1495196033683166 15 0.1125196246988777 
		21 0.17876027913976 22 0.41027660787254477
		5 13 0.069644379990635163 14 0.071697706941893868 20 0.10267697636074548 
		21 0.23750854224968732 22 0.51847239445703819
		5 5 0.1520674909283482 12 0.21618856425003313 13 0.23215521248305535 
		14 0.20856626111610643 22 0.19102247122245689
		5 5 0.21905648893789639 12 0.22121594274472972 13 0.20047985634855042 
		14 0.10261797032133942 22 0.25662974164748409
		5 5 0.21566177067150477 12 0.22580586273275796 13 0.21684548279822488 
		14 0.1218033673171092 22 0.21988351648040316
		5 5 0.20361199177510672 12 0.22876471863996559 13 0.22754609028394568 
		14 0.14372232305001506 22 0.19635487625096693
		5 4 0.079267138225536299 5 0.17682728402908296 12 0.17682728402908296 
		13 0.14379755922621443 22 0.42328073449008347
		5 5 0.087945649490639224 12 0.087945649490639224 13 0.062971467462408282 
		22 0.69400876721664129 23 0.067128466339672052
		5 5 0.20106145282057236 12 0.2020323150653216 13 0.17895692470063337 
		14 0.085909221276456685 22 0.33204008613701597
		5 5 0.05196160140498414 12 0.05196160140498414 13 0.039688401409730206 
		22 0.82236380018387067 23 0.034024595596430826
		5 5 0.080105723686964336 12 0.080105723686964336 13 0.057637927186887046 
		22 0.72653206085324062 23 0.055618564585943712
		5 5 0.016426401305967207 12 0.016426401305967207 13 0.011790828927087474 
		22 0.92484245288153344 23 0.030513915579444762
		5 4 0.0058255884724577661 5 0.0082908379244096761 12 0.008253844491754439 
		22 0.94209477573032852 23 0.035534953381049714
		5 4 0.00025373939052124707 5 0.00032036509590858183 12 0.00031800118841201119 
		22 0.99308254995567591 23 0.0060253443694821534
		5 5 0.0020654862897770288 12 0.0020654862897770288 13 0.0015090258762069139 
		22 0.98160914114604625 23 0.012750860398192773
		5 5 0.023817511705851651 12 0.024368563067712352 13 0.023485073668572276 
		22 0.91215437679216493 23 0.016174474765698828
		5 5 0.023010803588284993 12 0.023281714648721929 13 0.02203852213083702 
		22 0.91433884025268708 23 0.017330119379468996
		5 5 0.10539105252830132 12 0.10815205662053279 13 0.10027909503229965 
		14 0.043396128830075577 22 0.64278166698879069
		5 5 0.044733127073177184 12 0.045277585198779016 13 0.041855643636776234 
		22 0.84879224303884915 23 0.01934140105241847
		5 5 0.017730994622341414 12 0.017730994622341414 13 0.015166054957283874 
		22 0.93280333766721313 23 0.016568618130820278;
	setAttr ".wl[500:599].w"
		5 4 0.00026949966638995437 5 0.000302805685719145 12 0.0002922279177610038 
		22 0.98825653849871331 23 0.010878928231416654
		5 5 0.17272021051821995 12 0.24354377584354903 13 0.24723360141732245 
		14 0.18375417985452597 22 0.15274823236638271
		5 5 0.045209856735966621 12 0.04676614403882251 13 0.044959749675068737 
		14 0.021996161671527778 22 0.84106808787861431
		5 5 0.064379049417282758 12 0.067118633003635159 13 0.064472428388438224 
		14 0.030248111588894663 22 0.77378177760174927
		5 5 0.13108574435399553 12 0.14128139374036872 13 0.13665750424545497 
		14 0.060095411205411779 22 0.53087994645476899
		5 5 0.16705604199361127 12 0.18585726842007674 13 0.18170573797826839 
		14 0.080664441642113741 22 0.38471650996592982
		5 5 0.030655582701056488 12 0.030655582701056488 13 0.025208632153353994 
		22 0.88968290458058308 23 0.023797297863949914
		5 5 0.024253016313277486 12 0.024253016313277486 13 0.020458108445736669 
		22 0.90987579522170658 23 0.021160063706001781
		5 13 0.0064407910043372393 14 0.0060907908582434524 20 0.0097504711381449678 
		21 0.047216393730616472 22 0.93050155326865791
		5 12 0.014131867196840273 13 0.014284536958756533 14 0.01225203548173678 
		21 0.04219540311436501 22 0.91713615724830144
		5 18 0.0033747718267371656 19 0.0051321336639332006 20 0.013248103393505373 
		21 0.099830440574427901 22 0.87841455054139639
		5 18 0.013069815344424082 19 0.019854434287283222 20 0.051829570123811626 
		21 0.26351985027642966 22 0.65172632996805147
		5 12 0.012502662779186957 13 0.012694691076757846 20 0.012806048911497003 
		21 0.052546166586063245 22 0.909450430646495
		5 4 0.00044394448036712075 5 0.00050280696310370829 12 0.00049084118697191495 
		22 0.97951354027696302 23 0.019048867092594218
		5 5 0.096702760828836609 12 0.095693340404052488 13 0.064662761912355995 
		22 0.65146201951081839 23 0.091479117343936558
		5 4 0.098631035137875189 5 0.19270574570538301 12 0.19270574570538301 
		13 0.14829566958917823 22 0.36766180386218056
		5 4 0.0980451368970508 5 0.21320277146970179 12 0.21320277146970179 
		13 0.17825642553912552 22 0.29729289462442021
		5 5 0.0036869270968484889 12 0.0036869270968484889 13 0.0026387129473751953 
		22 0.96064435873742549 23 0.029343074121502433
		5 5 0.18642551058133466 12 0.23038736530455201 13 0.23071101216371037 
		14 0.16891189724864322 22 0.18356421470175971
		5 5 0.16811850549397525 12 0.22474085656291018 13 0.23066751690956275 
		14 0.19082883335557085 22 0.18564428767798097
		5 18 8.6702355663160962e-05 19 0.00014559281421260128 20 0.00041713836580922715 
		21 0.0062235007997361791 22 0.99312706566457887
		5 5 0.042378944129455295 12 0.042245927363762897 13 0.028062799983763854 
		22 0.82191252542962678 23 0.065399803093391065
		5 5 0.043817738722421597 12 0.043817738722421597 13 0.031153869337549357 
		22 0.83870999900462428 23 0.042500654212983144
		5 5 0.034785272809085867 12 0.034785272809085867 13 0.026945448398208588 
		22 0.8712999052428424 23 0.032184100740777238
		5 5 0.02944533970599858 12 0.02944533970599858 13 0.02341461189682972 
		22 0.8878202369262338 23 0.029874471764939292
		5 18 0.0037322607388911811 19 0.006041205643751075 20 0.017190342548133765 
		21 0.15318279786134456 22 0.81985339320787942
		5 5 0.024975994269451001 12 0.026329813881966098 13 0.025990851969518253 
		21 0.016018004542764776 22 0.90668533533629991
		5 5 0.077129894697684179 12 0.10453846493815992 13 0.10453846493815992 
		14 0.068901429471196318 22 0.64489174595479959
		5 5 0.053698328025099905 12 0.067419239578182744 13 0.067419239578182744 
		14 0.041192430789702084 22 0.7702707620288326
		5 5 0.028008195993027018 12 0.03303918117588623 13 0.03303918117588623 
		21 0.021027687416547005 22 0.88488575423865345
		5 4 0.0098891990040283779 5 0.012084609054748294 12 0.011563771338162374 
		22 0.88917853129919988 23 0.077283889303861084
		5 4 0.031204139675272181 5 0.041505312759310589 12 0.04028066982807138 
		22 0.79062891214727571 23 0.096380965590070172
		5 5 0.15408833144801484 12 0.2215876625483541 13 0.22236627906103451 
		14 0.152620958968542 22 0.24933676797405455
		5 5 0.14494684544695008 12 0.21587489848789751 13 0.22372170740669481 
		14 0.18081167321363956 22 0.23464487544481807
		5 5 0.1039127770563943 12 0.16224901656325361 13 0.16948271946952764 
		14 0.1411298633597512 22 0.42322562355107324
		5 12 0.035614676272478059 13 0.036433739641933569 14 0.031101980718682198 
		21 0.059091218986987708 22 0.83775838437991856
		5 12 0.014329572521785697 13 0.014923318345336539 14 0.013583760305169302 
		21 0.053152709200456831 22 0.90401063962725159
		5 13 0.0020088752268639736 19 0.0025515784587418623 20 0.0059921859971568117 
		21 0.039955752471631169 22 0.94949160784560616
		5 5 0.099029327039963477 12 0.11417830211696506 13 0.11380514308725101 
		14 0.057621868692187141 22 0.61536535906363321
		5 5 0.13369263178789942 12 0.16335655208584607 13 0.1633518985490767 
		14 0.085481930633082445 22 0.45411698694409541
		5 5 0.19594640593966653 12 0.20573445750644681 13 0.19530763859871134 
		14 0.093862530392020249 22 0.30914896756315507
		5 5 0.020989293388214932 12 0.025603843770517377 13 0.025603843770517377 
		21 0.024684257631212594 22 0.90311876143953762
		5 5 0.024315434457666315 12 0.027908140326285257 13 0.027908140326285257 
		21 0.020341276161065139 22 0.89952700872869795
		5 13 0.0047766320220349635 14 0.0045734360018222031 20 0.0096680840545165653 
		21 0.052138619395121114 22 0.92884322852650514
		5 5 0.019439727034089676 12 0.02419196025235448 13 0.02419196025235448 
		21 0.031558330978744352 22 0.90061802148245695
		5 5 0.022323766962799422 12 0.026170265891763078 13 0.026170265891763078 
		21 0.024977007887693786 22 0.90035869336598073
		5 5 0.023825069567320081 12 0.026338465570528997 13 0.026322842206697776 
		21 0.019885244264950259 22 0.90362837839050292
		5 5 0.015858715586818565 12 0.015858715586818565 13 0.013124544402930906 
		22 0.93094486831099654 23 0.024213156112435359
		5 12 0.033015723296401546 13 0.033015723296401546 14 0.024651717708547731 
		21 0.037470333462788323 22 0.87184650223586091
		5 5 0.021385065114527969 12 0.025157137389282908 13 0.025157137389282908 
		21 0.019187754547872839 22 0.90911290555903346
		5 4 0.00010833326057152235 5 0.0001080488397463057 12 0.00010033248296122018 
		22 0.988516104845788 23 0.011167180570932878
		5 18 0.0012258162256337979 19 0.0018603569197256737 20 0.0045800354496727466 
		21 0.036092441735005698 22 0.9562413496699621
		5 5 0.14879888329072646 12 0.15444912939825439 13 0.14424794325881099 
		14 0.062240933142549103 22 0.49026311090965913
		5 12 0.17136140274524142 13 0.22114334639463984 14 0.22034826066001048 
		15 0.15225112962763143 22 0.23489586057247691
		5 5 0.15722567168084736 12 0.226829167325486 13 0.23946975806735202 
		14 0.20485077928488918 22 0.17162462364142544
		5 5 0.12983503988183648 12 0.18756350067882974 13 0.19292822650764732 
		14 0.15774085966922655 22 0.33193237326245989
		5 13 0.018271147171208521 14 0.018201160393089683 20 0.033034524300149963 
		21 0.13288788381863512 22 0.79760528431691669
		5 5 0.028870594895630156 12 0.029636943466291657 13 0.028540037777027891 
		22 0.89632596236642437 23 0.016626461494625933
		5 18 0.027217908132267724 19 0.035651949564567624 20 0.075855618146134854 
		21 0.24917312438559039 22 0.6121013997714394
		5 5 0.12202881288335031 12 0.12586017768869059 13 0.11761662349314007 
		14 0.052845044583128206 22 0.58164934135169089
		5 12 0.154952755873174 13 0.1772568694515585 14 0.16988529455275231 
		21 0.1204726615117092 22 0.3774324186108059
		5 4 0.03114132550848463 5 0.043915030800401975 12 0.043096679417109894 
		22 0.79672673426401219 23 0.085120230009991346
		5 5 0.025288265715230619 12 0.027803173688752153 13 0.027709549724720634 
		21 0.015644317044668822 22 0.90355469382662779
		5 5 0.033139697621754727 12 0.036818822674873658 13 0.036709020037605296 
		14 0.020249959739560463 22 0.8730824999262059
		5 5 0.074727026436004554 12 0.086945050590910053 13 0.086881056470544227 
		14 0.046827070216100948 22 0.70461979628644023
		5 5 0.10807463217943525 12 0.13313888975750252 13 0.13313888975750252 
		14 0.074848790902982937 22 0.55079879740257676
		5 5 0.13798409533174283 12 0.1976370460670446 13 0.19882672627246084 
		14 0.14366542348471284 22 0.32188670884403892
		5 5 0.016777743725478876 12 0.01988278717736151 13 0.01988278717736151 
		21 0.018460832221989 22 0.92499584969780912
		5 5 0.061743708728308408 12 0.061743708728308408 13 0.045990852080913004 
		22 0.78165293866626051 23 0.048868791796209676
		5 5 0.13460666709349775 12 0.19797119567048735 13 0.21380707180852906 
		14 0.19292781936164752 22 0.26068724606583843
		5 18 0.0083652380209861144 19 0.0118817434530202 20 0.027998109832312195 
		21 0.14872817155274043 22 0.80302673714094108
		5 18 0.0029974448979557373 19 0.0044402823255420372 20 0.010959211551753539 
		21 0.076915711754562063 22 0.90468734947018659
		5 3 3.7985548491523457e-05 4 4.0321840940498195e-05 5 3.9154788140637455e-05 
		22 0.99328652434002329 23 0.0065960134824040876
		5 5 0.079288688334233415 12 0.081006678348634079 13 0.0752291467578209 
		14 0.033937181037417809 22 0.7305383055218938
		5 5 0.03049017975486689 12 0.030796250146650248 13 0.028503899820135261 
		22 0.89450378714759038 23 0.015705883130757197
		5 5 0.021879735239010687 12 0.022035997220445195 13 0.020390159563695994 
		22 0.92167901971453903 23 0.014015088262309204
		5 12 0.099506713243150316 13 0.12456705837649479 14 0.12402069515375491 
		21 0.1738796930120213 22 0.47802584021457872
		5 13 0.056783443714366229 14 0.057469661698758702 20 0.082115779393701169 
		21 0.21660411461448151 22 0.58702700057869239
		5 5 0.0054663464093287206 12 0.0054593541518164089 13 0.0038560759034647236 
		22 0.96030408082608265 23 0.024914142709307481
		5 5 0.024072671067042473 12 0.026014480020330161 13 0.0258541064127258 
		21 0.015251760399327564 22 0.90880698210057398
		5 5 0.19598999500334136 12 0.20444100144105234 13 0.19534152454100115 
		14 0.10436242832683158 22 0.29986505068777347
		5 18 0.00082553875779664684 19 0.0012825120060219462 20 0.0033417872166457562 
		21 0.03124445334299622 22 0.96330570867653942
		5 5 0.20413673645402361 12 0.23850696784667083 13 0.23796478357643244 
		14 0.14332849467135747 22 0.17606301745151567
		5 5 0.18263285882687527 12 0.23779219489613504 13 0.23874743004507554 
		14 0.17307868168903093 22 0.16774883454288325
		5 5 0.003370778916804042 12 0.003370778916804042 13 0.0024460621363594495 
		22 0.9605447891112594 23 0.030267590918773023
		5 4 0.00042655756326478636 5 0.00047927170598263707 12 0.00046898891873082226 
		22 0.97786710183776593 23 0.020758079974255782
		5 4 0.065738076153868938 5 0.15282378310825626 12 0.15282378310825626 
		13 0.13018012746209509 22 0.49843423016752353
		5 4 0.0045818386032055311 5 0.0059823510306719124 12 0.0058880828586433875 
		22 0.94424977497204909 23 0.039297952535430142
		5 5 0.0078506231547105197 12 0.0078506231547105197 13 0.0061399606106145432 
		22 0.96132155955950815 23 0.0168372335204563
		5 5 0.017738369683910991 12 0.017738369683910991 13 0.015213149327499944 
		22 0.93096103941846509 23 0.018349071886213094
		5 18 0.034642473070944688 19 0.047572570145068348 20 0.10726248989204949 
		21 0.30720621423621441 22 0.503316252655723
		5 5 0.020431204135428434 12 0.020557179814742726 13 0.019064706195447936 
		22 0.92510361574320477 23 0.014843294111176063
		5 5 0.014208651300076291 12 0.014208651300076291 13 0.012300631432415308 
		22 0.94428377304195343 23 0.014998292925478765
		5 5 0.016883644407393341 12 0.020753227287155798 13 0.020753227287155798 
		21 0.031373140380707154 22 0.91023676063758785
		5 5 0.019437238132728851 12 0.02260034213797936 13 0.02260034213797936 
		21 0.024936541861355129 22 0.91042553572995732
		5 5 0.020817637967171333 12 0.022899866717375417 13 0.022889156048288839 
		21 0.019797288596364052 22 0.91359605067080041
		5 5 0.021895247902506923 12 0.022995386044997575 13 0.022710976593445373 
		21 0.015846913344008826 22 0.91655147611504129
		5 5 0.020707376297476428 12 0.021150774507800913 13 0.020424572423899678 
		22 0.92161560908752782 23 0.016101667683295143
		5 5 0.019997640862847294 12 0.020224427422340992 13 0.019222006958333274 
		22 0.92340190151267998 23 0.017154023243798396
		5 5 0.011299556240245172 12 0.011299556240245172 13 0.0083177432211648684 
		22 0.94639649306447038 23 0.022686651233874453;
	setAttr ".wl[600:699].w"
		5 5 0.16989696467203932 12 0.17657377260902232 13 0.16704267987875415 
		14 0.081677779159302633 22 0.40480880368088162
		5 13 0.0023206535434083953 19 0.0025586693804862995 20 0.0058256899759371074 
		21 0.036002163936812694 22 0.95329282316335551
		5 12 0.0059340681446598568 13 0.0061888100911109984 20 0.0081845819270416533 
		21 0.038514088054219263 22 0.94117845178296833
		5 12 0.012592174437841214 13 0.012656314609146917 14 0.010571352033694269 
		21 0.033770259759665106 22 0.93040989915965255
		5 5 0.02114301549499624 12 0.02114301549499624 13 0.017741619237183141 
		22 0.92179871031689076 23 0.018173639455933612
		5 5 0.014135216836116717 12 0.014135216836116717 13 0.011825574373034584 
		22 0.93546066219326862 23 0.024443329761463298
		5 18 2.1339052432923719e-05 19 3.6296809794252907e-05 20 0.00010413589804568377 
		21 0.0016782813996933767 22 0.99815994684003373
		5 18 0.00090265843214467874 19 0.0013969910800822501 20 0.0034846131857347393 
		21 0.029643740405476394 22 0.96457199689656203
		5 13 0.0036000773302520207 19 0.0036247476195748092 20 0.0079813098008017381 
		21 0.045619262005025626 22 0.93917460324434576
		5 12 0.010420904304993543 13 0.010540749193720769 20 0.011853166880194379 
		21 0.050473893978586516 22 0.91671128564250481
		5 13 0.01047969258737856 14 0.010267779288507046 20 0.017818587459772706 
		21 0.081392213823157214 22 0.88004172684118442
		5 3 5.0484608704020287e-06 4 5.257270882012894e-06 5 4.9442405034945488e-06 
		22 0.99848371999011132 23 0.001501030037632871
		5 5 0.20047815951204384 12 0.25065765503844772 13 0.25062824760514685 
		14 0.13757485978911743 22 0.16066107805524424
		5 5 0.16813593908742333 12 0.2301860584492475 13 0.23623203969886278 
		14 0.19134349624097041 22 0.17410246652349604
		5 5 0.12766600119239671 12 0.18377783196168979 13 0.193914989316159 
		14 0.17072554029824361 22 0.32391563723151096
		5 4 9.2693705461782268e-05 5 0.00010869176242762298 12 0.00010667362293039653 
		22 0.99614435937986467 23 0.0035475815293155204
		5 5 0.038301815246791167 12 0.038301815246791167 13 0.030031497627486047 
		22 0.86513316658929684 23 0.02823170528963476
		5 5 0.010029864996176278 12 0.010029864996176278 13 0.0077529860642844284 
		22 0.95370085492574375 23 0.018486429017619321
		5 5 0.11268833943095145 12 0.113548950418653 13 0.10123919188701218 
		14 0.044081661512494229 22 0.62844185675088915
		5 5 0.015987746330559313 12 0.016064720903069516 13 0.014850663783073283 
		22 0.9405853238794265 23 0.01251154510387137
		5 5 0.026339628149158835 12 0.029279712385915459 13 0.029251963655898786 
		21 0.018665368922769238 22 0.89646332688625774
		5 4 0.0032158006492565795 5 0.0043733334231992448 12 0.0043484843538829088 
		22 0.96153563678271559 23 0.026526744790945602
		5 5 0.20834296605513281 12 0.21221267780812761 13 0.19543885196715011 
		14 0.098183200673362864 22 0.28582230349622667
		5 5 0.17611820877600148 12 0.18220885262297457 13 0.17309923923427878 
		14 0.091541264936415748 22 0.3770324344303293
		5 5 0.019941521112848564 12 0.02177809783194453 13 0.021704423130990389 
		21 0.014040457176598327 22 0.92253550074761814
		5 5 0.017227120216045649 12 0.017227120216045649 13 0.013034410369527967 
		22 0.92622805262790908 23 0.026283296570471657
		5 13 0.031184589115983409 14 0.031301311391972522 20 0.051306252732422682 
		21 0.1738793086936728 22 0.71232853806594865
		5 18 0.00090196040100713564 19 0.0013671748965278919 20 0.0034267416509876948 
		21 0.028662320054983537 22 0.96564180299649371
		5 5 0.068054814131101857 12 0.068054814131101857 13 0.050370973720157329 
		22 0.75644926177716321 23 0.057070136240475827
		5 3 2.8588675801535106e-05 4 2.9962888314320094e-05 5 2.8597839115440154e-05 
		22 0.99355538873268878 23 0.0063574618640798598
		5 18 0.017053212756667352 19 0.023131105763287502 20 0.051486345729022436 
		21 0.20879510495731088 22 0.6995342307937118
		5 12 0.1734943435465954 13 0.224755441406049 14 0.22358195480568399 
		15 0.14984915386214373 22 0.22831910637952793
		5 5 0.14009017699297166 12 0.21052845078159191 13 0.23618657121023665 
		14 0.22007331002374356 22 0.19312149099145626
		5 13 0.081911303447225581 14 0.088186447601889664 20 0.13577358599989189 
		21 0.25913831669023413 22 0.43499034626075872
		5 18 0.034194133898855575 19 0.046214553884727144 20 0.10274561000187607 
		21 0.29769070623422933 22 0.5191549959803119
		5 13 0.17795139118063752 14 0.18208655004739707 15 0.1467068627745631 
		21 0.17316966888775337 22 0.32008552710964899
		5 5 0.044126896637075051 12 0.047325731383461231 13 0.046691266707227889 
		14 0.024228393666755013 22 0.83762771160548088
		5 5 0.062875966347374815 12 0.068241293083109666 13 0.067316563656006981 
		14 0.033565742054024031 22 0.76800043485948455
		5 5 0.030623171711149467 12 0.032532325678539413 13 0.032121286436272489 
		14 0.017397476244825339 22 0.88732573992921326
		5 5 0.12421371549306631 12 0.14082871334030439 13 0.13946639985214379 
		14 0.065581443170807843 22 0.52990972814367765
		5 18 0.012675000776811047 19 0.018842581194004115 20 0.047979583538777952 
		21 0.24180323644084006 22 0.67869959804956681
		5 18 0.003756434342923947 19 0.005939619347235082 20 0.016363024913489375 
		21 0.13609376936415421 22 0.8378471520321974
		5 5 0.17113373152419956 12 0.24751898135651021 13 0.24784682035807082 
		14 0.15817775399259157 22 0.17532271276862771
		5 5 0.15866778348229149 12 0.24259993989406567 13 0.25249737628846108 
		14 0.19819361049420334 22 0.14804128984097845
		5 5 0.15904764495939308 12 0.19115675330226603 13 0.19072468375309498 
		14 0.091442370980600735 22 0.36762854700464515
		5 13 0.0019415406883512144 19 0.0028388809039144119 20 0.0068762830999313995 
		21 0.049064700925315591 22 0.93927859438248729
		5 13 0.0076254932645303392 14 0.0073207569327149204 20 0.013056251964298791 
		21 0.063643474323729327 22 0.90835402351472661
		5 12 0.01694312836136589 13 0.017244766984547716 14 0.015136248237029134 
		21 0.055227210853175501 22 0.89544864556388182
		5 18 0.0006368905536271066 19 0.0010295975696260889 20 0.0028515167384686076 
		21 0.03243833570635845 22 0.96304365943191983
		5 5 0.024057663449447649 12 0.03005507458304621 13 0.03005507458304621 
		21 0.0309711968270759 22 0.8848609905573841
		5 5 0.027200862812201045 12 0.031924467714624573 13 0.031924467714624573 
		21 0.024564311452985033 22 0.8843858903055648
		5 5 0.029062205590625945 12 0.03234583209754275 13 0.032319402183297125 
		21 0.020322284199492266 22 0.88595027592904196
		5 5 0.042058860690805833 12 0.042565280333201699 13 0.039568028790803636 
		22 0.85539267591065948 23 0.02041515427452938
		5 5 0.027656153067560082 12 0.027914757391178709 13 0.02609239093271307 
		22 0.90016841293631766 23 0.018168285672230548
		5 5 0.061393133556729963 12 0.062384358053262916 13 0.057818792613997194 
		14 0.025990312261441443 22 0.79241340351456846
		5 4 0.092667657562840733 5 0.21793059055176631 12 0.21796525269519795 
		13 0.1844818669829871 22 0.2869546322072079
		5 5 0.22107928737710644 12 0.22430899738005522 13 0.20429257483774438 
		14 0.10153596177783684 22 0.24878317862725718
		5 5 0.21540257680664571 12 0.2284196772027936 13 0.22078951652464804 
		14 0.12220425752656759 22 0.21318397193934507
		5 4 0.094579615245192233 5 0.19815200060772115 12 0.19815200060772115 
		13 0.15301959232733095 22 0.35609679121203458
		5 5 0.11641520374664124 12 0.11606057787122084 13 0.079240910952410648 
		22 0.60783014849016459 23 0.080453158939562813
		5 5 0.066505388886623551 12 0.066505388886623551 13 0.049217396453529884 
		22 0.77770567393730772 23 0.040066151835915359
		5 5 0.09898797447982563 12 0.09898797447982563 13 0.068762982510077078 
		22 0.67235734479808729 23 0.06090372373218441
		5 5 0.022782077960588128 12 0.022782077960588128 13 0.019183809053347715 
		22 0.91166311278263068 23 0.023588922242845374
		5 5 0.13081960978651072 12 0.1352483770112772 13 0.12573341919818753 
		14 0.052509884896496863 22 0.55568870910752777
		5 5 0.17256379328312871 12 0.18092728685548803 13 0.1694694348909758 
		14 0.070372258648671679 22 0.40666722632173574
		5 5 0.041145487053094926 12 0.041145487053094926 13 0.033057374485615292 
		22 0.85495719054193742 23 0.029694460866257408
		5 5 0.032921252229239549 12 0.032921252229239549 13 0.027238215523689196 
		22 0.87980988662696924 23 0.027109393390862598
		5 5 0.22106061004895136 12 0.23716014466189286 13 0.22686338882249762 
		14 0.1059371157909392 22 0.20897874067571889
		5 5 0.030851564503865597 12 0.030851564503865597 13 0.021650972646021512 
		22 0.87484756856690338 23 0.041798329779343973
		5 4 0.010383388419150466 5 0.014706473291634095 12 0.014566964511775049 
		22 0.90799176040800411 23 0.052351413369436335
		5 4 0.0076775322265959824 5 0.0093653525957095064 12 0.0089749688097823192 
		22 0.90519705309648335 23 0.068785093271428899
		5 5 0.029600693959720016 12 0.029600693959720016 13 0.022485508287672408 
		22 0.88533954816278648 23 0.03297355563010098
		5 4 0.00022103431880881534 5 0.00022726752308974564 12 0.00021296145832124899 
		22 0.98340930667072213 23 0.015929430029058125
		5 4 0.00047376667989007212 5 0.00053870821631364608 12 0.00052519753803272821 
		22 0.9795031741891278 23 0.01895915337663585
		5 3 4.5946035613081952e-05 4 4.9035809049154312e-05 5 4.7916698044753578e-05 
		22 0.99262115118096306 23 0.0072359502763299595
		5 5 0.0039888212421486813 12 0.0039888212421486813 13 0.0028393951631241745 
		22 0.95948652657834166 23 0.029696435774236696
		5 5 0.016132287002963049 12 0.016132287002963049 13 0.012858717640847613 
		22 0.92835850696627742 23 0.026518201386948891
		5 5 0.026588462116313754 12 0.026588462116313754 13 0.020744588772146126 
		22 0.89532655128763949 23 0.03075193570758681
		5 3 1.3405484454226304e-05 4 1.4200731241727534e-05 5 1.3678839865379703e-05 
		22 0.99724144203696774 23 0.0027172729074710217
		5 3 9.81278138023051e-06 4 1.0352201350218013e-05 5 9.9204083517680186e-06 
		22 0.99779825098275832 23 0.0021716636261594892
		5 12 0.00575573727964678 13 0.00575573727964678 20 0.0072338169915629061 
		21 0.032336906131738945 22 0.94891780231740464
		5 19 0.019827787449004684 20 0.039778367246546688 21 0.17206926622621821 
		22 0.75004619906738734 23 0.018278380010843042
		5 18 0.010599165921489269 19 0.016893515720412578 20 0.036094502161274231 
		21 0.18381119070518517 22 0.75260162549163878
		5 18 0.0071994958472816417 19 0.011915650655058894 20 0.027521685071154704 
		21 0.17675675761179876 22 0.77660641081470594
		5 12 0.0086013320221813225 13 0.0086013320221813225 20 0.013036683198092676 
		21 0.056178041822537238 22 0.91358261093500748
		5 12 0.0087234239890593753 13 0.0087234239890593753 20 0.0096849394359025693 
		21 0.038587597140579716 22 0.93428061544539887
		5 5 0.010294124360672563 12 0.010366792018999963 13 0.009941094878106611 
		22 0.95345927289638499 23 0.015938715845835918
		5 19 0.035180720882609789 20 0.067530944516730168 21 0.24490684912631974 
		22 0.61645299866002112 23 0.035928486814319247
		5 5 0.01207908437942299 12 0.012102315224773185 21 0.033748686495442229 
		22 0.88957251693343831 23 0.05249739696692339
		5 18 0.012781253586522656 19 0.023238614069421137 20 0.056237649509177354 
		21 0.34284444425709393 22 0.56489803857778487
		5 18 0.019334286599657548 19 0.032619919468190116 20 0.069687785735872657 
		21 0.31113593771610615 22 0.56722207048017359
		5 12 0.012265926018114347 13 0.012230473129359829 21 0.017029513097976134 
		22 0.94652694104683011 23 0.011947146707719554
		5 12 0.012038349108409728 13 0.012014722940225066 21 0.019983515124584152 
		22 0.94246037035586649 23 0.01350304247091463
		5 12 0.0094575828892269967 19 0.01333240528040548 20 0.027719457947964547 
		21 0.13507357158401845 22 0.81441698229838455
		5 18 0.0060844625111891679 19 0.0096766880828980228 20 0.0216480577894726 
		21 0.13010050607230525 22 0.83249028554413496
		5 19 0.027908066435561291 20 0.056478359131667877 21 0.23757691274622936 
		22 0.65660751650200178 23 0.021429145184539661
		5 18 0.0021527383226949458 19 0.0039764967523605761 20 0.011304606499197374 
		21 0.155945261087021 22 0.82662089733872612
		5 18 0.014781896918227811 19 0.024647404420395157 20 0.053568818639453834 
		21 0.2665216557994261 22 0.64048022422249706
		5 18 0.0097894771901685853 19 0.017265249468344467 20 0.041611310679486667 
		21 0.27805624318125077 22 0.65327771948074953
		5 19 0.033037834205324371 20 0.061922432519358916 21 0.2164469547618843 
		22 0.64384418262507015 23 0.044748595888362282;
	setAttr ".wl[700:799].w"
		5 12 0.021142242320144902 20 0.027341802661244991 21 0.083916429800891257 
		22 0.77519128275213878 23 0.092408242465580118
		5 12 0.02265818400184547 20 0.03413620683292054 21 0.10699224891139091 
		22 0.75205346401495876 23 0.084159896238884258
		5 12 0.023492333652924371 20 0.041282773429915584 21 0.13280759917716248 
		22 0.72915869184145887 23 0.07325860189853875
		5 5 0.014829116151008133 12 0.014829330205889094 21 0.041488557264874069 
		22 0.84896145646497656 23 0.079891539913252166
		5 5 0.0078126860006820439 12 0.0078126860006820439 21 0.012665898723032329 
		22 0.90214185944111969 23 0.069566869834483958
		5 12 0.017702576004972541 20 0.020000561331016836 21 0.06225235563971708 
		22 0.82143525760476233 23 0.078609249419531124
		5 5 0.0070239274340336026 12 0.0070239274340336026 21 0.007885696313386684 
		22 0.94635594100437881 23 0.031710507814167364
		5 5 0.0074766575527923842 12 0.0074766575527923842 21 0.011115726750989704 
		22 0.9178169883829439 23 0.056113969760481698
		5 5 0.0036581091468652965 12 0.0036581091468652965 13 0.0030890509864909175 
		22 0.96353843959501606 23 0.026056291124762338
		5 5 0.0018554050665044758 12 0.0018554050665044758 13 0.0015316560654494958 
		22 0.96534391013990994 23 0.02941362366163169
		5 4 0.00012891280360832879 5 0.00016466002119190079 12 0.000164650775969352 
		22 0.99483797589032208 23 0.0047038005089083609
		5 5 0.018107153298276748 12 0.018489313654018961 13 0.01791757143900297 
		22 0.92953464992645773 23 0.015951311682243612
		5 5 0.017496542365644935 12 0.017687584751720248 13 0.016875057389568012 
		22 0.93085762037374853 23 0.017083195119318197
		5 5 0.011656179870014893 12 0.011799688713683061 21 0.023137285744005275 
		22 0.92558402923965166 23 0.027822816432644965
		5 5 0.010266490394898731 12 0.010351850247458357 21 0.012070428268089212 
		22 0.94908654835593576 23 0.018224682733618016
		5 5 0.006484982389320439 12 0.006484982389320439 13 0.0058929733229664012 
		22 0.96622071512297603 23 0.014916346775416619
		5 4 0.00011568091925632353 5 0.00013281643164860633 12 0.00013207890604318193 
		22 0.99137572317414546 23 0.0082437005689064927
		5 19 0.027124940747748585 20 0.049471867978799135 21 0.16708872635890801 
		22 0.70601370594512247 23 0.050300758969421752
		5 12 0.01546481701851804 13 0.015161933514436432 21 0.015945640960592446 
		22 0.93515736564182073 23 0.018270242864632382
		5 12 0.014939030666755461 13 0.014715713238973084 21 0.019132700221978577 
		22 0.93063490200546706 23 0.020577653866825907
		5 12 0.015563486678886971 13 0.015476178050913423 21 0.033849956478528009 
		22 0.90590533402675122 23 0.029205044764920415
		5 12 0.017203287941467249 13 0.017167457135790671 21 0.049093265401948701 
		22 0.88046089386753701 23 0.036075095653256409
		5 5 0.0080729379863081728 12 0.0080729379863081728 13 0.0073017760968989666 
		22 0.95470255582332464 23 0.021849792107160107
		5 5 0.0087841620908197353 12 0.0087841620908197353 13 0.0079278997639350181 
		22 0.95486986964651122 23 0.019633906407914264
		5 13 0.0024425554716575046 19 0.0028247305698764435 20 0.0062896318670596588 
		21 0.038967124299470482 22 0.94947595779193594
		5 12 0.0060402198067529937 13 0.0060449092961978972 20 0.0082363489009030909 
		21 0.038061688345706307 22 0.9416168336504398
		5 18 0.00071340209370742487 19 0.0012866473150416188 20 0.0036889082269839879 
		21 0.058560959262573778 22 0.93575008310169316
		5 18 0.0022756844209477255 19 0.0044695827919595818 20 0.013696811793006596 
		21 0.23779412278205028 22 0.74176379821203586
		5 12 0.0092147611933671731 13 0.0092950752305010348 20 0.011600359264245364 
		21 0.050914379079899291 22 0.91897542523198716
		5 4 0.00035656130325546444 5 0.0004060728741044486 12 0.00039999535893361324 
		22 0.9807660924773165 23 0.018071277986389866
		5 5 0.0087503530780082828 12 0.0087503530780082828 21 0.013268515056845143 
		22 0.86821056211370407 23 0.10102021667343418
		5 5 0.016753014071345232 12 0.016753014071345232 21 0.044608852706053151 
		22 0.8165208341628758 23 0.1053642849883805
		5 12 0.019425017188173268 20 0.021329090260907971 21 0.063898273125423163 
		22 0.7947729618603897 23 0.10057465756510586
		5 5 0.0028717546452503217 12 0.0028717546452503217 13 0.0021243187345195906 
		22 0.96380987773371385 23 0.028322294241265856
		5 19 0.027336535532691532 20 0.049334290387018177 21 0.1628812582146146 
		22 0.69751530692445129 23 0.062932608941224474
		5 19 0.030546480076664558 20 0.056204638329818993 21 0.19110214120570898 
		22 0.66905953126438034 23 0.053087209123427202
		5 18 2.0346086604994475e-05 19 3.5435844128867082e-05 20 0.0001036750106337244 
		21 0.0018733691718394792 22 0.9979671738867929
		5 5 0.0052938148932580118 12 0.0052938148932580118 21 0.0052918005048379268 
		22 0.92385239512883 23 0.060268174579816078
		5 5 0.0070259099628986856 12 0.0070259099628986856 13 0.0061087543107636068 
		22 0.94010662653818755 23 0.039732799225251525
		5 5 0.0096053037589557133 12 0.0096053037589557133 13 0.0083898037139634347 
		22 0.94191416150638607 23 0.030485427261739053
		5 5 0.010809043467095734 12 0.010809043467095734 13 0.0093990558631194977 
		22 0.94048050569001207 23 0.028502351512676945
		5 18 0.00067352303960762131 19 0.0012941060682474671 20 0.0040609620993468957 
		21 0.094222065137902836 22 0.89974934365489523
		5 5 0.019192546146265765 12 0.020130320303044191 13 0.019913733438502848 
		21 0.015960066350078465 22 0.92480333376210866
		5 12 0.010487813535012259 20 0.013567460842348771 21 0.053423613118448829 
		22 0.90960019387985125 23 0.01292091862433882
		5 12 0.0090324794141543041 13 0.0090324794141543041 21 0.032545414363063373 
		22 0.93894932420772581 23 0.010440302600902132
		5 5 0.0078431681244938208 12 0.0086528480044728556 13 0.0086528480044728556 
		21 0.019599295160531771 22 0.95525184070602864
		5 5 0.0023662195191109271 12 0.0023662195191109271 21 0.001973135159170092 
		22 0.92570952613361202 23 0.067584899668996098
		5 5 0.0051026604701364586 12 0.0051026604701364586 21 0.0056462662714278251 
		22 0.89346537630701628 23 0.090683036481283036
		5 12 0.018893925376611651 20 0.033829707209844295 21 0.12265345818655707 
		22 0.79105514939632071 23 0.03356775983066624
		5 19 0.023152417775878335 20 0.043780060539712215 21 0.16289682762398749 
		22 0.73648376375166347 23 0.033686930308758412
		5 19 0.015377240455766345 20 0.030233819422230492 21 0.12762437946174079 
		22 0.80962281756911048 23 0.017141743091151899
		5 12 0.0059352573139525829 13 0.0059352573139525829 20 0.010900876272050219 
		21 0.052999432161344617 22 0.92422917693869999
		5 13 0.0035516013351449922 19 0.0036756034723296506 20 0.0078543619804593481 
		21 0.043681486449328163 22 0.94123694676273784
		5 18 0.00069406072838228822 19 0.001116303350831705 20 0.0028024372300367887 
		21 0.026307893281348818 22 0.96907930540940035
		5 12 0.012915672055186801 13 0.012914217288039952 21 0.035399073475074788 
		22 0.91868257026929689 23 0.020088466912401414
		5 12 0.015010654343887528 20 0.015723547510737561 21 0.054670447808827405 
		22 0.88894692138831355 23 0.025648428948233964
		5 12 0.017640985332441548 20 0.02063822882012056 21 0.066762326984525749 
		22 0.8371665616060161 23 0.057791897256896117
		5 5 0.010305838627120823 12 0.011936789327066901 13 0.011936789327066901 
		21 0.023693881185197409 22 0.94212670153354794
		5 5 0.012066111401200456 12 0.013378750499997892 13 0.013378750499997892 
		21 0.019762469608966278 22 0.94141391798983742
		5 13 0.0034060867063310097 19 0.0037233777426029248 20 0.008278410646377958 
		21 0.048884579922412782 22 0.93570754498227526
		5 5 0.01473526129197471 12 0.017879751362154018 13 0.017879751362154018 
		21 0.031225954611034109 22 0.91827928137268311
		5 5 0.016973349980371179 12 0.019546313688357773 13 0.019546313688357773 
		21 0.024811437346123656 22 0.91912258529678958
		5 5 0.018291876714721891 12 0.020014019909818138 13 0.020006027995548605 
		21 0.019789633220361525 22 0.92189844215954986
		5 5 0.012055163857217542 12 0.012055163857217542 13 0.010212590058046664 
		22 0.941942770013937 23 0.023734312213581285
		5 12 0.0070204720066731055 13 0.0070204720066731055 20 0.0080371403531840392 
		21 0.033818910757006382 22 0.94410300487646337
		5 5 0.0076816559132347811 12 0.0085543256471002083 13 0.0085543256471002083 
		21 0.01777979594323818 22 0.95742989684932656
		5 4 4.9106725617175599e-05 5 5.0125426655953933e-05 12 4.8778638123411093e-05 
		22 0.99154984156362791 23 0.0083021476459756421
		5 18 0.00086012672611434726 19 0.001355683806146771 20 0.0034178271363343236 
		21 0.030669825252529797 22 0.9636965370788747
		5 12 0.013760773742375358 13 0.013608107270301054 21 0.035010227198825038 
		22 0.90090182073057967 23 0.036719071057918794
		5 19 0.036099901794734192 20 0.071986070686912498 21 0.27858562465897169 
		22 0.58796973635121808 23 0.025358666508163562
		5 19 0.031082836863908163 20 0.057779663255518733 21 0.20010273643531029 
		22 0.66521134014324723 23 0.045823423302015637
		5 19 0.019270517560701136 20 0.037112072203859134 21 0.14688158526241452 
		22 0.76938605368337798 23 0.02734977128964728
		5 18 0.0032780626592921118 19 0.0054640602961332921 20 0.013433984023390168 
		21 0.11051272323439999 22 0.86731116978678446
		5 5 0.01636139958893337 12 0.016718711370397436 13 0.016276001008413494 
		22 0.9344348760632224 23 0.016209011969033342
		5 18 0.0050294354703781432 19 0.0092750456105648305 20 0.024955325222224458 
		21 0.25012902216502281 22 0.71061117153180975
		5 12 0.011362745931656105 13 0.01122122716120284 21 0.029363439030510839 
		22 0.91654045207009338 23 0.031512135806536987
		5 19 0.023502649491527108 20 0.04788776370836257 21 0.21063556143099271 
		22 0.69861606267774401 23 0.019357962691373562
		5 5 0.005283040997363625 12 0.005283040997363625 21 0.0055781350808589564 
		22 0.90385162041001432 23 0.080004162514399457
		5 12 0.0092916927441422797 13 0.0092802741203100361 21 0.014706289469332143 
		22 0.95762417172436953 23 0.0090975719418459923
		5 12 0.0090853105837135038 13 0.0090788725662386046 21 0.016858723516400755 
		22 0.95495726206935028 23 0.01001983126429694
		5 12 0.010224085855136216 13 0.010224085855136216 21 0.030705556591535739 
		22 0.93347051253237012 23 0.01537575916582163
		5 12 0.012187599318219392 20 0.013628575624865951 21 0.049518970311059278 
		22 0.90437827171516783 23 0.020286583030687508
		5 19 0.016349890494101672 20 0.030802934917137731 21 0.1171719077140933 
		22 0.80789262649546212 23 0.027782640379205224
		5 5 0.0074584835979415133 12 0.0084328094669520182 13 0.0084328094669520182 
		21 0.017148751513069622 22 0.95852714595508492
		5 5 0.0061191699429145362 12 0.0061191699429145362 21 0.0095887987051397217 
		22 0.93275422738888003 23 0.045418634020151234
		5 19 0.027155342561360166 20 0.052417352287476619 21 0.20062104226380642 
		22 0.68734152195291931 23 0.03246474093443754
		5 18 0.0018029494083169476 19 0.0032302995774718024 20 0.00885106037619879 
		21 0.11136362357096947 22 0.874752067067043
		5 18 0.00066172019742250171 19 0.0011596533741510184 20 0.0031833243745730123 
		21 0.043369221047802858 22 0.95162608100605062
		5 3 2.9395238161257936e-05 4 3.0889855833082092e-05 5 3.0221454425228052e-05 
		22 0.99404250872908639 23 0.0058669847224939904
		5 5 0.0091067238074272992 12 0.0092081971120870579 21 0.018484047235997881 
		22 0.94050953558370687 23 0.022691496260780892
		5 5 0.0075279452217453463 12 0.0075829669987044161 21 0.0090760998990769941 
		22 0.96180369335429461 23 0.014009294526178571
		5 5 0.0076388012870682734 12 0.0076834557144122087 21 0.0075652100433884041 
		22 0.96446306732392173 23 0.012649465631209356
		5 18 0.012294534599829789 19 0.020326698642130433 20 0.044446696776794928 
		21 0.23367320475695202 22 0.6892588652242928
		5 18 0.0079486365812754499 19 0.013815312872940242 20 0.033279996068135441 
		21 0.23466222041965085 22 0.71029383405799795
		5 5 0.0013217673202948182 12 0.0013217673202948182 13 0.0010998270768213122 
		22 0.97622022974950318 23 0.020036408533085758
		5 5 0.011393776102172492 12 0.012077446098777662 13 0.012036164788085687 
		21 0.014730606986837239 22 0.94976200602412686
		5 12 0.018621403666546684 20 0.025381636236749598 21 0.082308392368262137 
		22 0.80586425974665177 23 0.067824307981789761
		5 18 0.00017148795883588128 19 0.00029665011939310871 20 0.00082564572825390896 
		21 0.012262414183601441 22 0.98644380200991566
		5 12 0.023616821190544653 20 0.039492648906966354 21 0.12777990459879601 
		22 0.74260010409504262 23 0.066510521208650281
		5 19 0.026761830217625772 20 0.048464723083877739 21 0.16151714622989949 
		22 0.70602447068529528 23 0.057231829783301554;
	setAttr ".wl[800:899].w"
		5 5 0.012879557612773858 12 0.012889016726910977 21 0.038554079824298468 
		22 0.87168161168816582 23 0.063995734147850827
		5 5 0.0014727237267718762 12 0.0014727237267718762 13 0.0012076849896640578 
		22 0.96269875410435235 23 0.033148113452439815
		5 5 0.0038692102900084362 12 0.0038692102900084362 13 0.0032301166695820564 
		22 0.9737996737931095 23 0.015231788957291612
		5 5 0.0087748376738580099 12 0.0087748376738580099 13 0.0078712209455604198 
		22 0.95735239493869995 23 0.017226708768023465
		5 5 0.0011015757451501866 12 0.0011015757451501866 13 0.00086080330611648138 
		22 0.98583778340106676 23 0.011098261802516456
		5 18 0.0053131572958918499 19 0.010482278927482037 20 0.030375800647431707 
		21 0.3444336784428913 22 0.60939508468630321
		5 5 0.010019590358574684 12 0.010073887508002428 13 0.0095677192497974229 
		22 0.95638585780414909 23 0.013952945079476481
		5 5 0.0067512721181329808 12 0.0067512721181329808 13 0.0061048653006946941 
		22 0.96660636655737886 23 0.013786223905660533
		5 5 0.0026376397812259934 12 0.0026376397812259934 13 0.0022420167142796544 
		22 0.97388015516683046 23 0.01860254855643793
		5 12 0.014778245677375875 20 0.016577155064955919 21 0.054647679760327347 
		22 0.86435820843977729 23 0.049638711057563623
		5 18 0.00066465493037083786 19 0.0010576344666197353 20 0.002593724516672522 
		21 0.022880788927476907 22 0.9728031971588601
		5 13 0.0021114660817592242 19 0.0022885224103588722 20 0.0050283112951135548 
		21 0.030569059322368589 22 0.96000264089039977
		5 12 0.0048319633437471591 13 0.0048319633437471591 20 0.0063506580770687432 
		21 0.029492572919897653 22 0.95449284231553932
		5 5 0.0058557985747944106 12 0.0058557985747944106 13 0.005330992342061973 
		22 0.966963655646354 23 0.015993754861995165
		5 18 0.002102542997126988 19 0.0033608223077669459 20 0.008015552086702191 
		21 0.061809934549387553 22 0.92471114805901633
		5 12 0.023693109262609653 20 0.035424568068895226 21 0.1154365017569467 
		22 0.76946793538870584 23 0.055977885522842642
		5 19 0.029628802136620912 20 0.054472948117792706 21 0.18550625453263925 
		22 0.67902628295481271 23 0.051365712258134411
		5 19 0.02291602538825209 20 0.044614094180676384 21 0.17800693818789021 
		22 0.72575083843423005 23 0.028712103808951232
		5 4 4.3292547619476314e-05 5 5.1479359946962765e-05 12 5.1301306495082619e-05 
		22 0.99737231781905911 23 0.0024816089668792825
		5 5 0.0054146855813730953 12 0.0054146855813730953 21 0.0065400059663272177 
		22 0.95792239926741085 23 0.02470822360351578
		5 5 0.0037219878118138401 12 0.0037219878118138401 13 0.0031516334255376277 
		22 0.97321808186090597 23 0.016186309089928682
		5 5 0.01022703285246677 12 0.010277030136056249 21 0.023496876349039093 
		22 0.92217697759508066 23 0.033822083067357241
		5 5 0.0075269428021386541 12 0.0075595791063927291 13 0.0071676567191006216 
		22 0.96625282868305862 23 0.011492992689309379
		5 5 0.013229042461944146 12 0.014333596215936608 13 0.014328389488270525 
		21 0.018265427426180921 22 0.93984354440766782
		5 5 0.0011342597364460043 12 0.0011342597364460043 21 0.00094909128601066643 
		22 0.97507991775859804 23 0.021702471482499219
		5 12 0.019307207280414868 20 0.024205931320284303 21 0.076086591757804578 
		22 0.80243420139396915 23 0.077966068247527109
		5 12 0.016011648717369497 20 0.020621132596619591 21 0.068052681793092165 
		22 0.83592076388451875 23 0.0593937730084
		5 5 0.0087804562528587694 12 0.0093677044823771791 13 0.0093525470782488736 
		21 0.013234329229992861 22 0.95926496295652242
		5 5 0.0054336842003103224 12 0.0054336842003103224 13 0.0046105591345714505 
		22 0.96096851768535774 23 0.0235535547794502
		5 18 0.0049038364285714335 19 0.0083348568896057396 20 0.020463295407790381 
		21 0.1612266503763746 22 0.80507136089765785
		5 18 0.00019177961000973136 19 0.00032594926651175859 20 0.00087792023856591499 
		21 0.01154769078027393 22 0.98705666010463877
		5 5 0.0064659513129686702 12 0.0064659513129686702 21 0.010716105416714802 
		22 0.92215944493231927 23 0.054192547025028633
		5 18 0.0034292890784667182 19 0.0062320569252614444 20 0.016872043447206081 
		21 0.1868856728685078 22 0.78658093768055792
		5 19 0.035159902775011381 20 0.070137891786334589 21 0.27298148680681744 
		22 0.59707683112158771 23 0.024643887510248874
		5 19 0.033566928802783058 20 0.06385344926075695 21 0.22924647297008091 
		22 0.63529340293595904 23 0.038039746030420048
		5 18 0.012275335066131671 19 0.022192223938615075 20 0.053763491412508073 
		21 0.33315204926756331 22 0.57861690031518187
		5 18 0.0054144181439126689 19 0.010530461596026565 20 0.030075650313290504 
		21 0.32875553432427013 22 0.62522393562250023
		5 18 0.018574279101817508 19 0.03130324065369474 20 0.067235171067002927 
		21 0.30610476186819097 22 0.5767825473092939
		5 12 0.01602702343792527 13 0.015928732383884973 21 0.01923564093725668 
		22 0.93308063129044727 23 0.015727971950485916
		5 12 0.015577826968131051 13 0.01551030077548975 21 0.02294849242838377 
		22 0.92802559913101978 23 0.017937780696975561
		5 5 0.01643986783665418 12 0.017239061152355101 13 0.017098391371868676 
		21 0.016680669907831226 22 0.93254200973129087
		5 18 0.0023364311323662117 19 0.004489711707985157 20 0.013429653109867384 
		21 0.21229053604294387 22 0.76745366800683734
		5 18 0.00074419083570090511 19 0.0013962242701689935 20 0.0042509342355851448 
		21 0.084257851607762904 22 0.90935079905078209
		5 12 0.022458832547656526 20 0.037670472459635097 21 0.12912570861930742 
		22 0.76910936224590898 23 0.041635624127491999
		5 19 0.027881828072745408 20 0.051426169385972609 21 0.17723853820258564 
		22 0.70015991395160304 23 0.043293550387093337
		5 12 0.015867687746110869 13 0.015852630939125249 21 0.038751100656542685 
		22 0.90394840838035861 23 0.025580172277862506
		5 12 0.018124387217141179 13 0.018124387217141179 21 0.058137835540757819 
		22 0.8737980144532419 23 0.031815375571717971
		5 18 0.00089680869988589059 19 0.001450305489142807 20 0.0037122951119955248 
		21 0.035786910064100237 22 0.95815368063487549
		5 13 0.0035377475241114755 19 0.0041939248091802895 20 0.0093677081461530434 
		21 0.056313340805708927 22 0.92658727871484625
		5 12 0.0086020882875076834 13 0.0086394456814625261 20 0.011639715918635921 
		21 0.051944359742881072 22 0.91917439036951287
		5 18 0.00012841666884382214 19 0.00022774665278938445 20 0.00066585591517210056 
		21 0.011969345238959291 22 0.98700863552423546
		5 5 0.013239374452344388 12 0.015703848045487627 13 0.015703848045487627 
		21 0.030404505384515449 22 0.92494842407216493
		5 5 0.014839005349367017 12 0.016784824722137447 13 0.016784824722137447 
		21 0.024277299942398856 22 0.92731404526395933
		5 5 0.015705195643378522 12 0.017065633695404415 13 0.017059996582705701 
		21 0.020148798291802984 22 0.93002037578670838
		5 5 0.013920263520356881 12 0.014044453595648019 13 0.013513204464618686 
		22 0.93867818470673858 23 0.019843893712637884
		5 5 0.0147562539579504 12 0.014874542949340508 13 0.014184128674509456 
		22 0.93857992859655293 23 0.017605145821646656
		5 5 0.013422348208927008 12 0.013559512650034992 21 0.015536820525044502 
		22 0.93506931419672612 23 0.022412004419267415
		5 12 0.019438534842951938 20 0.021077323831748457 21 0.063509862344316298 
		22 0.8020180250405079 23 0.093956253940475368
		5 12 0.020978948530863489 20 0.026448477830467148 21 0.081536413045515704 
		22 0.78405731882311258 23 0.086978841770041115
		5 12 0.022515564835267395 20 0.033574456301440868 21 0.10594416656160979 
		22 0.75869891258239097 23 0.07926689971929099
		5 5 0.016800163669406492 12 0.016800163669406492 21 0.043959627740970862 
		22 0.82345654717514216 23 0.098983497745073895
		5 5 0.0096716426887336806 12 0.0096716426887336806 21 0.01522803702666241 
		22 0.87088715055329768 23 0.094541527042572585
		5 5 0.0087190426074162178 12 0.0087190426074162178 21 0.0090305816506007757 
		22 0.93376985268689794 23 0.0397614804476688
		5 5 0.0088924117686222503 12 0.0088924117686222503 21 0.012549591071313187 
		22 0.90287785158914702 23 0.066787733802295385
		5 5 0.012184117209027014 12 0.012184117209027014 13 0.010756310866888183 
		22 0.94207293191186148 23 0.022802522803196279
		5 5 0.014313678627011089 12 0.014519586872606764 21 0.028166202809856326 
		22 0.91056384257375222 23 0.032436689116773602
		5 12 0.016310458885309298 13 0.016158464083779162 21 0.040917125175071595 
		22 0.88536321425269604 23 0.041250737603143982
		5 5 0.010473238111708116 12 0.010473238111708116 13 0.0093931515866712764 
		22 0.94123788372371697 23 0.02842248846619555
		5 5 0.011875412504646365 12 0.011875412504646365 13 0.010609600427345671 
		22 0.93962423162416797 23 0.026015342939193616
		5 12 0.021565897572821058 20 0.026267375767438331 21 0.082796839297412717 
		22 0.80271260875952366 23 0.066657278602804279
		5 5 0.0058893374859353299 12 0.0058893374859353299 13 0.0050063522419324233 
		22 0.9453012921514482 23 0.037913680634748821
		5 5 0.0028208925147346943 12 0.0028208925147346943 13 0.0023216751014021593 
		22 0.94717694041429601 23 0.044859599454832449
		5 5 0.0020548545750777576 12 0.0020548545750777576 13 0.0016721541903536945 
		22 0.93404702033265907 23 0.060171116326831683
		5 5 0.0086589762293611122 12 0.0086589762293611122 13 0.0074387862320841602 
		22 0.94433800585699623 23 0.030905255452197342
		5 4 0.00010125938239408753 5 0.00010662466201091737 12 0.00010451475456610979 
		22 0.98717383010003457 23 0.012513771100994256
		5 4 0.00034045209494804968 5 0.00039030347390697919 12 0.00038554645703878221 
		22 0.98137829786932207 23 0.017505400104784047
		5 3 3.2298134962169453e-05 4 3.3965893868206705e-05 5 3.3537846435036666e-05 
		22 0.99371395188328326 23 0.006186246241451393
		5 5 0.0028094197042613698 12 0.0028094197042613698 13 0.0020944474242675097 
		22 0.96401619784637205 23 0.028270515320837721
		5 5 0.0098840001775589749 12 0.0098840001775589749 13 0.0082554872310718064 
		22 0.94643159689445755 23 0.025544915519352573
		5 5 0.0098560798649344802 12 0.0098560798649344802 13 0.0084541663038461574 
		22 0.94268798800036357 23 0.029145685965921261
		5 3 8.3686995987506826e-06 4 8.7478265486214686e-06 5 8.5134717924828326e-06 
		22 0.99792010769215522 23 0.0020542623099048633
		5 3 6.6465370756223047e-06 4 6.9425909719261617e-06 5 6.7064367588243202e-06 
		22 0.99827487107027102 23 0.0017048333649225204
		5 5 0.22281055584527382 6 0.18504146074131175 12 0.22849302901344107 
		13 0.21857966091117498 14 0.14507529348879844
		5 5 0.22021350421945363 6 0.18772413347970834 12 0.22679072597401145 
		13 0.21817658927263522 14 0.14709504705419132
		5 5 0.22367772958826362 6 0.17973710308959792 12 0.22949546593842479 
		13 0.22008519868904519 14 0.14700450269466847
		5 5 0.22162292671209813 6 0.18129686422928337 12 0.22826068083494361 
		13 0.21996993233047532 14 0.14884959589319946
		5 5 0.22498045308920608 6 0.18283189207192477 12 0.22994624240128692 
		13 0.21886015045429741 14 0.14338126198328488
		5 5 0.22610405901828096 6 0.17767336234159864 12 0.23105507145783941 
		13 0.22026712757881331 14 0.14490037960346766
		5 5 0.2246540229159166 6 0.17717585986977122 12 0.2312130377364594 
		13 0.22159488559549617 14 0.14536219388235658
		5 5 0.22716606306931555 6 0.17514374899285448 12 0.23274842286486208 
		13 0.22170093787910702 14 0.14324082719386086
		5 5 0.22249024178674057 6 0.17878342100818786 12 0.22994847104937732 
		13 0.22149860553571915 14 0.14727926061997512
		5 19 0.034028160862238671 20 0.057502270751659632 21 0.16058357369960616 
		22 0.6171142899450992 23 0.13077170474139632
		5 19 0.033166982270494486 20 0.056010186815542526 21 0.15657681045535404 
		22 0.62212518281125118 23 0.13212083764735769
		5 19 0.034212842305307939 20 0.057543333319168888 21 0.15899108019051295 
		22 0.61408152173032915 23 0.13517122245468113
		5 19 0.035003612717166226 20 0.058889331043514057 21 0.16244462665917805 
		22 0.60946727672037704 23 0.13419515285976463
		5 19 0.034755678522563768 20 0.058767921722077975 21 0.16399649215133791 
		22 0.61298068104413217 23 0.12949922655988824
		5 19 0.035956615211094903 20 0.060508226966716566 21 0.16655484197111056 
		22 0.60392274550533243 23 0.1330575703457455
		5 19 0.034209458365120488 20 0.057702398922580347 21 0.16045172612617667 
		22 0.61711720709467199 23 0.1305192094914506
		5 19 0.034943270992556542 20 0.058975473145615576 21 0.16386226579634305 
		22 0.61297250618079735 23 0.12924648388468751
		5 19 0.033334856022174175 20 0.056194995986920293 21 0.15645207295837213 
		22 0.6221405648485997 23 0.1318775101839337;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.018085704034955595 -2.3722343533982837e-16 0.99983644027888885 -0
		 0.98791151081917272 0.15398542126489598 -0.017869998009291985 0 -0.15396023545233872 0.98807311978308199 0.0027849347546951377 -0
		 -0.27749553014212586 0.32218862144206878 0.064157810637688856 1;
	setAttr ".pm[1]" -type "matrix" 0.016925018010085599 0.0063746729954005264 -0.99983644027888874 -0
		 0.97878560798042902 0.20410633694603875 0.01786999800929201 0 0.20418686876422856 -0.97892796811750749 -0.0027849347546952566 -0
		 -1.4421206758435559 -0.88744695989624778 -0.064157810637689591 1;
	setAttr ".pm[2]" -type "matrix" 0.0099779328792782111 0.0082930106371435081 -0.99991582987270911 -0
		 0.94863097990873879 0.31615366191482547 0.012088259396296914 0 0.31622729928461679 -0.94867174935929155 -0.0047124467889829297 -0
		 -2.4538402026482875 -1.1797071687720018 -0.049202420242293987 1;
	setAttr ".pm[3]" -type "matrix" 0.043816950641368702 -0.0044936032738773762 0.99902947021902677 -0
		 0.99888003671796699 0.018067525804242503 -0.043729129394788568 0 -0.017853489373368843 0.99982667099899425 0.0052802344895827935 -0
		 -3.7982528964692692 -0.092571487464748553 0.16951881728613705 1;
	setAttr ".pm[4]" -type "matrix" -0.0019333925294961183 0.0033292267156371396 0.99999258909394084 -0
		 0.98090152189132362 0.19450101414328164 0.0012489389578610398 0 -0.19449541471359283 0.98089666721154256 -0.003641690359813736 0
		 -4.3723933620198876 -0.87943072212425988 -0.030998809281050241 1;
	setAttr ".pm[5]" -type "matrix" -0.037109125984755756 0.001857741381396561 0.99930949238241884 -0
		 0.74011922035676658 0.67196373907971851 0.026234957985407967 0 -0.67145100523205714 0.7405817187582775 -0.026310937153520522 0
		 -3.9436861514382371 -3.397898821380577 -0.16414935883510748 1;
	setAttr ".pm[6]" -type "matrix" 0.073372538863990214 -0.012663536850708323 0.99722420015515256 -0
		 0.42236397190753999 0.90621507107176014 -0.019568346810390939 0 -0.9034517949371399 0.42262735334669943 0.071839922244009091 -0
		 -3.1959618460175312 -5.0291386714561019 0.18263990606770925 1;
	setAttr ".pm[7]" -type "matrix" 0.55705795226623545 -0.016547728042112575 0.83030874409077093 -0
		 -0.12508167423507369 0.98672445858704572 0.1035829020478428 0 -0.82100000766595627 -0.16155808714746034 0.54759288882321533 -0
		 -0.31035415239535907 -6.2807579710172057 0.045864544894976711 1;
	setAttr ".pm[8]" -type "matrix" 0.49430293068958697 0.25843889347390159 0.82998430771411058 -0
		 -0.59231045884490041 0.79897319341582651 0.10397190267500454 0 -0.63626482933966233 -0.54300200233783902 0.54801085062475607 -0
		 2.436381706268961 -5.835349211370974 0.044264549959865215 1;
	setAttr ".pm[9]" -type "matrix" 0.27374893945727635 0.48599132409369772 0.82998430771411036 -0
		 -0.931942849758854 0.34737928584975514 0.10397190267500452 0 -0.23778991343066463 -0.80196013907685537 0.54801085062475596 -0
		 4.8866712683614999 -3.7841525331065542 0.044264549959866201 1;
	setAttr ".pm[10]" -type "matrix" -0.0075800610285694089 -0.99987475807901172 0.013892833808878522 -0
		 -0.9999611927700891 0.0076416285361863628 0.0043838872175767868 0 -0.0044895020464027812 -0.013859064533831346 -0.99989387972005472 0
		 5.4258414785434201 0.52253211726179716 -2.0394112874857644 1;
	setAttr ".pm[11]" -type "matrix" -0.01389283380887852 -0.00048342936496857582 -0.99990337306402166 0
		 -0.0043838872175775076 0.99999030144054779 -0.00042256089061362998 0 0.99989387972005461 0.0043775930477607259 -0.013894818368217664 -0
		 2.0394112874857666 -3.2178655096609945 0.54849963709847593 1;
	setAttr ".pm[12]" -type "matrix" 0.10743890815762107 -3.7860339863193815e-16 -0.99421168823037775 -0
		 0.99381374708819648 0.028290558736978944 0.10739590487941267 -0 0.028126804162872065 -0.99959974203995772 0.0030395067418703659 -0
		 -5.8510175225357415 -0.038060888274327825 -0.56342879504264454 1;
	setAttr ".pm[13]" -type "matrix" 0.10421515981264724 0.026121245210099103 0.99421168823037775 -0
		 0.97087214387614318 0.21418076445020459 -0.10739590487941264 0 -0.21574633417642688 0.97644471460917825 -0.0030395067418702458 -0
		 -6.0303247594509859 -1.4722461850490463 0.5634287950426442 1;
	setAttr ".pm[14]" -type "matrix" 0.072627813078033121 -0.2410998828187314 0.96777892479238026 -0
		 0.98435059522130874 0.17353725874584003 -0.030638627815788674 0 -0.16055873210435326 0.95485897719599022 0.24993044475067322 -0
		 -6.6473487721983497 -1.1543093128804127 0.043928960315609535 1;
	setAttr ".pm[15]" -type "matrix" -0.069803098157141447 0.64299497288729635 -0.76268275995287071 -0
		 0.99737604418282033 0.030270964170022792 -0.065762414937762734 0 -0.019197759710282942 -0.76527193439318131 -0.64342078957104265 0
		 -7.2838245908364074 -0.40564400383825139 0.59224891273348079 1;
	setAttr ".pm[16]" -type "matrix" -0.3702940991460652 0.53028038603014027 -0.76268275995287071 -0
		 0.86003570782476224 0.50597814779683326 -0.065762414937762734 -0 0.35102829145805903 -0.6802858414988594 -0.64342078957104254 -0
		 -6.6959704602590557 -4.1332145071208428 0.59224891273348135 1;
	setAttr ".pm[17]" -type "matrix" -0.59585459049693423 0.25153988680605216 -0.76268275995287094 -0
		 0.45834260917706654 0.88633930150609541 -0.065762414937762803 -0 0.65945383431783089 -0.38875484299399571 -0.64342078957104265 -0
		 -3.8765379457359801 -7.3236561834196507 0.59224891273348157 1;
	setAttr ".pm[18]" -type "matrix" -0.64626479776675294 0.0256284770942115 -0.76268275995287071 -0
		 0.11690678285930228 0.99096322278026128 -0.065762414937762789 -0 0.75410517521694898 -0.13166272159875064 -0.64342078957104265 -0
		 -1.4858154209103351 -8.3837043273153018 0.59224891273348224 1;
	setAttr ".pm[19]" -type "matrix" -0.57989787459321029 -0.059362527512980393 -0.81252356603950093 0
		 -0.070480148732345538 0.99725809566215107 -0.022557465969541345 0 0.81163477234341297 0.044185755211053702 -0.58249172986359643 -0
		 -0.25430710928814798 -8.6018328078091226 0.15448936803261143 1;
	setAttr ".pm[20]" -type "matrix" -0.47354605949264456 -0.39969372609630316 -0.78485607270265878 0
		 -0.66239687966229888 0.74893049960896774 0.01826145035621176 0 0.58050366351353799 0.52853385139905218 -0.61940896391047295 -0
		 4.7062593243389772 -7.2307498287976557 -0.13553567295099261 1;
	setAttr ".pm[21]" -type "matrix" -0.34444864988030938 -0.51512723936653748 -0.78485607270265889 0
		 -0.84377729261586021 0.53638269910273684 0.018261450356211816 0 0.41157624817460192 0.66853386403821968 -0.61940896391047284 -0
		 6.1288510707224733 -5.7596650808538659 -0.13553567295099239 1;
	setAttr ".pm[22]" -type "matrix" -0.0090652865885127235 0.99994989009896207 0.0042471013810032911 -0
		 -0.99979708033178649 -0.0089873286362443291 -0.018028479803352832 0 -0.017989406302151199 -0.0044096728967732025 0.99982845330878589 -0
		 7.7109290138049191 1.2696548783887673 -1.3767238625035207 1;
	setAttr ".pm[23]" -type "matrix" 0.0042471013810032781 0.018323296420375747 -0.99982309382117684 -0
		 -0.018028479803353554 0.99967101240601763 0.018243926965108615 0 0.99982845330878578 0.017947806646472865 0.0045760453167845048 -0
		 -1.3767238625035161 -4.5714226551968347 -1.312037290991185 1;
	setAttr ".gm" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0 0 0 1.0000000000000002 0
		 0.0026201576514903735 0.053385089947583508 -0.0080035208218544734 1;
	setAttr -s 14 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "3FD5317E-8F46-CB10-ABD3-A98B874A65ED";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 80 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 36 ".gn";
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
connectAttr "modelRN.phl[3]" "skinCluster2.orggeom[0]";
connectAttr "modelRN.phl[4]" "skinCluster2.ip[0].ig";
connectAttr "modelRN.phl[5]" "skinCluster3.orggeom[0]";
connectAttr "modelRN.phl[6]" "skinCluster3.ip[0].ig";
connectAttr "modelRN.phl[7]" "skinCluster4.orggeom[0]";
connectAttr "modelRN.phl[8]" "skinCluster4.ip[0].ig";
connectAttr "modelRN.phl[9]" "skinCluster5.orggeom[0]";
connectAttr "modelRN.phl[10]" "skinCluster5.ip[0].ig";
connectAttr "modelRN.phl[11]" "skinCluster6.orggeom[0]";
connectAttr "modelRN.phl[12]" "skinCluster6.ip[0].ig";
connectAttr "modelRN.phl[13]" "skinCluster7.orggeom[0]";
connectAttr "modelRN.phl[14]" "skinCluster7.ip[0].ig";
connectAttr "modelRN.phl[15]" "skinCluster8.orggeom[0]";
connectAttr "modelRN.phl[16]" "skinCluster8.ip[0].ig";
connectAttr "modelRN.phl[17]" "skinCluster9.orggeom[0]";
connectAttr "modelRN.phl[18]" "tweak2.ip[0].ig";
connectAttr "modelRN.phl[19]" "skinCluster10.orggeom[0]";
connectAttr "modelRN.phl[20]" "skinCluster10.ip[0].ig";
connectAttr "modelRN.phl[21]" "skinCluster11.orggeom[0]";
connectAttr "modelRN.phl[22]" "skinCluster11.ip[0].ig";
connectAttr "modelRN.phl[23]" "skinCluster12.orggeom[0]";
connectAttr "modelRN.phl[24]" "skinCluster12.ip[0].ig";
connectAttr "modelRN.phl[25]" "skinCluster13.orggeom[0]";
connectAttr "modelRN.phl[26]" "skinCluster13.ip[0].ig";
connectAttr "modelRN.phl[27]" "skinCluster14.orggeom[0]";
connectAttr "modelRN.phl[28]" "tweak3.ip[0].ig";
connectAttr "modelRN.phl[29]" "skinCluster15.orggeom[0]";
connectAttr "modelRN.phl[30]" "skinCluster15.ip[0].ig";
connectAttr "modelRN.phl[31]" "skinCluster16.orggeom[0]";
connectAttr "modelRN.phl[32]" "skinCluster16.ip[0].ig";
connectAttr "modelRN.phl[33]" "skinCluster17.orggeom[0]";
connectAttr "modelRN.phl[34]" "skinCluster17.ip[0].ig";
connectAttr "modelRN.phl[35]" "skinCluster18.orggeom[0]";
connectAttr "modelRN.phl[36]" "skinCluster18.ip[0].ig";
connectAttr "modelRN.phl[37]" "skinCluster19.orggeom[0]";
connectAttr "modelRN.phl[38]" "skinCluster19.ip[0].ig";
connectAttr "modelRN.phl[39]" "skinCluster20.orggeom[0]";
connectAttr "modelRN.phl[40]" "skinCluster20.ip[0].ig";
connectAttr "modelRN.phl[41]" "skinCluster21.orggeom[0]";
connectAttr "modelRN.phl[42]" "tweak4.ip[0].ig";
connectAttr "modelRN.phl[43]" "skinCluster22.orggeom[0]";
connectAttr "modelRN.phl[44]" "skinCluster22.ip[0].ig";
connectAttr "modelRN.phl[45]" "skinCluster23.orggeom[0]";
connectAttr "modelRN.phl[46]" "skinCluster23.ip[0].ig";
connectAttr "modelRN.phl[47]" "skinCluster24.orggeom[0]";
connectAttr "modelRN.phl[48]" "skinCluster24.ip[0].ig";
connectAttr "modelRN.phl[49]" "skinCluster25.orggeom[0]";
connectAttr "modelRN.phl[50]" "skinCluster25.ip[0].ig";
connectAttr "modelRN.phl[51]" "skinCluster26.orggeom[0]";
connectAttr "modelRN.phl[52]" "skinCluster26.ip[0].ig";
connectAttr "modelRN.phl[53]" "skinCluster27.orggeom[0]";
connectAttr "modelRN.phl[54]" "tweak5.ip[0].ig";
connectAttr "modelRN.phl[55]" "skinCluster28.orggeom[0]";
connectAttr "modelRN.phl[56]" "skinCluster28.ip[0].ig";
connectAttr "modelRN.phl[57]" "skinCluster29.orggeom[0]";
connectAttr "modelRN.phl[58]" "skinCluster29.ip[0].ig";
connectAttr "modelRN.phl[59]" "skinCluster30.orggeom[0]";
connectAttr "modelRN.phl[60]" "skinCluster30.ip[0].ig";
connectAttr "modelRN.phl[61]" "skinCluster31.orggeom[0]";
connectAttr "modelRN.phl[62]" "skinCluster31.ip[0].ig";
connectAttr "modelRN.phl[63]" "skinCluster32.orggeom[0]";
connectAttr "modelRN.phl[64]" "skinCluster32.ip[0].ig";
connectAttr "modelRN.phl[65]" "skinCluster33.orggeom[0]";
connectAttr "modelRN.phl[66]" "skinCluster33.ip[0].ig";
connectAttr "modelRN.phl[67]" "skinCluster34.orggeom[0]";
connectAttr "modelRN.phl[68]" "skinCluster34.ip[0].ig";
connectAttr "modelRN.phl[69]" "skinCluster35.orggeom[0]";
connectAttr "modelRN.phl[70]" "skinCluster35.ip[0].ig";
connectAttr "modelRN.phl[71]" "skinCluster36.orggeom[0]";
connectAttr "modelRN.phl[72]" "skinCluster36.ip[0].ig";
connectAttr "modelRN.phl[73]" "skinCluster37.orggeom[0]";
connectAttr "modelRN.phl[74]" "skinCluster37.ip[0].ig";
connectAttr "modelRN.phl[75]" "skinCluster38.orggeom[0]";
connectAttr "modelRN.phl[76]" "skinCluster38.ip[0].ig";
connectAttr "modelRN.phl[77]" "skinCluster39.orggeom[0]";
connectAttr "modelRN.phl[78]" "skinCluster39.ip[0].ig";
connectAttr "modelRN.phl[79]" "skinCluster40.orggeom[0]";
connectAttr "modelRN.phl[80]" "skinCluster40.ip[0].ig";
connectAttr "modelRN.phl[81]" "heart_big_highPolyShapeDeformed.iog.og[1].gco";
connectAttr "modelRN.phl[82]" "heart_smallShapeDeformed.iog.og[1].gco";
connectAttr "modelRN.phl[83]" "modelRN.phl[84]";
connectAttr "modelRN.phl[85]" "modelRN.phl[86]";
connectAttr "heart_big_highPolyShapeDeformed.iog.og[1]" "modelRN.phl[87]";
connectAttr "heart_smallShapeDeformed.iog.og[1]" "modelRN.phl[88]";
connectAttr "modelRN.phl[89]" "heart_smallShapeDeformed.iog.og[1].gid";
connectAttr "modelRN.phl[90]" "heart_big_highPolyShapeDeformed.iog.og[1].gid";
connectAttr "stem.s" "stem1.is";
connectAttr "stem1.s" "stem2.is";
connectAttr "stem2.s" "stem3.is";
connectAttr "stem3.s" "stem4.is";
connectAttr "stem4.s" "stem5.is";
connectAttr "stem5.s" "shortstem.is";
connectAttr "shortstem.s" "shortstem1.is";
connectAttr "shortstem1.s" "shortstem2.is";
connectAttr "shortstem2.s" "shortstem3.is";
connectAttr "shortstem3.s" "shortstem4.is";
connectAttr "shortstem4.s" "shortFruit.is";
connectAttr "shortstem4.tx" "effector3.tx";
connectAttr "shortstem4.ty" "effector3.ty";
connectAttr "shortstem4.tz" "effector3.tz";
connectAttr "shortstem4.opm" "effector3.opm";
connectAttr "stem5.s" "tallstem.is";
connectAttr "tallstem.s" "tallstem1.is";
connectAttr "tallstem1.s" "tallstem2.is";
connectAttr "tallstem2.s" "tallstem3.is";
connectAttr "tallstem3.s" "tallstem4.is";
connectAttr "tallstem4.s" "tallstem5.is";
connectAttr "tallstem5.s" "tallstem6.is";
connectAttr "tallstem6.s" "tallstem7.is";
connectAttr "tallstem7.s" "tallstem8.is";
connectAttr "tallstem8.s" "tallstem9.is";
connectAttr "tallstem9.s" "tallstem10.is";
connectAttr "tallstem10.s" "tallfruit.is";
connectAttr "tallstem10.tx" "effector2.tx";
connectAttr "tallstem10.ty" "effector2.ty";
connectAttr "tallstem10.tz" "effector2.tz";
connectAttr "tallstem10.opm" "effector2.opm";
connectAttr "stem5.tx" "effector1.tx";
connectAttr "stem5.ty" "effector1.ty";
connectAttr "stem5.tz" "effector1.tz";
connectAttr "stem5.opm" "effector1.opm";
connectAttr "stem1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_parentConstraint1.crx" "ikHandle1.rx";
connectAttr "ikHandle1_parentConstraint1.cry" "ikHandle1.ry";
connectAttr "ikHandle1_parentConstraint1.crz" "ikHandle1.rz";
connectAttr "ikHandle1_parentConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_parentConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_parentConstraint1.ctz" "ikHandle1.tz";
connectAttr "stem5.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_parentConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_parentConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_parentConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2_parentConstraint1.crx" "ikHandle2.rx";
connectAttr "ikHandle2_parentConstraint1.cry" "ikHandle2.ry";
connectAttr "ikHandle2_parentConstraint1.crz" "ikHandle2.rz";
connectAttr "ikHandle2.ro" "ikHandle2_parentConstraint1.cro";
connectAttr "ikHandle2.pim" "ikHandle2_parentConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_parentConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_parentConstraint1.crt";
connectAttr "tallStemCTRL.t" "ikHandle2_parentConstraint1.tg[0].tt";
connectAttr "tallStemCTRL.rp" "ikHandle2_parentConstraint1.tg[0].trp";
connectAttr "tallStemCTRL.rpt" "ikHandle2_parentConstraint1.tg[0].trt";
connectAttr "tallStemCTRL.r" "ikHandle2_parentConstraint1.tg[0].tr";
connectAttr "tallStemCTRL.ro" "ikHandle2_parentConstraint1.tg[0].tro";
connectAttr "tallStemCTRL.s" "ikHandle2_parentConstraint1.tg[0].ts";
connectAttr "tallStemCTRL.pm" "ikHandle2_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle2_parentConstraint1.w0" "ikHandle2_parentConstraint1.tg[0].tw"
		;
connectAttr "stem5.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle1.ro" "ikHandle1_parentConstraint1.cro";
connectAttr "ikHandle1.pim" "ikHandle1_parentConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_parentConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_parentConstraint1.crt";
connectAttr "stemCTRL.t" "ikHandle1_parentConstraint1.tg[0].tt";
connectAttr "stemCTRL.rp" "ikHandle1_parentConstraint1.tg[0].trp";
connectAttr "stemCTRL.rpt" "ikHandle1_parentConstraint1.tg[0].trt";
connectAttr "stemCTRL.r" "ikHandle1_parentConstraint1.tg[0].tr";
connectAttr "stemCTRL.ro" "ikHandle1_parentConstraint1.tg[0].tro";
connectAttr "stemCTRL.s" "ikHandle1_parentConstraint1.tg[0].ts";
connectAttr "stemCTRL.pm" "ikHandle1_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle1_parentConstraint1.w0" "ikHandle1_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster40.og[0]" "vine_baseShapeDeformed.i";
connectAttr "skinCluster39.og[0]" "vine_top1ShapeDeformed.i";
connectAttr "skinCluster38.og[0]" "vine_midShape1Deformed.i";
connectAttr "skinCluster37.og[0]" "vine_bottomShape1Deformed.i";
connectAttr "skinCluster36.og[0]" "vine_topShape2Deformed.i";
connectAttr "skinCluster35.og[0]" "vine_midShape2Deformed.i";
connectAttr "skinCluster34.og[0]" "vine_bottomShape2Deformed.i";
connectAttr "skinCluster33.og[0]" "stemLeaf6ShapeDeformed.i";
connectAttr "skinCluster32.og[0]" "stemLeaf5ShapeDeformed.i";
connectAttr "skinCluster31.og[0]" "stemLeaf4ShapeDeformed.i";
connectAttr "skinCluster30.og[0]" "stemLeaf3ShapeDeformed.i";
connectAttr "skinCluster29.og[0]" "stemLeaf2ShapeDeformed.i";
connectAttr "skinCluster28.og[0]" "stemLeaf1ShapeDeformed.i";
connectAttr "skinCluster27.og[0]" "plant_stem_lowPolyShapeDeformed.i";
connectAttr "tweak5.vl[0].vt[0]" "plant_stem_lowPolyShapeDeformed.twl";
connectAttr "skinCluster26.og[0]" "plant_stem_highPolyShapeDeformed.i";
connectAttr "skinCluster25.og[0]" "tearLeaf_frontLeft_smallShapeDeformed.i";
connectAttr "skinCluster24.og[0]" "tearLeaf_backLeft_smallShapeDeformed.i";
connectAttr "skinCluster23.og[0]" "tearLeaf_backRight_smallShapeDeformed.i";
connectAttr "skinCluster22.og[0]" "tearLeaf_frontRight_smallShapeDeformed.i";
connectAttr "skinCluster21.og[0]" "tear_smallShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "tear_smallShapeDeformed.twl";
connectAttr "skinCluster20.og[0]" "topLeaf_small_frontLeftShapeDeformed.i";
connectAttr "skinCluster19.og[0]" "topLeaf_small_frontRightShapeDeformed.i";
connectAttr "skinCluster18.og[0]" "topLeaf_small_backRightShapeDeformed.i";
connectAttr "skinCluster17.og[0]" "topLeaf_small_backLeftShapeDeformed.i";
connectAttr "skinCluster16.og[0]" "topLeaf_small_midRightShapeDeformed.i";
connectAttr "skinCluster15.og[0]" "topLeaf_small_midRight1ShapeDeformed.i";
connectAttr "groupId2.id" "heart_smallShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "heart_smallShapeDeformed.iog.og[2].gco";
connectAttr "groupParts2.og" "heart_smallShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "heart_smallShapeDeformed.twl";
connectAttr "skinCluster13.og[0]" "tearLeaf_frontLeft_bigShapeDeformed.i";
connectAttr "skinCluster12.og[0]" "tearLeaf_backRight_bigShapeDeformed.i";
connectAttr "skinCluster11.og[0]" "tearLeaf_frontRight_bigShapeDeformed.i";
connectAttr "skinCluster10.og[0]" "tearLeaf_backLeft_bigShapeDeformed.i";
connectAttr "skinCluster9.og[0]" "tear_bigShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "tear_bigShapeDeformed.twl";
connectAttr "skinCluster8.og[0]" "topLeaf_big_frontLeftShapeDeformed.i";
connectAttr "skinCluster7.og[0]" "topLeaf_big_frontRightShapeDeformed.i";
connectAttr "skinCluster6.og[0]" "topLeaf_big_backRightShapeDeformed.i";
connectAttr "skinCluster5.og[0]" "topLeaf_big_backLeftShapeDeformed.i";
connectAttr "skinCluster4.og[0]" "topLeaf_big_midLEFTShapeDeformed.i";
connectAttr "skinCluster3.og[0]" "topLeaf_big_midRightShapeDeformed.i";
connectAttr "skinCluster2.og[0]" "heart_big_lowPolyShapeDeformed.i";
connectAttr "groupId1.id" "heart_big_highPolyShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "heart_big_highPolyShapeDeformed.iog.og[2].gco"
		;
connectAttr "groupParts1.og" "heart_big_highPolyShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "heart_big_highPolyShapeDeformed.twl";
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
connectAttr "skinCluster1.og[0]" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "skinCluster14.og[0]" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "stem.wm" "skinCluster40.ma[0]";
connectAttr "stem1.wm" "skinCluster40.ma[1]";
connectAttr "stem2.wm" "skinCluster40.ma[2]";
connectAttr "stem3.wm" "skinCluster40.ma[3]";
connectAttr "shortstem4.wm" "skinCluster40.ma[10]";
connectAttr "shortFruit.wm" "skinCluster40.ma[11]";
connectAttr "stem.liw" "skinCluster40.lw[0]";
connectAttr "stem1.liw" "skinCluster40.lw[1]";
connectAttr "stem2.liw" "skinCluster40.lw[2]";
connectAttr "stem3.liw" "skinCluster40.lw[3]";
connectAttr "shortstem4.liw" "skinCluster40.lw[10]";
connectAttr "shortFruit.liw" "skinCluster40.lw[11]";
connectAttr "stem.obcc" "skinCluster40.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster40.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster40.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster40.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster40.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster40.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster40.bp";
connectAttr "stem.msg" "bindPose1.m[0]";
connectAttr "stem1.msg" "bindPose1.m[1]";
connectAttr "stem2.msg" "bindPose1.m[2]";
connectAttr "stem3.msg" "bindPose1.m[3]";
connectAttr "stem4.msg" "bindPose1.m[4]";
connectAttr "stem5.msg" "bindPose1.m[5]";
connectAttr "shortstem.msg" "bindPose1.m[6]";
connectAttr "shortstem1.msg" "bindPose1.m[7]";
connectAttr "shortstem2.msg" "bindPose1.m[8]";
connectAttr "shortstem3.msg" "bindPose1.m[9]";
connectAttr "shortstem4.msg" "bindPose1.m[10]";
connectAttr "tallstem.msg" "bindPose1.m[12]";
connectAttr "tallstem1.msg" "bindPose1.m[13]";
connectAttr "tallstem2.msg" "bindPose1.m[14]";
connectAttr "tallstem3.msg" "bindPose1.m[15]";
connectAttr "tallstem4.msg" "bindPose1.m[16]";
connectAttr "tallstem5.msg" "bindPose1.m[17]";
connectAttr "tallstem6.msg" "bindPose1.m[18]";
connectAttr "tallstem7.msg" "bindPose1.m[19]";
connectAttr "tallstem8.msg" "bindPose1.m[20]";
connectAttr "tallstem9.msg" "bindPose1.m[21]";
connectAttr "tallstem10.msg" "bindPose1.m[22]";
connectAttr "tallfruit.msg" "bindPose1.m[23]";
connectAttr "shortFruit.msg" "bindPose1.m[36]";
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
connectAttr "bindPose1.m[5]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[10]" "bindPose1.p[36]";
connectAttr "stem.bps" "bindPose1.wm[0]";
connectAttr "stem1.bps" "bindPose1.wm[1]";
connectAttr "stem2.bps" "bindPose1.wm[2]";
connectAttr "stem3.bps" "bindPose1.wm[3]";
connectAttr "stem4.bps" "bindPose1.wm[4]";
connectAttr "stem5.bps" "bindPose1.wm[5]";
connectAttr "shortstem.bps" "bindPose1.wm[6]";
connectAttr "shortstem1.bps" "bindPose1.wm[7]";
connectAttr "shortstem2.bps" "bindPose1.wm[8]";
connectAttr "shortstem3.bps" "bindPose1.wm[9]";
connectAttr "shortstem4.bps" "bindPose1.wm[10]";
connectAttr "tallstem.bps" "bindPose1.wm[12]";
connectAttr "tallstem1.bps" "bindPose1.wm[13]";
connectAttr "tallstem2.bps" "bindPose1.wm[14]";
connectAttr "tallstem3.bps" "bindPose1.wm[15]";
connectAttr "tallstem4.bps" "bindPose1.wm[16]";
connectAttr "tallstem5.bps" "bindPose1.wm[17]";
connectAttr "tallstem6.bps" "bindPose1.wm[18]";
connectAttr "tallstem7.bps" "bindPose1.wm[19]";
connectAttr "tallstem8.bps" "bindPose1.wm[20]";
connectAttr "tallstem9.bps" "bindPose1.wm[21]";
connectAttr "tallstem10.bps" "bindPose1.wm[22]";
connectAttr "tallfruit.bps" "bindPose1.wm[23]";
connectAttr "shortFruit.bps" "bindPose1.wm[36]";
connectAttr "stem.wm" "skinCluster39.ma[0]";
connectAttr "stem1.wm" "skinCluster39.ma[1]";
connectAttr "stem2.wm" "skinCluster39.ma[2]";
connectAttr "stem3.wm" "skinCluster39.ma[3]";
connectAttr "stem4.wm" "skinCluster39.ma[4]";
connectAttr "shortstem4.wm" "skinCluster39.ma[10]";
connectAttr "shortFruit.wm" "skinCluster39.ma[11]";
connectAttr "stem.liw" "skinCluster39.lw[0]";
connectAttr "stem1.liw" "skinCluster39.lw[1]";
connectAttr "stem2.liw" "skinCluster39.lw[2]";
connectAttr "stem3.liw" "skinCluster39.lw[3]";
connectAttr "stem4.liw" "skinCluster39.lw[4]";
connectAttr "shortstem4.liw" "skinCluster39.lw[10]";
connectAttr "shortFruit.liw" "skinCluster39.lw[11]";
connectAttr "stem.obcc" "skinCluster39.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster39.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster39.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster39.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster39.ifcl[4]";
connectAttr "shortstem4.obcc" "skinCluster39.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster39.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster39.bp";
connectAttr "shortFruit.msg" "skinCluster39.ptt";
connectAttr "stem.wm" "skinCluster38.ma[0]";
connectAttr "stem1.wm" "skinCluster38.ma[1]";
connectAttr "stem2.wm" "skinCluster38.ma[2]";
connectAttr "stem3.wm" "skinCluster38.ma[3]";
connectAttr "shortstem4.wm" "skinCluster38.ma[10]";
connectAttr "shortFruit.wm" "skinCluster38.ma[11]";
connectAttr "stem.liw" "skinCluster38.lw[0]";
connectAttr "stem1.liw" "skinCluster38.lw[1]";
connectAttr "stem2.liw" "skinCluster38.lw[2]";
connectAttr "stem3.liw" "skinCluster38.lw[3]";
connectAttr "shortstem4.liw" "skinCluster38.lw[10]";
connectAttr "shortFruit.liw" "skinCluster38.lw[11]";
connectAttr "stem.obcc" "skinCluster38.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster38.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster38.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster38.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster38.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster38.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster38.bp";
connectAttr "shortstem4.msg" "skinCluster38.ptt";
connectAttr "stem.wm" "skinCluster37.ma[0]";
connectAttr "stem1.wm" "skinCluster37.ma[1]";
connectAttr "stem2.wm" "skinCluster37.ma[2]";
connectAttr "stem3.wm" "skinCluster37.ma[3]";
connectAttr "shortstem4.wm" "skinCluster37.ma[10]";
connectAttr "shortFruit.wm" "skinCluster37.ma[11]";
connectAttr "stem.liw" "skinCluster37.lw[0]";
connectAttr "stem1.liw" "skinCluster37.lw[1]";
connectAttr "stem2.liw" "skinCluster37.lw[2]";
connectAttr "stem3.liw" "skinCluster37.lw[3]";
connectAttr "shortstem4.liw" "skinCluster37.lw[10]";
connectAttr "shortFruit.liw" "skinCluster37.lw[11]";
connectAttr "stem.obcc" "skinCluster37.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster37.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster37.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster37.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster37.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster37.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster37.bp";
connectAttr "shortFruit.msg" "skinCluster37.ptt";
connectAttr "stem.wm" "skinCluster36.ma[0]";
connectAttr "stem1.wm" "skinCluster36.ma[1]";
connectAttr "stem2.wm" "skinCluster36.ma[2]";
connectAttr "stem3.wm" "skinCluster36.ma[3]";
connectAttr "shortstem4.wm" "skinCluster36.ma[10]";
connectAttr "shortFruit.wm" "skinCluster36.ma[11]";
connectAttr "stem.liw" "skinCluster36.lw[0]";
connectAttr "stem1.liw" "skinCluster36.lw[1]";
connectAttr "stem2.liw" "skinCluster36.lw[2]";
connectAttr "stem3.liw" "skinCluster36.lw[3]";
connectAttr "shortstem4.liw" "skinCluster36.lw[10]";
connectAttr "shortFruit.liw" "skinCluster36.lw[11]";
connectAttr "stem.obcc" "skinCluster36.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster36.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster36.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster36.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster36.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster36.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster36.bp";
connectAttr "shortstem4.msg" "skinCluster36.ptt";
connectAttr "stem.wm" "skinCluster35.ma[0]";
connectAttr "stem1.wm" "skinCluster35.ma[1]";
connectAttr "stem2.wm" "skinCluster35.ma[2]";
connectAttr "stem3.wm" "skinCluster35.ma[3]";
connectAttr "shortstem4.wm" "skinCluster35.ma[10]";
connectAttr "shortFruit.wm" "skinCluster35.ma[11]";
connectAttr "stem.liw" "skinCluster35.lw[0]";
connectAttr "stem1.liw" "skinCluster35.lw[1]";
connectAttr "stem2.liw" "skinCluster35.lw[2]";
connectAttr "stem3.liw" "skinCluster35.lw[3]";
connectAttr "shortstem4.liw" "skinCluster35.lw[10]";
connectAttr "shortFruit.liw" "skinCluster35.lw[11]";
connectAttr "stem.obcc" "skinCluster35.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster35.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster35.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster35.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster35.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster35.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster35.bp";
connectAttr "shortstem4.msg" "skinCluster35.ptt";
connectAttr "stem.wm" "skinCluster34.ma[0]";
connectAttr "stem1.wm" "skinCluster34.ma[1]";
connectAttr "stem2.wm" "skinCluster34.ma[2]";
connectAttr "stem3.wm" "skinCluster34.ma[3]";
connectAttr "shortstem4.wm" "skinCluster34.ma[10]";
connectAttr "shortFruit.wm" "skinCluster34.ma[11]";
connectAttr "stem.liw" "skinCluster34.lw[0]";
connectAttr "stem1.liw" "skinCluster34.lw[1]";
connectAttr "stem2.liw" "skinCluster34.lw[2]";
connectAttr "stem3.liw" "skinCluster34.lw[3]";
connectAttr "shortstem4.liw" "skinCluster34.lw[10]";
connectAttr "shortFruit.liw" "skinCluster34.lw[11]";
connectAttr "stem.obcc" "skinCluster34.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster34.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster34.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster34.ifcl[3]";
connectAttr "shortstem4.obcc" "skinCluster34.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster34.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster34.bp";
connectAttr "shortstem4.msg" "skinCluster34.ptt";
connectAttr "stem5.wm" "skinCluster33.ma[5]";
connectAttr "shortstem.wm" "skinCluster33.ma[6]";
connectAttr "shortstem1.wm" "skinCluster33.ma[7]";
connectAttr "shortstem2.wm" "skinCluster33.ma[8]";
connectAttr "shortstem3.wm" "skinCluster33.ma[9]";
connectAttr "shortstem4.wm" "skinCluster33.ma[10]";
connectAttr "stem5.liw" "skinCluster33.lw[5]";
connectAttr "shortstem.liw" "skinCluster33.lw[6]";
connectAttr "shortstem1.liw" "skinCluster33.lw[7]";
connectAttr "shortstem2.liw" "skinCluster33.lw[8]";
connectAttr "shortstem3.liw" "skinCluster33.lw[9]";
connectAttr "shortstem4.liw" "skinCluster33.lw[10]";
connectAttr "stem5.obcc" "skinCluster33.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster33.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster33.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster33.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster33.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster33.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster33.bp";
connectAttr "tallstem4.wm" "skinCluster32.ma[16]";
connectAttr "tallstem5.wm" "skinCluster32.ma[17]";
connectAttr "tallstem6.wm" "skinCluster32.ma[18]";
connectAttr "tallstem7.wm" "skinCluster32.ma[19]";
connectAttr "tallstem8.wm" "skinCluster32.ma[20]";
connectAttr "tallstem9.wm" "skinCluster32.ma[21]";
connectAttr "tallstem4.liw" "skinCluster32.lw[16]";
connectAttr "tallstem5.liw" "skinCluster32.lw[17]";
connectAttr "tallstem6.liw" "skinCluster32.lw[18]";
connectAttr "tallstem7.liw" "skinCluster32.lw[19]";
connectAttr "tallstem8.liw" "skinCluster32.lw[20]";
connectAttr "tallstem9.liw" "skinCluster32.lw[21]";
connectAttr "tallstem4.obcc" "skinCluster32.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster32.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster32.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster32.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster32.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster32.ifcl[21]";
connectAttr "bindPose1.msg" "skinCluster32.bp";
connectAttr "tallstem4.wm" "skinCluster31.ma[16]";
connectAttr "tallstem5.wm" "skinCluster31.ma[17]";
connectAttr "tallstem6.wm" "skinCluster31.ma[18]";
connectAttr "tallstem7.wm" "skinCluster31.ma[19]";
connectAttr "tallstem8.wm" "skinCluster31.ma[20]";
connectAttr "tallstem9.wm" "skinCluster31.ma[21]";
connectAttr "tallstem10.wm" "skinCluster31.ma[22]";
connectAttr "tallstem4.liw" "skinCluster31.lw[16]";
connectAttr "tallstem5.liw" "skinCluster31.lw[17]";
connectAttr "tallstem6.liw" "skinCluster31.lw[18]";
connectAttr "tallstem7.liw" "skinCluster31.lw[19]";
connectAttr "tallstem8.liw" "skinCluster31.lw[20]";
connectAttr "tallstem9.liw" "skinCluster31.lw[21]";
connectAttr "tallstem10.liw" "skinCluster31.lw[22]";
connectAttr "tallstem4.obcc" "skinCluster31.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster31.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster31.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster31.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster31.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster31.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster31.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster31.bp";
connectAttr "stem5.wm" "skinCluster30.ma[5]";
connectAttr "shortstem.wm" "skinCluster30.ma[6]";
connectAttr "shortstem1.wm" "skinCluster30.ma[7]";
connectAttr "tallstem.wm" "skinCluster30.ma[12]";
connectAttr "tallstem1.wm" "skinCluster30.ma[13]";
connectAttr "tallstem2.wm" "skinCluster30.ma[14]";
connectAttr "tallstem3.wm" "skinCluster30.ma[15]";
connectAttr "tallstem4.wm" "skinCluster30.ma[16]";
connectAttr "stem5.liw" "skinCluster30.lw[5]";
connectAttr "shortstem.liw" "skinCluster30.lw[6]";
connectAttr "shortstem1.liw" "skinCluster30.lw[7]";
connectAttr "tallstem.liw" "skinCluster30.lw[12]";
connectAttr "tallstem1.liw" "skinCluster30.lw[13]";
connectAttr "tallstem2.liw" "skinCluster30.lw[14]";
connectAttr "tallstem3.liw" "skinCluster30.lw[15]";
connectAttr "tallstem4.liw" "skinCluster30.lw[16]";
connectAttr "stem5.obcc" "skinCluster30.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster30.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster30.ifcl[7]";
connectAttr "tallstem.obcc" "skinCluster30.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster30.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster30.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster30.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster30.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster30.bp";
connectAttr "stem5.wm" "skinCluster29.ma[5]";
connectAttr "shortstem.wm" "skinCluster29.ma[6]";
connectAttr "tallstem.wm" "skinCluster29.ma[12]";
connectAttr "tallstem1.wm" "skinCluster29.ma[13]";
connectAttr "tallstem2.wm" "skinCluster29.ma[14]";
connectAttr "tallstem3.wm" "skinCluster29.ma[15]";
connectAttr "tallstem4.wm" "skinCluster29.ma[16]";
connectAttr "tallstem5.wm" "skinCluster29.ma[17]";
connectAttr "stem5.liw" "skinCluster29.lw[5]";
connectAttr "shortstem.liw" "skinCluster29.lw[6]";
connectAttr "tallstem.liw" "skinCluster29.lw[12]";
connectAttr "tallstem1.liw" "skinCluster29.lw[13]";
connectAttr "tallstem2.liw" "skinCluster29.lw[14]";
connectAttr "tallstem3.liw" "skinCluster29.lw[15]";
connectAttr "tallstem4.liw" "skinCluster29.lw[16]";
connectAttr "tallstem5.liw" "skinCluster29.lw[17]";
connectAttr "stem5.obcc" "skinCluster29.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster29.ifcl[6]";
connectAttr "tallstem.obcc" "skinCluster29.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster29.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster29.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster29.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster29.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster29.ifcl[17]";
connectAttr "bindPose1.msg" "skinCluster29.bp";
connectAttr "stem5.wm" "skinCluster28.ma[5]";
connectAttr "shortstem.wm" "skinCluster28.ma[6]";
connectAttr "shortstem1.wm" "skinCluster28.ma[7]";
connectAttr "shortstem2.wm" "skinCluster28.ma[8]";
connectAttr "shortstem3.wm" "skinCluster28.ma[9]";
connectAttr "shortstem4.wm" "skinCluster28.ma[10]";
connectAttr "stem5.liw" "skinCluster28.lw[5]";
connectAttr "shortstem.liw" "skinCluster28.lw[6]";
connectAttr "shortstem1.liw" "skinCluster28.lw[7]";
connectAttr "shortstem2.liw" "skinCluster28.lw[8]";
connectAttr "shortstem3.liw" "skinCluster28.lw[9]";
connectAttr "shortstem4.liw" "skinCluster28.lw[10]";
connectAttr "stem5.obcc" "skinCluster28.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster28.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster28.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster28.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster28.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster28.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster28.bp";
connectAttr "tweak5.og[0]" "skinCluster27.ip[0].ig";
connectAttr "stem.wm" "skinCluster27.ma[0]";
connectAttr "stem1.wm" "skinCluster27.ma[1]";
connectAttr "stem2.wm" "skinCluster27.ma[2]";
connectAttr "stem3.wm" "skinCluster27.ma[3]";
connectAttr "stem4.wm" "skinCluster27.ma[4]";
connectAttr "stem5.wm" "skinCluster27.ma[5]";
connectAttr "shortstem.wm" "skinCluster27.ma[6]";
connectAttr "shortstem1.wm" "skinCluster27.ma[7]";
connectAttr "shortstem2.wm" "skinCluster27.ma[8]";
connectAttr "shortstem3.wm" "skinCluster27.ma[9]";
connectAttr "shortstem4.wm" "skinCluster27.ma[10]";
connectAttr "shortFruit.wm" "skinCluster27.ma[11]";
connectAttr "tallstem.wm" "skinCluster27.ma[12]";
connectAttr "tallstem1.wm" "skinCluster27.ma[13]";
connectAttr "tallstem2.wm" "skinCluster27.ma[14]";
connectAttr "tallstem3.wm" "skinCluster27.ma[15]";
connectAttr "tallstem4.wm" "skinCluster27.ma[16]";
connectAttr "tallstem5.wm" "skinCluster27.ma[17]";
connectAttr "tallstem6.wm" "skinCluster27.ma[18]";
connectAttr "tallstem7.wm" "skinCluster27.ma[19]";
connectAttr "tallstem8.wm" "skinCluster27.ma[20]";
connectAttr "tallstem9.wm" "skinCluster27.ma[21]";
connectAttr "tallstem10.wm" "skinCluster27.ma[22]";
connectAttr "stem.liw" "skinCluster27.lw[0]";
connectAttr "stem1.liw" "skinCluster27.lw[1]";
connectAttr "stem2.liw" "skinCluster27.lw[2]";
connectAttr "stem3.liw" "skinCluster27.lw[3]";
connectAttr "stem4.liw" "skinCluster27.lw[4]";
connectAttr "stem5.liw" "skinCluster27.lw[5]";
connectAttr "shortstem.liw" "skinCluster27.lw[6]";
connectAttr "shortstem1.liw" "skinCluster27.lw[7]";
connectAttr "shortstem2.liw" "skinCluster27.lw[8]";
connectAttr "shortstem3.liw" "skinCluster27.lw[9]";
connectAttr "shortstem4.liw" "skinCluster27.lw[10]";
connectAttr "shortFruit.liw" "skinCluster27.lw[11]";
connectAttr "tallstem.liw" "skinCluster27.lw[12]";
connectAttr "tallstem1.liw" "skinCluster27.lw[13]";
connectAttr "tallstem2.liw" "skinCluster27.lw[14]";
connectAttr "tallstem3.liw" "skinCluster27.lw[15]";
connectAttr "tallstem4.liw" "skinCluster27.lw[16]";
connectAttr "tallstem5.liw" "skinCluster27.lw[17]";
connectAttr "tallstem6.liw" "skinCluster27.lw[18]";
connectAttr "tallstem7.liw" "skinCluster27.lw[19]";
connectAttr "tallstem8.liw" "skinCluster27.lw[20]";
connectAttr "tallstem9.liw" "skinCluster27.lw[21]";
connectAttr "tallstem10.liw" "skinCluster27.lw[22]";
connectAttr "stem.obcc" "skinCluster27.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster27.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster27.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster27.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster27.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster27.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster27.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster27.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster27.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster27.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster27.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster27.ifcl[11]";
connectAttr "tallstem.obcc" "skinCluster27.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster27.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster27.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster27.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster27.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster27.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster27.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster27.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster27.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster27.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster27.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster27.bp";
connectAttr "stem.wm" "skinCluster26.ma[0]";
connectAttr "stem1.wm" "skinCluster26.ma[1]";
connectAttr "stem2.wm" "skinCluster26.ma[2]";
connectAttr "stem3.wm" "skinCluster26.ma[3]";
connectAttr "stem4.wm" "skinCluster26.ma[4]";
connectAttr "stem5.wm" "skinCluster26.ma[5]";
connectAttr "shortstem.wm" "skinCluster26.ma[6]";
connectAttr "shortstem1.wm" "skinCluster26.ma[7]";
connectAttr "shortstem2.wm" "skinCluster26.ma[8]";
connectAttr "shortstem3.wm" "skinCluster26.ma[9]";
connectAttr "shortstem4.wm" "skinCluster26.ma[10]";
connectAttr "shortFruit.wm" "skinCluster26.ma[11]";
connectAttr "tallstem.wm" "skinCluster26.ma[12]";
connectAttr "tallstem1.wm" "skinCluster26.ma[13]";
connectAttr "tallstem2.wm" "skinCluster26.ma[14]";
connectAttr "tallstem3.wm" "skinCluster26.ma[15]";
connectAttr "tallstem4.wm" "skinCluster26.ma[16]";
connectAttr "tallstem5.wm" "skinCluster26.ma[17]";
connectAttr "tallstem6.wm" "skinCluster26.ma[18]";
connectAttr "tallstem7.wm" "skinCluster26.ma[19]";
connectAttr "tallstem8.wm" "skinCluster26.ma[20]";
connectAttr "tallstem9.wm" "skinCluster26.ma[21]";
connectAttr "tallstem10.wm" "skinCluster26.ma[22]";
connectAttr "stem.liw" "skinCluster26.lw[0]";
connectAttr "stem1.liw" "skinCluster26.lw[1]";
connectAttr "stem2.liw" "skinCluster26.lw[2]";
connectAttr "stem3.liw" "skinCluster26.lw[3]";
connectAttr "stem4.liw" "skinCluster26.lw[4]";
connectAttr "stem5.liw" "skinCluster26.lw[5]";
connectAttr "shortstem.liw" "skinCluster26.lw[6]";
connectAttr "shortstem1.liw" "skinCluster26.lw[7]";
connectAttr "shortstem2.liw" "skinCluster26.lw[8]";
connectAttr "shortstem3.liw" "skinCluster26.lw[9]";
connectAttr "shortstem4.liw" "skinCluster26.lw[10]";
connectAttr "shortFruit.liw" "skinCluster26.lw[11]";
connectAttr "tallstem.liw" "skinCluster26.lw[12]";
connectAttr "tallstem1.liw" "skinCluster26.lw[13]";
connectAttr "tallstem2.liw" "skinCluster26.lw[14]";
connectAttr "tallstem3.liw" "skinCluster26.lw[15]";
connectAttr "tallstem4.liw" "skinCluster26.lw[16]";
connectAttr "tallstem5.liw" "skinCluster26.lw[17]";
connectAttr "tallstem6.liw" "skinCluster26.lw[18]";
connectAttr "tallstem7.liw" "skinCluster26.lw[19]";
connectAttr "tallstem8.liw" "skinCluster26.lw[20]";
connectAttr "tallstem9.liw" "skinCluster26.lw[21]";
connectAttr "tallstem10.liw" "skinCluster26.lw[22]";
connectAttr "stem.obcc" "skinCluster26.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster26.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster26.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster26.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster26.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster26.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster26.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster26.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster26.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster26.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster26.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster26.ifcl[11]";
connectAttr "tallstem.obcc" "skinCluster26.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster26.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster26.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster26.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster26.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster26.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster26.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster26.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster26.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster26.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster26.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster26.bp";
connectAttr "stem1.wm" "skinCluster25.ma[1]";
connectAttr "stem2.wm" "skinCluster25.ma[2]";
connectAttr "shortstem3.wm" "skinCluster25.ma[9]";
connectAttr "shortstem4.wm" "skinCluster25.ma[10]";
connectAttr "shortFruit.wm" "skinCluster25.ma[11]";
connectAttr "stem1.liw" "skinCluster25.lw[1]";
connectAttr "stem2.liw" "skinCluster25.lw[2]";
connectAttr "shortstem3.liw" "skinCluster25.lw[9]";
connectAttr "shortstem4.liw" "skinCluster25.lw[10]";
connectAttr "shortFruit.liw" "skinCluster25.lw[11]";
connectAttr "stem1.obcc" "skinCluster25.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster25.ifcl[2]";
connectAttr "shortstem3.obcc" "skinCluster25.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster25.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster25.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster25.bp";
connectAttr "shortFruit.msg" "skinCluster25.ptt";
connectAttr "stem1.wm" "skinCluster24.ma[1]";
connectAttr "stem2.wm" "skinCluster24.ma[2]";
connectAttr "stem3.wm" "skinCluster24.ma[3]";
connectAttr "shortstem3.wm" "skinCluster24.ma[9]";
connectAttr "shortstem4.wm" "skinCluster24.ma[10]";
connectAttr "shortFruit.wm" "skinCluster24.ma[11]";
connectAttr "stem1.liw" "skinCluster24.lw[1]";
connectAttr "stem2.liw" "skinCluster24.lw[2]";
connectAttr "stem3.liw" "skinCluster24.lw[3]";
connectAttr "shortstem3.liw" "skinCluster24.lw[9]";
connectAttr "shortstem4.liw" "skinCluster24.lw[10]";
connectAttr "shortFruit.liw" "skinCluster24.lw[11]";
connectAttr "stem1.obcc" "skinCluster24.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster24.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster24.ifcl[3]";
connectAttr "shortstem3.obcc" "skinCluster24.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster24.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster24.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster24.bp";
connectAttr "shortFruit.msg" "skinCluster24.ptt";
connectAttr "stem1.wm" "skinCluster23.ma[1]";
connectAttr "stem2.wm" "skinCluster23.ma[2]";
connectAttr "shortstem3.wm" "skinCluster23.ma[9]";
connectAttr "shortstem4.wm" "skinCluster23.ma[10]";
connectAttr "shortFruit.wm" "skinCluster23.ma[11]";
connectAttr "stem1.liw" "skinCluster23.lw[1]";
connectAttr "stem2.liw" "skinCluster23.lw[2]";
connectAttr "shortstem3.liw" "skinCluster23.lw[9]";
connectAttr "shortstem4.liw" "skinCluster23.lw[10]";
connectAttr "shortFruit.liw" "skinCluster23.lw[11]";
connectAttr "stem1.obcc" "skinCluster23.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster23.ifcl[2]";
connectAttr "shortstem3.obcc" "skinCluster23.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster23.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster23.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster23.bp";
connectAttr "shortFruit.msg" "skinCluster23.ptt";
connectAttr "stem1.wm" "skinCluster22.ma[1]";
connectAttr "stem2.wm" "skinCluster22.ma[2]";
connectAttr "shortstem3.wm" "skinCluster22.ma[9]";
connectAttr "shortstem4.wm" "skinCluster22.ma[10]";
connectAttr "shortFruit.wm" "skinCluster22.ma[11]";
connectAttr "stem1.liw" "skinCluster22.lw[1]";
connectAttr "stem2.liw" "skinCluster22.lw[2]";
connectAttr "shortstem3.liw" "skinCluster22.lw[9]";
connectAttr "shortstem4.liw" "skinCluster22.lw[10]";
connectAttr "shortFruit.liw" "skinCluster22.lw[11]";
connectAttr "stem1.obcc" "skinCluster22.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster22.ifcl[2]";
connectAttr "shortstem3.obcc" "skinCluster22.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster22.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster22.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster22.bp";
connectAttr "shortFruit.msg" "skinCluster22.ptt";
connectAttr "tweak4.og[0]" "skinCluster21.ip[0].ig";
connectAttr "stem1.wm" "skinCluster21.ma[1]";
connectAttr "stem2.wm" "skinCluster21.ma[2]";
connectAttr "stem3.wm" "skinCluster21.ma[3]";
connectAttr "shortstem3.wm" "skinCluster21.ma[9]";
connectAttr "shortstem4.wm" "skinCluster21.ma[10]";
connectAttr "shortFruit.wm" "skinCluster21.ma[11]";
connectAttr "stem1.liw" "skinCluster21.lw[1]";
connectAttr "stem2.liw" "skinCluster21.lw[2]";
connectAttr "stem3.liw" "skinCluster21.lw[3]";
connectAttr "shortstem3.liw" "skinCluster21.lw[9]";
connectAttr "shortstem4.liw" "skinCluster21.lw[10]";
connectAttr "shortFruit.liw" "skinCluster21.lw[11]";
connectAttr "stem1.obcc" "skinCluster21.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster21.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster21.ifcl[3]";
connectAttr "shortstem3.obcc" "skinCluster21.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster21.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster21.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster21.bp";
connectAttr "shortFruit.msg" "skinCluster21.ptt";
connectAttr "shortstem.wm" "skinCluster20.ma[6]";
connectAttr "shortstem1.wm" "skinCluster20.ma[7]";
connectAttr "shortstem2.wm" "skinCluster20.ma[8]";
connectAttr "shortstem3.wm" "skinCluster20.ma[9]";
connectAttr "shortstem4.wm" "skinCluster20.ma[10]";
connectAttr "shortstem.liw" "skinCluster20.lw[6]";
connectAttr "shortstem1.liw" "skinCluster20.lw[7]";
connectAttr "shortstem2.liw" "skinCluster20.lw[8]";
connectAttr "shortstem3.liw" "skinCluster20.lw[9]";
connectAttr "shortstem4.liw" "skinCluster20.lw[10]";
connectAttr "shortstem.obcc" "skinCluster20.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster20.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster20.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster20.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster20.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster20.bp";
connectAttr "shortstem4.msg" "skinCluster20.ptt";
connectAttr "shortstem.wm" "skinCluster19.ma[6]";
connectAttr "shortstem1.wm" "skinCluster19.ma[7]";
connectAttr "shortstem2.wm" "skinCluster19.ma[8]";
connectAttr "shortstem3.wm" "skinCluster19.ma[9]";
connectAttr "shortstem4.wm" "skinCluster19.ma[10]";
connectAttr "shortstem.liw" "skinCluster19.lw[6]";
connectAttr "shortstem1.liw" "skinCluster19.lw[7]";
connectAttr "shortstem2.liw" "skinCluster19.lw[8]";
connectAttr "shortstem3.liw" "skinCluster19.lw[9]";
connectAttr "shortstem4.liw" "skinCluster19.lw[10]";
connectAttr "shortstem.obcc" "skinCluster19.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster19.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster19.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster19.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster19.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster19.bp";
connectAttr "shortstem4.msg" "skinCluster19.ptt";
connectAttr "shortstem.wm" "skinCluster18.ma[6]";
connectAttr "shortstem1.wm" "skinCluster18.ma[7]";
connectAttr "shortstem2.wm" "skinCluster18.ma[8]";
connectAttr "shortstem3.wm" "skinCluster18.ma[9]";
connectAttr "shortstem4.wm" "skinCluster18.ma[10]";
connectAttr "shortstem.liw" "skinCluster18.lw[6]";
connectAttr "shortstem1.liw" "skinCluster18.lw[7]";
connectAttr "shortstem2.liw" "skinCluster18.lw[8]";
connectAttr "shortstem3.liw" "skinCluster18.lw[9]";
connectAttr "shortstem4.liw" "skinCluster18.lw[10]";
connectAttr "shortstem.obcc" "skinCluster18.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster18.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster18.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster18.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster18.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster18.bp";
connectAttr "shortstem4.msg" "skinCluster18.ptt";
connectAttr "stem5.wm" "skinCluster17.ma[5]";
connectAttr "shortstem.wm" "skinCluster17.ma[6]";
connectAttr "shortstem1.wm" "skinCluster17.ma[7]";
connectAttr "shortstem2.wm" "skinCluster17.ma[8]";
connectAttr "shortstem3.wm" "skinCluster17.ma[9]";
connectAttr "shortstem4.wm" "skinCluster17.ma[10]";
connectAttr "stem5.liw" "skinCluster17.lw[5]";
connectAttr "shortstem.liw" "skinCluster17.lw[6]";
connectAttr "shortstem1.liw" "skinCluster17.lw[7]";
connectAttr "shortstem2.liw" "skinCluster17.lw[8]";
connectAttr "shortstem3.liw" "skinCluster17.lw[9]";
connectAttr "shortstem4.liw" "skinCluster17.lw[10]";
connectAttr "stem5.obcc" "skinCluster17.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster17.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster17.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster17.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster17.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster17.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster17.bp";
connectAttr "shortstem4.msg" "skinCluster17.ptt";
connectAttr "stem5.wm" "skinCluster16.ma[5]";
connectAttr "shortstem.wm" "skinCluster16.ma[6]";
connectAttr "shortstem1.wm" "skinCluster16.ma[7]";
connectAttr "shortstem2.wm" "skinCluster16.ma[8]";
connectAttr "shortstem3.wm" "skinCluster16.ma[9]";
connectAttr "shortstem4.wm" "skinCluster16.ma[10]";
connectAttr "stem5.liw" "skinCluster16.lw[5]";
connectAttr "shortstem.liw" "skinCluster16.lw[6]";
connectAttr "shortstem1.liw" "skinCluster16.lw[7]";
connectAttr "shortstem2.liw" "skinCluster16.lw[8]";
connectAttr "shortstem3.liw" "skinCluster16.lw[9]";
connectAttr "shortstem4.liw" "skinCluster16.lw[10]";
connectAttr "stem5.obcc" "skinCluster16.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster16.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster16.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster16.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster16.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster16.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster16.bp";
connectAttr "shortstem4.msg" "skinCluster16.ptt";
connectAttr "shortstem.wm" "skinCluster15.ma[6]";
connectAttr "shortstem1.wm" "skinCluster15.ma[7]";
connectAttr "shortstem2.wm" "skinCluster15.ma[8]";
connectAttr "shortstem3.wm" "skinCluster15.ma[9]";
connectAttr "shortstem4.wm" "skinCluster15.ma[10]";
connectAttr "shortstem.liw" "skinCluster15.lw[6]";
connectAttr "shortstem1.liw" "skinCluster15.lw[7]";
connectAttr "shortstem2.liw" "skinCluster15.lw[8]";
connectAttr "shortstem3.liw" "skinCluster15.lw[9]";
connectAttr "shortstem4.liw" "skinCluster15.lw[10]";
connectAttr "shortstem.obcc" "skinCluster15.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster15.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster15.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster15.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster15.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster15.bp";
connectAttr "shortstem4.msg" "skinCluster15.ptt";
connectAttr "tweak3.og[0]" "skinCluster14.ip[0].ig";
connectAttr "stem1.wm" "skinCluster14.ma[1]";
connectAttr "stem2.wm" "skinCluster14.ma[2]";
connectAttr "stem3.wm" "skinCluster14.ma[3]";
connectAttr "stem4.wm" "skinCluster14.ma[4]";
connectAttr "stem5.wm" "skinCluster14.ma[5]";
connectAttr "shortstem.wm" "skinCluster14.ma[6]";
connectAttr "shortstem1.wm" "skinCluster14.ma[7]";
connectAttr "shortstem2.wm" "skinCluster14.ma[8]";
connectAttr "shortstem3.wm" "skinCluster14.ma[9]";
connectAttr "shortstem4.wm" "skinCluster14.ma[10]";
connectAttr "shortFruit.wm" "skinCluster14.ma[11]";
connectAttr "stem1.liw" "skinCluster14.lw[1]";
connectAttr "stem2.liw" "skinCluster14.lw[2]";
connectAttr "stem3.liw" "skinCluster14.lw[3]";
connectAttr "stem4.liw" "skinCluster14.lw[4]";
connectAttr "stem5.liw" "skinCluster14.lw[5]";
connectAttr "shortstem.liw" "skinCluster14.lw[6]";
connectAttr "shortstem1.liw" "skinCluster14.lw[7]";
connectAttr "shortstem2.liw" "skinCluster14.lw[8]";
connectAttr "shortstem3.liw" "skinCluster14.lw[9]";
connectAttr "shortstem4.liw" "skinCluster14.lw[10]";
connectAttr "shortFruit.liw" "skinCluster14.lw[11]";
connectAttr "stem1.obcc" "skinCluster14.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster14.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster14.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster14.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster14.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster14.ifcl[6]";
connectAttr "shortstem1.obcc" "skinCluster14.ifcl[7]";
connectAttr "shortstem2.obcc" "skinCluster14.ifcl[8]";
connectAttr "shortstem3.obcc" "skinCluster14.ifcl[9]";
connectAttr "shortstem4.obcc" "skinCluster14.ifcl[10]";
connectAttr "shortFruit.obcc" "skinCluster14.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster14.bp";
connectAttr "shortFruit.msg" "skinCluster14.ptt";
connectAttr "stem3.wm" "skinCluster13.ma[3]";
connectAttr "stem4.wm" "skinCluster13.ma[4]";
connectAttr "stem5.wm" "skinCluster13.ma[5]";
connectAttr "tallstem.wm" "skinCluster13.ma[12]";
connectAttr "tallstem10.wm" "skinCluster13.ma[22]";
connectAttr "tallfruit.wm" "skinCluster13.ma[23]";
connectAttr "stem3.liw" "skinCluster13.lw[3]";
connectAttr "stem4.liw" "skinCluster13.lw[4]";
connectAttr "stem5.liw" "skinCluster13.lw[5]";
connectAttr "tallstem.liw" "skinCluster13.lw[12]";
connectAttr "tallstem10.liw" "skinCluster13.lw[22]";
connectAttr "tallfruit.liw" "skinCluster13.lw[23]";
connectAttr "stem3.obcc" "skinCluster13.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster13.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster13.ifcl[5]";
connectAttr "tallstem.obcc" "skinCluster13.ifcl[12]";
connectAttr "tallstem10.obcc" "skinCluster13.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster13.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster13.bp";
connectAttr "tallfruit.msg" "skinCluster13.ptt";
connectAttr "stem3.wm" "skinCluster12.ma[3]";
connectAttr "stem4.wm" "skinCluster12.ma[4]";
connectAttr "stem5.wm" "skinCluster12.ma[5]";
connectAttr "tallstem10.wm" "skinCluster12.ma[22]";
connectAttr "tallfruit.wm" "skinCluster12.ma[23]";
connectAttr "stem3.liw" "skinCluster12.lw[3]";
connectAttr "stem4.liw" "skinCluster12.lw[4]";
connectAttr "stem5.liw" "skinCluster12.lw[5]";
connectAttr "tallstem10.liw" "skinCluster12.lw[22]";
connectAttr "tallfruit.liw" "skinCluster12.lw[23]";
connectAttr "stem3.obcc" "skinCluster12.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster12.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster12.ifcl[5]";
connectAttr "tallstem10.obcc" "skinCluster12.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster12.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster12.bp";
connectAttr "tallfruit.msg" "skinCluster12.ptt";
connectAttr "stem3.wm" "skinCluster11.ma[3]";
connectAttr "stem4.wm" "skinCluster11.ma[4]";
connectAttr "stem5.wm" "skinCluster11.ma[5]";
connectAttr "tallstem10.wm" "skinCluster11.ma[22]";
connectAttr "tallfruit.wm" "skinCluster11.ma[23]";
connectAttr "stem3.liw" "skinCluster11.lw[3]";
connectAttr "stem4.liw" "skinCluster11.lw[4]";
connectAttr "stem5.liw" "skinCluster11.lw[5]";
connectAttr "tallstem10.liw" "skinCluster11.lw[22]";
connectAttr "tallfruit.liw" "skinCluster11.lw[23]";
connectAttr "stem3.obcc" "skinCluster11.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster11.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster11.ifcl[5]";
connectAttr "tallstem10.obcc" "skinCluster11.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster11.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "tallfruit.msg" "skinCluster11.ptt";
connectAttr "stem3.wm" "skinCluster10.ma[3]";
connectAttr "stem4.wm" "skinCluster10.ma[4]";
connectAttr "stem5.wm" "skinCluster10.ma[5]";
connectAttr "tallstem10.wm" "skinCluster10.ma[22]";
connectAttr "tallfruit.wm" "skinCluster10.ma[23]";
connectAttr "stem3.liw" "skinCluster10.lw[3]";
connectAttr "stem4.liw" "skinCluster10.lw[4]";
connectAttr "stem5.liw" "skinCluster10.lw[5]";
connectAttr "tallstem10.liw" "skinCluster10.lw[22]";
connectAttr "tallfruit.liw" "skinCluster10.lw[23]";
connectAttr "stem3.obcc" "skinCluster10.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster10.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster10.ifcl[5]";
connectAttr "tallstem10.obcc" "skinCluster10.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster10.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "tallfruit.msg" "skinCluster10.ptt";
connectAttr "tweak2.og[0]" "skinCluster9.ip[0].ig";
connectAttr "stem2.wm" "skinCluster9.ma[2]";
connectAttr "stem3.wm" "skinCluster9.ma[3]";
connectAttr "stem4.wm" "skinCluster9.ma[4]";
connectAttr "stem5.wm" "skinCluster9.ma[5]";
connectAttr "tallstem10.wm" "skinCluster9.ma[22]";
connectAttr "tallfruit.wm" "skinCluster9.ma[23]";
connectAttr "stem2.liw" "skinCluster9.lw[2]";
connectAttr "stem3.liw" "skinCluster9.lw[3]";
connectAttr "stem4.liw" "skinCluster9.lw[4]";
connectAttr "stem5.liw" "skinCluster9.lw[5]";
connectAttr "tallstem10.liw" "skinCluster9.lw[22]";
connectAttr "tallfruit.liw" "skinCluster9.lw[23]";
connectAttr "stem2.obcc" "skinCluster9.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster9.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster9.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster9.ifcl[5]";
connectAttr "tallstem10.obcc" "skinCluster9.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster9.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "tallfruit.msg" "skinCluster9.ptt";
connectAttr "tallstem6.wm" "skinCluster8.ma[18]";
connectAttr "tallstem7.wm" "skinCluster8.ma[19]";
connectAttr "tallstem8.wm" "skinCluster8.ma[20]";
connectAttr "tallstem9.wm" "skinCluster8.ma[21]";
connectAttr "tallstem10.wm" "skinCluster8.ma[22]";
connectAttr "tallstem6.liw" "skinCluster8.lw[18]";
connectAttr "tallstem7.liw" "skinCluster8.lw[19]";
connectAttr "tallstem8.liw" "skinCluster8.lw[20]";
connectAttr "tallstem9.liw" "skinCluster8.lw[21]";
connectAttr "tallstem10.liw" "skinCluster8.lw[22]";
connectAttr "tallstem6.obcc" "skinCluster8.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster8.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster8.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster8.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster8.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "tallstem10.msg" "skinCluster8.ptt";
connectAttr "tallstem1.wm" "skinCluster7.ma[13]";
connectAttr "tallstem2.wm" "skinCluster7.ma[14]";
connectAttr "tallstem3.wm" "skinCluster7.ma[15]";
connectAttr "tallstem4.wm" "skinCluster7.ma[16]";
connectAttr "tallstem5.wm" "skinCluster7.ma[17]";
connectAttr "tallstem6.wm" "skinCluster7.ma[18]";
connectAttr "tallstem7.wm" "skinCluster7.ma[19]";
connectAttr "tallstem8.wm" "skinCluster7.ma[20]";
connectAttr "tallstem9.wm" "skinCluster7.ma[21]";
connectAttr "tallstem10.wm" "skinCluster7.ma[22]";
connectAttr "tallstem1.liw" "skinCluster7.lw[13]";
connectAttr "tallstem2.liw" "skinCluster7.lw[14]";
connectAttr "tallstem3.liw" "skinCluster7.lw[15]";
connectAttr "tallstem4.liw" "skinCluster7.lw[16]";
connectAttr "tallstem5.liw" "skinCluster7.lw[17]";
connectAttr "tallstem6.liw" "skinCluster7.lw[18]";
connectAttr "tallstem7.liw" "skinCluster7.lw[19]";
connectAttr "tallstem8.liw" "skinCluster7.lw[20]";
connectAttr "tallstem9.liw" "skinCluster7.lw[21]";
connectAttr "tallstem10.liw" "skinCluster7.lw[22]";
connectAttr "tallstem1.obcc" "skinCluster7.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster7.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster7.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster7.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster7.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster7.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster7.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster7.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster7.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster7.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "tallstem10.msg" "skinCluster7.ptt";
connectAttr "tallstem6.wm" "skinCluster6.ma[18]";
connectAttr "tallstem7.wm" "skinCluster6.ma[19]";
connectAttr "tallstem8.wm" "skinCluster6.ma[20]";
connectAttr "tallstem9.wm" "skinCluster6.ma[21]";
connectAttr "tallstem10.wm" "skinCluster6.ma[22]";
connectAttr "tallstem6.liw" "skinCluster6.lw[18]";
connectAttr "tallstem7.liw" "skinCluster6.lw[19]";
connectAttr "tallstem8.liw" "skinCluster6.lw[20]";
connectAttr "tallstem9.liw" "skinCluster6.lw[21]";
connectAttr "tallstem10.liw" "skinCluster6.lw[22]";
connectAttr "tallstem6.obcc" "skinCluster6.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster6.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster6.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster6.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster6.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "tallstem10.msg" "skinCluster6.ptt";
connectAttr "tallstem6.wm" "skinCluster5.ma[18]";
connectAttr "tallstem7.wm" "skinCluster5.ma[19]";
connectAttr "tallstem8.wm" "skinCluster5.ma[20]";
connectAttr "tallstem9.wm" "skinCluster5.ma[21]";
connectAttr "tallstem10.wm" "skinCluster5.ma[22]";
connectAttr "tallstem6.liw" "skinCluster5.lw[18]";
connectAttr "tallstem7.liw" "skinCluster5.lw[19]";
connectAttr "tallstem8.liw" "skinCluster5.lw[20]";
connectAttr "tallstem9.liw" "skinCluster5.lw[21]";
connectAttr "tallstem10.liw" "skinCluster5.lw[22]";
connectAttr "tallstem6.obcc" "skinCluster5.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster5.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster5.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster5.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster5.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "tallstem10.msg" "skinCluster5.ptt";
connectAttr "tallstem6.wm" "skinCluster4.ma[18]";
connectAttr "tallstem7.wm" "skinCluster4.ma[19]";
connectAttr "tallstem8.wm" "skinCluster4.ma[20]";
connectAttr "tallstem9.wm" "skinCluster4.ma[21]";
connectAttr "tallstem10.wm" "skinCluster4.ma[22]";
connectAttr "tallstem6.liw" "skinCluster4.lw[18]";
connectAttr "tallstem7.liw" "skinCluster4.lw[19]";
connectAttr "tallstem8.liw" "skinCluster4.lw[20]";
connectAttr "tallstem9.liw" "skinCluster4.lw[21]";
connectAttr "tallstem10.liw" "skinCluster4.lw[22]";
connectAttr "tallstem6.obcc" "skinCluster4.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster4.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster4.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster4.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster4.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "tallstem10.msg" "skinCluster4.ptt";
connectAttr "tallstem2.wm" "skinCluster3.ma[14]";
connectAttr "tallstem3.wm" "skinCluster3.ma[15]";
connectAttr "tallstem4.wm" "skinCluster3.ma[16]";
connectAttr "tallstem5.wm" "skinCluster3.ma[17]";
connectAttr "tallstem6.wm" "skinCluster3.ma[18]";
connectAttr "tallstem7.wm" "skinCluster3.ma[19]";
connectAttr "tallstem8.wm" "skinCluster3.ma[20]";
connectAttr "tallstem9.wm" "skinCluster3.ma[21]";
connectAttr "tallstem10.wm" "skinCluster3.ma[22]";
connectAttr "tallstem2.liw" "skinCluster3.lw[14]";
connectAttr "tallstem3.liw" "skinCluster3.lw[15]";
connectAttr "tallstem4.liw" "skinCluster3.lw[16]";
connectAttr "tallstem5.liw" "skinCluster3.lw[17]";
connectAttr "tallstem6.liw" "skinCluster3.lw[18]";
connectAttr "tallstem7.liw" "skinCluster3.lw[19]";
connectAttr "tallstem8.liw" "skinCluster3.lw[20]";
connectAttr "tallstem9.liw" "skinCluster3.lw[21]";
connectAttr "tallstem10.liw" "skinCluster3.lw[22]";
connectAttr "tallstem2.obcc" "skinCluster3.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster3.ifcl[15]";
connectAttr "tallstem4.obcc" "skinCluster3.ifcl[16]";
connectAttr "tallstem5.obcc" "skinCluster3.ifcl[17]";
connectAttr "tallstem6.obcc" "skinCluster3.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster3.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster3.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster3.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster3.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "tallstem10.msg" "skinCluster3.ptt";
connectAttr "stem3.wm" "skinCluster2.ma[3]";
connectAttr "stem4.wm" "skinCluster2.ma[4]";
connectAttr "stem5.wm" "skinCluster2.ma[5]";
connectAttr "shortstem.wm" "skinCluster2.ma[6]";
connectAttr "tallstem.wm" "skinCluster2.ma[12]";
connectAttr "tallstem1.wm" "skinCluster2.ma[13]";
connectAttr "tallstem2.wm" "skinCluster2.ma[14]";
connectAttr "tallstem3.wm" "skinCluster2.ma[15]";
connectAttr "tallstem6.wm" "skinCluster2.ma[18]";
connectAttr "tallstem7.wm" "skinCluster2.ma[19]";
connectAttr "tallstem8.wm" "skinCluster2.ma[20]";
connectAttr "tallstem9.wm" "skinCluster2.ma[21]";
connectAttr "tallstem10.wm" "skinCluster2.ma[22]";
connectAttr "tallfruit.wm" "skinCluster2.ma[23]";
connectAttr "stem3.liw" "skinCluster2.lw[3]";
connectAttr "stem4.liw" "skinCluster2.lw[4]";
connectAttr "stem5.liw" "skinCluster2.lw[5]";
connectAttr "shortstem.liw" "skinCluster2.lw[6]";
connectAttr "tallstem.liw" "skinCluster2.lw[12]";
connectAttr "tallstem1.liw" "skinCluster2.lw[13]";
connectAttr "tallstem2.liw" "skinCluster2.lw[14]";
connectAttr "tallstem3.liw" "skinCluster2.lw[15]";
connectAttr "tallstem6.liw" "skinCluster2.lw[18]";
connectAttr "tallstem7.liw" "skinCluster2.lw[19]";
connectAttr "tallstem8.liw" "skinCluster2.lw[20]";
connectAttr "tallstem9.liw" "skinCluster2.lw[21]";
connectAttr "tallstem10.liw" "skinCluster2.lw[22]";
connectAttr "tallfruit.liw" "skinCluster2.lw[23]";
connectAttr "stem3.obcc" "skinCluster2.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster2.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster2.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster2.ifcl[6]";
connectAttr "tallstem.obcc" "skinCluster2.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster2.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster2.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster2.ifcl[15]";
connectAttr "tallstem6.obcc" "skinCluster2.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster2.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster2.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster2.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster2.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster2.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "tallfruit.msg" "skinCluster2.ptt";
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "stem3.wm" "skinCluster1.ma[3]";
connectAttr "stem4.wm" "skinCluster1.ma[4]";
connectAttr "stem5.wm" "skinCluster1.ma[5]";
connectAttr "shortstem.wm" "skinCluster1.ma[6]";
connectAttr "tallstem.wm" "skinCluster1.ma[12]";
connectAttr "tallstem1.wm" "skinCluster1.ma[13]";
connectAttr "tallstem2.wm" "skinCluster1.ma[14]";
connectAttr "tallstem3.wm" "skinCluster1.ma[15]";
connectAttr "tallstem6.wm" "skinCluster1.ma[18]";
connectAttr "tallstem7.wm" "skinCluster1.ma[19]";
connectAttr "tallstem8.wm" "skinCluster1.ma[20]";
connectAttr "tallstem9.wm" "skinCluster1.ma[21]";
connectAttr "tallstem10.wm" "skinCluster1.ma[22]";
connectAttr "tallfruit.wm" "skinCluster1.ma[23]";
connectAttr "stem3.liw" "skinCluster1.lw[3]";
connectAttr "stem4.liw" "skinCluster1.lw[4]";
connectAttr "stem5.liw" "skinCluster1.lw[5]";
connectAttr "shortstem.liw" "skinCluster1.lw[6]";
connectAttr "tallstem.liw" "skinCluster1.lw[12]";
connectAttr "tallstem1.liw" "skinCluster1.lw[13]";
connectAttr "tallstem2.liw" "skinCluster1.lw[14]";
connectAttr "tallstem3.liw" "skinCluster1.lw[15]";
connectAttr "tallstem6.liw" "skinCluster1.lw[18]";
connectAttr "tallstem7.liw" "skinCluster1.lw[19]";
connectAttr "tallstem8.liw" "skinCluster1.lw[20]";
connectAttr "tallstem9.liw" "skinCluster1.lw[21]";
connectAttr "tallstem10.liw" "skinCluster1.lw[22]";
connectAttr "tallfruit.liw" "skinCluster1.lw[23]";
connectAttr "stem3.obcc" "skinCluster1.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster1.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster1.ifcl[5]";
connectAttr "shortstem.obcc" "skinCluster1.ifcl[6]";
connectAttr "tallstem.obcc" "skinCluster1.ifcl[12]";
connectAttr "tallstem1.obcc" "skinCluster1.ifcl[13]";
connectAttr "tallstem2.obcc" "skinCluster1.ifcl[14]";
connectAttr "tallstem3.obcc" "skinCluster1.ifcl[15]";
connectAttr "tallstem6.obcc" "skinCluster1.ifcl[18]";
connectAttr "tallstem7.obcc" "skinCluster1.ifcl[19]";
connectAttr "tallstem8.obcc" "skinCluster1.ifcl[20]";
connectAttr "tallstem9.obcc" "skinCluster1.ifcl[21]";
connectAttr "tallstem10.obcc" "skinCluster1.ifcl[22]";
connectAttr "tallfruit.obcc" "skinCluster1.ifcl[23]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "heart_big_highPolyShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "heart_big_lowPolyShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "topLeaf_big_midRightShapeDeformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "topLeaf_big_midLEFTShapeDeformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "topLeaf_big_backLeftShapeDeformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "topLeaf_big_backRightShapeDeformed.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "topLeaf_big_frontRightShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_big_frontLeftShapeDeformed.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "tear_bigShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tearLeaf_backLeft_bigShapeDeformed.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "tearLeaf_frontRight_bigShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tearLeaf_backRight_bigShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tearLeaf_frontLeft_bigShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "heart_smallShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "topLeaf_small_midRight1ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_small_midRightShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_small_backLeftShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_small_backRightShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_small_frontRightShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "topLeaf_small_frontLeftShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tear_smallShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tearLeaf_frontRight_smallShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tearLeaf_backRight_smallShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tearLeaf_backLeft_smallShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "tearLeaf_frontLeft_smallShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "plant_stem_highPolyShapeDeformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "plant_stem_lowPolyShapeDeformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "stemLeaf1ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stemLeaf2ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stemLeaf3ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stemLeaf4ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stemLeaf5ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stemLeaf6ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_bottomShape2Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_midShape2Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_topShape2Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_bottomShape1Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_midShape1Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_top1ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "vine_baseShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Lifebulb_Rigv01.ma

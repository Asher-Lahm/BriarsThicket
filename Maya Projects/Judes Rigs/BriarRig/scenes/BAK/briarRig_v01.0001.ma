//Maya ASCII 2024 scene
//Name: briarRig_v01.0001.ma
//Last modified: Tue, Oct 06, 2026 10:31:30 PM
//Codeset: UTF-8
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/Briar//scenes/briar_model_cleaned.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/Briar//scenes/briar_model_cleaned.ma";
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202607291313-3616f93589";
fileInfo "osv" "Mac OS X 20.7";
fileInfo "UUID" "FE99DB4B-B046-29B0-A1B2-418F44170985";
createNode transform -s -n "persp";
	rename -uid "AB45D8E0-9E48-47FC-C240-C6B9BEEAB1B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.8803563022859811 18.017717728626089 10.919104839658596 ;
	setAttr ".r" -type "double3" -25.538352729465942 -337.40000000073525 8.6127585637879024e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D132C56B-364C-B49C-770F-80B086985D4A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 13.153021974254621;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.35922706127166748 15.237318992614746 0.30969567969441414 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "41F11B43-3548-A93E-4299-B98E30DC625D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29738111029543074 1000.1002443605232 -2.8887814647563248 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "749DB1B6-3C4D-F787-B3DC-62827E6FF6A9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 984.86292536790825;
	setAttr ".ow" 3.9439741061191196;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0.35922706127166748 15.237318992614746 0.30969567969441414 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "AABAAF73-C446-9D2F-1E17-56951019C4F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.5212380180523708 15.097268575269542 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B37926E4-EA4C-7040-FB9B-3092434B43A6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.6553423663954459;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "243CC877-124A-18E5-1381-4791BAAAE017";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 14.119284151087601 -1.7390455175627135 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3FCA1946-FE40-A54A-5544-E6AF75B7A8A6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.9162519539407228;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "FitSkeleton";
	rename -uid "8588BB34-3A45-F83E-BD75-96AFBDBCEBA2";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	addAttr -ci true -m -sn "drivingSystem_Fingers_R" -ln "drivingSystem_Fingers_R" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "drivingSystem_Fingers_L" -ln "drivingSystem_Fingers_L" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fitSkeletonTemplate" -ln "fitSkeletonTemplate" -dt "string";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useOffsetParentMatrix" -ln "useOffsetParentMatrix" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "subControllers" -ln "subControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraControllers" -ln "extraControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".visCylinders" yes;
	setAttr ".visGap" 1;
	setAttr -s 36 ".drivingSystem";
	setAttr -s 18 ".drivingSystem_Fingers_R";
	setAttr -s 18 ".drivingSystem_Fingers_R";
	setAttr -s 18 ".drivingSystem_Fingers_L";
	setAttr -s 18 ".drivingSystem_Fingers_L";
	setAttr ".fitSkeletonTemplate" -type "string" "biped";
	setAttr ".objectsSkin" -type "string" "";
	setAttr ".objectsAll" -type "string" "";
	setAttr ".objectsRightEye" -type "string" "";
	setAttr ".objectsLeftEye" -type "string" "";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "A2B95ACF-5941-B47E-6023-79A1FD15D5A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		-3.3245825626631635 5.899006384856358e-32 -9.6338085217116898e-16
		-2.3508348746736734 -1.4394712022965408e-16 2.350834874673672
		-1.0017616090771558e-15 -2.0357196969332745e-16 3.3245825626631644
		2.3508348746736716 -1.4394712022965413e-16 2.3508348746736729
		3.3245825626631635 -1.0933890203714376e-31 1.7856397797841755e-15
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "A4E25B71-FA4B-EB62-A54F-4C8F20A5F23F";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -max 10 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "numMainExtras" -ln "numMainExtras" -min 0 -at "long";
	setAttr ".t" -type "double3" 1.9709482123356974e-16 9.8285101990184387 -0.17717208138029261 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 2.2263882770244617e-14 2.8624992133171654e-14 -3.1805546814635116e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 8 90 ;
	setAttr ".dl" yes;
	setAttr ".typ" 1;
	setAttr ".otp" -type "string" "Mid";
	setAttr -k on ".fat" 1.7000000000000002;
	setAttr -k on ".fatY" 0.64999999999999991;
	setAttr ".fatYabs" 1.1050000190734863;
	setAttr ".fatZabs" 1.7000000476837158;
createNode joint -n "Spine1" -p "Root";
	rename -uid "EE2DCCA6-FD42-D264-E831-93B4270E16F5";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.477376426915626 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -max 10 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1469047047255347 -0.033062201332492422 -7.5302564402681654e-16 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 6.7940406962849691e-16 2.5057725739659384e-14 -8.587497639951495e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.1062237164616149 ;
	setAttr -k on ".fat" 1.7;
	setAttr -k on ".fatY" 0.65;
	setAttr ".fatYabs" 1.1050000190734863;
	setAttr ".fatZabs" 1.7000000476837158;
createNode joint -n "Chest" -p "Spine1";
	rename -uid "BDF398C5-A04B-A0AB-00F5-2AAF3C349E79";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 1.414614627883402 0.21580523430638862 -6.236054395364479e-16 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -2.5330783029728389e-14 -2.2486456079175096e-13 1.7015967545829819e-13 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 12.854441538903254 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Chest";
	setAttr -k on ".fat" 1.7000000000000002;
	setAttr -k on ".fatY" 0.64999999999999991;
	setAttr ".fatYabs" 1.1050000190734863;
	setAttr ".fatZabs" 1.7000000476837158;
createNode joint -n "Neck" -p "Chest";
	rename -uid "9D5F866D-C14C-0D47-7D1E-188EAAF090E6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -max 10 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3872788030164596 -0.40844365620963097 4.5826128503804045e-15 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 2.3956597842176279 ;
	setAttr ".pa" -type "double3" -1.7940447748746266e-16 6.8425179703803005e-15 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "37";
	setAttr -k on ".fat" 0.32;
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "Head" -p "Neck";
	rename -uid "12EC1638-2C4E-02C5-4C01-758A6EC01ED9";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "long";
	setAttr ".t" -type "double3" 0.63256656748189088 -0.0029441717152844395 -1.8790908431251797e-16 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -10.323099411908986 ;
	setAttr ".otp" -type "string" "36";
	setAttr -k on ".fat" 0.32;
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "HeadEnd" -p "Head";
	rename -uid "9CFCBE7D-0C4A-16AC-361B-6F8F4E49379D";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 2.3734707337918959 -3.2189962501094627e-16 4.1806852382047819e-16 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "23";
	setAttr -k on ".fat" 0.35;
	setAttr ".fatYabs" 0.34999999403953552;
	setAttr ".fatZabs" 0.34999999403953552;
createNode joint -n "Eye" -p "Head";
	rename -uid "9F6C1893-8441-0387-908D-0B9EBDAAFE82";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noFlip" -ln "noFlip" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.79696803663270399 0.68597142876863282 -0.35922712087639164 ;
	setAttr ".r" -type "double3" -0.0040167861824634112 4.9122590132739781 -0.0004718701398087137 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999972 ;
	setAttr ".pa" -type "double3" 8.9959671327899885e-14 -89.999999999998849 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Eye";
	setAttr -k on ".fat" 0.19999999999999996;
createNode joint -n "EyeEnd" -p "Eye";
	rename -uid "9818F2E2-504E-AFDC-787B-C7AF37959451";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.19999999999999996 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.85449481023434837 1.9685458454364287e-13 3.9309657283394865e-15 ;
	setAttr ".r" -type "double3" 15.943578395557601 -0.25535337936060021 0.054080155178905319 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.9859299048642494 -89.738982774186809 168.04223099805392 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "24";
createNode joint -n "Jaw" -p "Head";
	rename -uid "6CAE5DB5-D045-045A-7222-78800B554E7E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.062465585409702248 0.29621481667895477 -6.4112579558896848e-16 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 1.9008584441039095e-16 1.1472998378346195e-16 -2.0771821154655807 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 117.77221494634273 ;
	setAttr ".otp" -type "string" "31";
	setAttr ".radi" 0.5;
	setAttr -k on ".fat" 0.19999999999999996;
	setAttr ".fatYabs" 0.20000000298023224;
	setAttr ".fatZabs" 0.20000000298023224;
createNode joint -n "JawEnd" -p "Jaw";
	rename -uid "A9D9B7A2-5A4A-E62A-DBC2-2DA7BA9F1B56";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.19999999999999996 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.91774146048081118 0.012460273680012962 -2.1684043449927025e-18 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.314622491163413 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "25";
	setAttr ".fatYabs" 0.20000000298023224;
	setAttr ".fatZabs" 0.20000000298023224;
createNode joint -n "joint1" -p "Head";
	rename -uid "3200503F-C24B-2897-1AE7-28846115AD93";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.0134145988126289 -0.91469525546686159 -3.2506756065544356e-15 ;
	setAttr ".r" -type "double3" 0 -10.889756123783773 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.033225627673517 -90 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "78183C75-B340-01B0-233C-E0BD1B0E47DB";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.30689472164930542 -0.48009273287712939 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "F4A09B9A-E642-C2BD-27E3-C0BC3BACA354";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.81098706029818679 -0.098634728075107869 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	rename -uid "2456E178-814C-3A94-B5DF-2687551BF8D5";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.59336193127378145 -0.12658387867174081 ;
	setAttr ".r" -type "double3" 0 7.5731249165946082 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "9CDA4F6B-994A-0B5E-1A7F-279DF82406BD";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.44304357535109062 -0.62500790094171887 ;
	setAttr ".r" -type "double3" 0 0 -5.3655323313029273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "F49D0A52-104E-4331-F45D-A6B5EA1211D3";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.4826010374360088 -0.63291939335870229 ;
	setAttr ".r" -type "double3" 0 0 -4.7551013917936844 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "F17E2EF1-B042-1747-9C31-E2A903835177";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.31645969667935248 -0.015822984833967713 ;
	setAttr ".r" -type "double3" 0 0 -6.1153854195960857 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "453B0ABA-1245-E231-B75E-30990D390D22";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.47468954501902694 0.16614134075665898 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.58516489680838357;
createNode joint -n "Scapula" -p "Chest";
	rename -uid "8CC14F35-3545-4CCB-B00D-7D8FBAADE19D";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.65 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.92564698001694767 -0.043075087070195264 -0.56328566393179114 ;
	setAttr ".r" -type "double3" 6.6042223685781591 18.969033239285753 -25.027889255218607 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 57.954651186638614 90.021230553569026 50.020358430320435 ;
	setAttr ".otp" -type "string" "PropA1";
	setAttr ".fatYabs" 0.64999997615814209;
	setAttr ".fatZabs" 0.64999997615814209;
createNode joint -n "Shoulder" -p "Scapula";
	rename -uid "AB47FB16-6043-707E-A078-91BCFF4FBEB8";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 10 
		-at "long";
	addAttr -ci true -k true -sn "bendyCtrls" -ln "bendyCtrls" -min 0 -at "long";
	setAttr ".t" -type "double3" 1.0925408230395581 -4.163336342344337e-15 -3.730349362740526e-14 ;
	setAttr ".r" -type "double3" -11.47262581830863 28.453635456586891 12.362110763845971 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.00030235216143521706 -0.011608264598945518 -2.9840096586893488 ;
	setAttr ".pa" -type "double3" -4.1293130717023516e-07 0 0 ;
	setAttr ".dl" yes;
	setAttr ".typ" 10;
	setAttr -k on ".fat" 0.65;
	setAttr ".fatYabs" 0.64999997615814209;
	setAttr ".fatZabs" 0.64999997615814209;
createNode joint -n "Elbow" -p "Shoulder";
	rename -uid "28E13A20-D044-F7D7-8EA0-FF8B46057426";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 10 
		-at "long";
	addAttr -ci true -k true -sn "bendyCtrls" -ln "bendyCtrls" -min 0 -at "long";
	setAttr ".t" -type "double3" 2.243980583249551 -0.04141603596834393 -1.0459948879271153e-13 ;
	setAttr ".r" -type "double3" 0 0 17.324249984651061 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3821889474816276 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "22";
	setAttr -k on ".fat" 0.44999999999999984;
	setAttr ".fatYabs" 0.44999998807907104;
	setAttr ".fatZabs" 0.44999998807907104;
createNode joint -n "Wrist" -p "Elbow";
	rename -uid "D9113378-7348-E04E-0CC5-47BBB778AB8B";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 1.9098570945134827 0.022015845633335342 6.0706908250329761e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.3801837498864455 ;
	setAttr ".dl" yes;
	setAttr ".typ" 12;
	setAttr -k on ".fat" 0.16999999999999987;
	setAttr -k on ".fatY" 2.3100000000000005;
	setAttr ".fatYabs" 0.39269998669624329;
	setAttr ".fatZabs" 0.17000000178813934;
createNode joint -n "MiddleFinger1" -p "Wrist";
	rename -uid "0CDB336E-EF4A-1ED8-727C-44B9D2D3439E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.88920606458116247 -0.037853788772435545 0.12008263706444355 ;
	setAttr ".r" -type "double3" -14.943048050762142 2.2645990111211849 -2.8804438114891653 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.069474194567568717 4.7753179570062354 -0.8344806599264869 ;
	setAttr ".pa" -type "double3" -2.490303168013669e-17 3.8068719241856406 -4.0949047407001542 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "21";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "MiddleFinger2" -p "MiddleFinger1";
	rename -uid "F623A518-8F4A-E052-D83E-A6B029DAFAE4";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.35125282308243205 -1.8240628309481571e-06 0.0017873551253519407 ;
	setAttr ".r" -type "double3" 0 11.108886959593802 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.036678948879720293 -2.5199985860300922 -0.0025734866816321577 ;
	setAttr ".pa" -type "double3" 0 0 2.5199999009299203 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "20";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "MiddleFinger3" -p "MiddleFinger2";
	rename -uid "1E7126C2-FE4B-12DF-13C5-A1B9AE459E1E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.3634425418240545 2.0150926078265461e-06 0.0051152010065870848 ;
	setAttr ".r" -type "double3" 0 16.606869994074977 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.053454832775707894 -3.6712936380785144 -0.0014021136048479931 ;
	setAttr ".pa" -type "double3" 0 0 3.6712939054552742 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "19";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "MiddleFinger4" -p "MiddleFinger3";
	rename -uid "FF4FA50C-D74A-8675-C917-179B5D825DA2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.11999999999999991 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.42100130167607264 2.9231816652383277e-16 9.6156246957657624e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.968442131915452 0 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "18";
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "ThumbFinger1" -p "Wrist";
	rename -uid "CC987624-3B48-2578-31CA-B2855D8E7DDD";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.16761645392521426 0.24673741534812077 -0.12546585524467938 ;
	setAttr ".r" -type "double3" 53.949896076367928 7.730889322935929 -25.561946484222929 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -52.264000000000024 19.323320728472126 38.439955900417992 ;
	setAttr ".pa" -type "double3" -34.462082586865911 -8.7285733235282201 -1.7903981777634761 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "4";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "ThumbFinger2" -p "ThumbFinger1";
	rename -uid "BAA08976-9E43-2F4A-9745-1CA5DBC24618";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.39139060436868423 1.5418473251621601e-09 2.0206228903626999e-09 ;
	setAttr ".r" -type "double3" 0 0 -8.3655512360354614 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "3";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "ThumbFinger3" -p "ThumbFinger2";
	rename -uid "D0A70C8E-7043-432C-D7E3-F587932F19C6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.31183323217212222 -1.3877787807814457e-17 2.4716340085717547e-14 ;
	setAttr ".r" -type "double3" 0 0 -12.013942734965427 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "2";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "ThumbFinger4" -p "ThumbFinger3";
	rename -uid "793034E4-7945-3460-9E02-C5913B0EAE5F";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.11999999999999991 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.39896222141400572 -3.6920998720079166e-07 -2.3594029378188641e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -12.991445460162408 0 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "1";
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "IndexFinger1" -p "Wrist";
	rename -uid "6FECDD89-324C-FBEC-94A6-4CA9BADF59B6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.82526445820149141 0.15111541564707845 0.039512681559292828 ;
	setAttr ".r" -type "double3" -20.174254384973118 5.0342893094435279 -19.728803476863018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.90355498164830117 3.1740263719529995 15.899115832802362 ;
	setAttr ".pa" -type "double3" 0.065532877363568762 20.527688987272207 -2.5422327562497964 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "8";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "IndexFinger2" -p "IndexFinger1";
	rename -uid "34443465-E648-87EE-85E9-90A6CB53C24F";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.40015962500869767 2.1458831239717924e-11 1.0187033963778014e-10 ;
	setAttr ".r" -type "double3" 0 7.945401183475548 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "7";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "IndexFinger3" -p "IndexFinger2";
	rename -uid "9E7DF3DF-1C46-F839-6294-98A178FF0A31";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.2996790718873798 -1.8002283822235924e-05 0.0068598576481681932 ;
	setAttr ".r" -type "double3" 0 15.234745038921522 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6418340242699812 -5.7596206078048544 0.066225387225899435 ;
	setAttr ".pa" -type "double3" 0 0 5.7600000490223469 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "6";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "IndexFinger4" -p "IndexFinger3";
	rename -uid "CA4814DE-3E4B-DFF9-DB87-7797911A8B64";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.11999999999999991 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.39870411057970589 -7.1437735647427918e-15 4.3458731684958243e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.981952553513963 0 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "5";
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "Cup" -p "Wrist";
	rename -uid "FD1968CD-3547-ECE5-C8D7-8BA7B2E099E7";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.38378389750526043 -0.24786035682262747 -0.0032791863306100184 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.055050564634432926 0.67818406596930658 -4.6408340532608205 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "17";
	setAttr -k on ".fat" 0.12;
createNode joint -n "PinkyFinger1" -p "Cup";
	rename -uid "C8419511-2B48-3A3B-1772-D6A6EB41532D";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.41719877719389881 -0.12487762381910601 0.11925828606902111 ;
	setAttr ".r" -type "double3" 0 0 11.411616680153209 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.9521670012571231 7.9169505597481988 -15.886024859268939 ;
	setAttr ".pa" -type "double3" -0.21586850671656455 -15.856897343794616 -7.9762775885025459 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "12";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "PinkyFinger2" -p "PinkyFinger1";
	rename -uid "258024F3-BA47-A3B8-7AA8-5F96D93B5460";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.23273224634690681 -6.4392935428259079e-15 -9.0594198809412774e-14 ;
	setAttr ".r" -type "double3" 0 7.3168191393597812 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.26683083078458442 -0.71917589712374974 -0.0344391239165893 ;
	setAttr ".pa" -type "double3" 0 0 0.71999997359174039 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "11";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "PinkyFinger3" -p "PinkyFinger2";
	rename -uid "2E10B214-AD49-D362-E960-1FBBAD229C83";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.25049296204972171 -0.0004712513100314358 0.010903183657452676 ;
	setAttr ".r" -type "double3" 0 21.639395347434537 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.1588765498905533 -5.7546090601920987 -0.24956300887639274 ;
	setAttr ".pa" -type "double3" 0 0 5.7599997887354624 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "10";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "PinkyFinger4" -p "PinkyFinger3";
	rename -uid "8305DDDF-5141-6321-482C-8E8FAF5477CF";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.11999999999999991 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.30720540019237763 -4.5207950847245879e-15 5.7164160868005567e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.328532512368326 0 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "9";
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "RingFinger1" -p "Cup";
	rename -uid "A8A156C1-C74F-58E7-1705-CF92036A3590";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.45785672153096163 0.050399332918571176 0.17244748837066939 ;
	setAttr ".r" -type "double3" -5.7701505994558833 7.6681073344753941 1.9954660252423384 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.18874659568729768 1.4381831520375543 -2.8370412493246802 ;
	setAttr ".pa" -type "double3" -0.07133019936876682 -2.835223641928581 -1.4417652325251511 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "16";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "RingFinger2" -p "RingFinger1";
	rename -uid "977F3A05-5C48-A4AD-A360-9E8108BD976F";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.37400722762168698 6.4744330313433392e-06 -0.0031864411426054569 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.28317914938276145 2.1599955702211711 0.0043909097713010735 ;
	setAttr ".pa" -type "double3" 0 0 -2.1600000310934706 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "15";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "RingFinger3" -p "RingFinger2";
	rename -uid "515367C1-B344-5417-73D0-69AEBA8C686A";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.3195547821979316 -0.00014095894123015065 0.017473700053687494 ;
	setAttr ".r" -type "double3" 0 16.822010622186294 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.56783371127762794 -4.3198948128062415 -0.030192099090909089 ;
	setAttr ".pa" -type "double3" 0 0 4.3200001190538568 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "14";
	setAttr -k on ".fat" 0.11999999999999991;
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "RingFinger4" -p "RingFinger3";
	rename -uid "354A8298-DA4A-22F2-25E4-7BB9A5B68816";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.11999999999999991 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.35353787149275662 -7.0418027269657645e-15 -2.1508695765222928e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.832984336315818 0 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "13";
	setAttr ".fatYabs" 0.11999999731779099;
	setAttr ".fatZabs" 0.11999999731779099;
createNode joint -n "Hip" -p "Root";
	rename -uid "DA851E37-0547-E5AA-0FEB-B397316624A6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 10 
		-at "long";
	addAttr -ci true -k true -sn "bendyCtrls" -ln "bendyCtrls" -min 0 -at "long";
	setAttr ".t" -type "double3" -0.52065389831260622 -0.098341170817158652 -0.82972548122488599 ;
	setAttr ".r" -type "double3" 0 1.9474943291849676 0 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.57203838694888565 178.21077998921388 2.8717939465701359 ;
	setAttr ".dl" yes;
	setAttr ".typ" 2;
	setAttr -k on ".fat" 0.87;
	setAttr ".fatYabs" 0.87000000476837158;
	setAttr ".fatZabs" 0.87000000476837158;
createNode joint -n "Knee" -p "Hip";
	rename -uid "75C26543-D94C-595A-64FD-2C86092B9F49";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 3.9618656737572988 0.11472297401202503 2.111341238797968e-14 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.4300858589301857 ;
	setAttr -k on ".fat" 0.6;
	setAttr ".fatYabs" 0.60000002384185791;
	setAttr ".fatZabs" 0.60000002384185791;
createNode joint -n "Ankle" -p "Knee";
	rename -uid "4C61285A-974A-92A4-A12B-6CB0D9AB082A";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "worldOrient" -ln "worldOrient" -min 0 -max 5 -en "xUp:yUp:zUp:xDown:yDown:zDown" 
		-at "enum";
	setAttr ".t" -type "double3" 4.530375920464909 -6.158620705423723e-15 8.2550664251519268e-15 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4247604049611355 1.7303887114620087 4.2486823290117313 ;
	setAttr ".pa" -type "double3" 3.1147589914174403 -1.2104724556304993 -11.405913270501992 ;
	setAttr ".dl" yes;
	setAttr ".typ" 4;
	setAttr -k on ".fat" 0.36999999999999988;
	setAttr ".fatYabs" 0.37000000476837158;
	setAttr ".fatZabs" 0.37000000476837158;
	setAttr -k on ".worldOrient" 3;
createNode joint -n "Heel" -p "Ankle";
	rename -uid "17180079-AA45-587C-1A70-92B89A72E8B3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.36999999999999988 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.83962328905675221 -0.64348389840684372 -0.0077920496462184907 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.306230132279367 90.000000000017863 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel";
createNode joint -n "Toes" -p "Ankle";
	rename -uid "789DE4D0-F647-6369-02E9-1FA8F1579A08";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.4525346722645297 0.7045489167038157 -0.0077248863711814148 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.093327476095577511 -0.68753961284705734 82.269656827073391 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.29999999999999993;
	setAttr ".fatYabs" 0.30000001192092896;
	setAttr ".fatZabs" 0.30000001192092896;
createNode joint -n "FootSideInner" -p "Toes";
	rename -uid "848C6DB2-CD4B-33A7-86E2-4AB3B7E76CA9";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.17784289863471039 -0.27679901506530535 -0.40000020337121728 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999993781304 89.999925274921665 -172.27021688088311 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "BigToe";
createNode joint -n "FootSideOuter" -p "Toes";
	rename -uid "898B58D2-C042-45FA-6635-728AEC7DBAF8";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.18506480331313449 -0.27581875229693759 0.49096978984930068 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999993781304 89.999925274921665 -172.27021688088311 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "PinkyToe";
createNode joint -n "ToesEnd" -p "Toes";
	rename -uid "5D50AE7E-934C-8236-E7F8-C6AFA97102A9";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.8466081525302469 -0.18618414064077951 -5.4937386889880177e-08 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99991330031264 1.3815119899922174e-05 -15.357691910328654 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToesEnd";
	setAttr ".fatYabs" 0.30000001192092896;
	setAttr ".fatZabs" 0.30000001192092896;
createNode transform -n "eyes:eyes";
	rename -uid "BB429FE8-0B4F-5E76-49E1-F5B553EA01E6";
createNode transform -n "eyes:leftEye" -p "eyes:eyes";
	rename -uid "B7F53EC5-0845-F83D-ABCD-E789179C2E0D";
	setAttr ".rp" -type "double3" 0.35926300034356679 15.237318992614746 0.30969881143163203 ;
	setAttr ".sp" -type "double3" 0.35926300034356679 15.237318992614746 0.30969881143163203 ;
createNode mesh -n "eyes:leftEyeShape" -p "eyes:leftEye";
	rename -uid "F1621688-9149-FFBB-2EAE-448CF7C880F4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 4.5 0.55 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 402 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.23466587 0.32696104 4.23432159
		 0.33457637 4.21742058 0.34304929 4.21332693 0.33019757 4.2406292 0.33885694 4.22526741
		 0.35401726 4.24482632 0.34522009 4.23613358 0.36200857 4.25244522 0.34497571 4.24892902
		 0.36626983 4.25958109 0.34765625 4.26241684 0.36634779 4.26560116 0.34298038 4.27527285
		 0.36227441 4.2729497 0.34095454 4.28623104 0.35440969 4.2750721 0.33363271 4.29423714
		 0.3435576 4.27982616 0.32767463 4.29848003 0.3307538 4.2772398 0.32050419 4.29857826
		 0.31726837 4.27758408 0.31288958 4.29448462 0.30441594 4.27127647 0.30860877 4.28663778
		 0.29344797 4.26707888 0.30224586 4.27577162 0.2854569 4.25946045 0.30249023 4.26297665
		 0.28119564 4.2523241 0.29980946 4.24948883 0.28111744 4.24630451 0.30448556 4.23663235
		 0.28519106 4.2389555 0.30651116 4.22567463 0.29305553 4.23683357 0.31383276 4.21766806
		 0.30390811 4.23207951 0.31979084 4.21342564 0.31671166 4.1981349 0.35278463 4.19198561
		 0.33349729 4.20994139 0.36923122 4.22625351 0.38122034 4.24547195 0.38758636 4.26571608
		 0.38769794 4.28500605 0.38155174 4.3014493 0.36974311 4.31344223 0.35343242 4.31980419
		 0.33421373 4.31991959 0.31396866 4.31377029 0.29468083 4.30196381 0.27823424 4.28565216
		 0.26624513 4.26643324 0.25987887 4.24618959 0.25976753 4.22689962 0.26591349 4.21045637
		 0.27772236 4.19846296 0.29403329 4.192101 0.31325173 4.17876101 0.36261129 4.1705246
		 0.33685517 4.1945529 0.38456225 4.21635532 0.40055799 4.24203396 0.40903497 4.26907444
		 0.40916038 4.29483128 0.40092492 4.316782 0.38513255 4.33277893 0.36333013 4.34125423
		 0.33765149 4.34138107 0.31061029 4.33314419 0.28485417 4.31735277 0.26290298 4.29554987
		 0.24690723 4.26987171 0.23843074 4.24283075 0.23830485 4.21707392 0.24654055 4.19512367
		 0.26233292 4.17912674 0.2841351 4.17065144 0.30981374 4.1592474 0.37255025 4.14889479
		 0.34027767 4.17906618 0.40004492 4.20641088 0.42006898 4.2386055 0.43066335 4.27249765
		 0.43079042 4.30477047 0.42043805 4.3322649 0.40061927 4.3522892 0.3732748 4.36288309
		 0.34108019 4.36301041 0.30718756 4.35265779 0.27491498 4.33283949 0.24742031 4.30549431
		 0.22739673 4.27330017 0.21680212 4.23940802 0.21667528 4.2071352 0.22702718 4.17964077
		 0.2468462 4.15961647 0.27419066 4.1490221 0.30638504 4.13953161 0.38263059 4.12702894
		 0.3437717 4.16343021 0.41572428 4.19638538 0.4398129 4.23517132 0.45253897 4.27599192
		 0.45265651 4.31485081 0.44015408 4.34794426 0.41625524 4.37203312 0.38330007 4.38475895
		 0.34451365 4.38487625 0.30369353 4.37237358 0.26483464 4.34847546 0.23174143 4.31551981
		 0.20765281 4.27673388 0.1949265 4.23591328 0.1948092 4.19705486 0.20731163 4.16396141
		 0.23120999 4.13987255 0.2641654 4.12714672 0.30295157 4.11952782 0.39289045 4.1048336
		 0.34734845 4.14757586 0.43166375 4.18623257 0.45987153 4.23171425 0.4747529 4.2795682
		 0.47485161 4.32511091 0.46015763 4.36388397 0.43210936 4.39209127 0.39345264 4.40697289
		 0.34797096 4.40707159 0.30011725 4.39237785 0.25457454 4.36432934 0.21580148 4.32567263
		 0.18759418 4.28019094 0.17271256 4.232337 0.1726141 4.18679476 0.1873076 4.1480217
		 0.21535611 4.11981392 0.25401306 4.10493279 0.29949427 4.099115372 0.40338755 4.082176685
		 0.35102344 4.13140631 0.44795489 4.17588854 0.4803617 4.22820807 0.497437 4.28324366
		 0.49750876 4.33560753 0.48057055 4.38017464 0.44827914 4.41258192 0.40379643 4.42965698
		 0.35147715 4.42972851 0.29644179 4.4127903 0.24407768 4.38049889 0.19951081 4.33601665
		 0.16710377 4.28369713 0.15002871 4.22866154 0.14995694 4.17629766 0.16689515 4.13173103
		 0.19918609 4.09932375 0.24366856 4.082248688 0.29598808 4.07811594 0.41420698 4.058861732
		 0.3548243 4.11477804 0.46473312 4.16525936 0.50145769 4.22461796 0.52078509 4.28704405
		 0.52082348 4.34642696 0.50156927 4.39695311 0.46490765 4.43367767 0.41442633 4.45300484
		 0.35506725 4.45304346 0.29264069 4.43378925 0.23325872 4.39712715 0.18273211 4.34664631
		 0.14600801 4.28728724 0.12668037 4.22486115 0.12664223 4.16547871 0.14589596 4.11495209
		 0.18255806 4.078227997 0.23303866 4.058900833 0.29239798 4.90252686 0.4862386 4.94374084
		 0.42951214 4.8458004 0.52745235 4.77911472 0.54911983 4.70899725 0.54911959 4.64231157
		 0.52745187 4.58558512 0.48623765 4.5443716 0.42951167 4.52270412 0.36282551 4.52270412
		 0.29270804 4.5443716 0.2260226 4.58558559 0.16929662 4.64231205 0.12808239 4.70899773
		 0.10641539 4.7791152 0.10641515 4.84580088 0.12808287 4.90252686 0.16929662 4.94374132
		 0.22602332 4.96540833 0.29270875 4.96540833 0.36282623 4.88505077 0.46893656 4.92177391
		 0.41845739 4.83452654 0.50559676 4.77514601 0.52485001 4.71272278 0.52481163 4.65336657
		 0.50548494 4.60288715 0.46876204 4.56622696 0.41823781 4.54697371 0.35885751 4.54701233
		 0.29643381 4.56633902 0.23707712 4.60306168 0.18659866 4.65358591 0.14993799 4.71296597
		 0.13068497 4.77538967 0.13072336 4.83474588 0.15004981 4.8852253 0.18677247 4.92188549
		 0.23729718 4.94113874 0.29667675 4.94110012 0.3591007 4.8682723 0.45230806 4.90067816
		 0.4078275 4.8237071 0.4845978 4.77134562 0.5015353 4.71631289 0.50146329 4.66399574
		 0.48438895 4.61951542 0.45198357 4.58722591 0.40741837 4.57028866 0.35505664 4.57036018
		 0.30002391 4.58743477 0.24770701 4.61984062 0.20322669 4.66440535 0.17093718 4.71676636
		 0.15399969 4.77179956 0.15407145 4.82411671 0.1711458 4.86859703 0.20355141 4.90088654
		 0.24811614 4.91782427 0.30047786 4.91775227 0.35551059 4.85198116 0.43613803 4.88018751
		 0.39748371 4.81321049 0.46418488 4.76767063 0.47887814 4.71981907 0.4787792 4.67434025
		 0.46389854 4.63568544 0.43569219 4.60763884 0.39692128 4.59294605 0.35138166 4.59304428
		 0.3035301;
	setAttr ".uvst[0].uvsp[250:401]" 4.60792494 0.25805151 4.63613129 0.21939671
		 4.67490196 0.19134986 4.72044182 0.17665708 4.76829338 0.17675555 4.8137722 0.19163644
		 4.85242701 0.21984231 4.88047361 0.25861323 4.89516687 0.30415332 4.89506817 0.35200441
		 4.83604145 0.42028368 4.8601284 0.38733065 4.80294991 0.44418085 4.76409388 0.45668232
		 4.72327662 0.45656455 4.68449306 0.44383967 4.6515398 0.41975248 4.62764311 0.38666117
		 4.61514139 0.3478049 4.61525917 0.3069874 4.62798405 0.26820385 4.65207148 0.23525083
		 4.68516254 0.21135437 4.72401857 0.19885266 4.76483631 0.1989702 4.80361938 0.21169531
		 4.83657265 0.23578227 4.86046934 0.26887333 4.87297106 0.3077296 4.87285376 0.3485471
		 4.82036161 0.40464699 4.84038401 0.37730491 4.79286957 0.42446411 4.76059961 0.43481529
		 4.72671032 0.43468845 4.69451904 0.4240948 4.66717625 0.40407264 4.64735985 0.37658036
		 4.63700819 0.34431088 4.63713551 0.31042111 4.64772892 0.27822959 4.66775131 0.25088775
		 4.69524288 0.2310704 4.72751331 0.2207197 4.76140261 0.2208463 4.79359341 0.23143995
		 4.8209362 0.25146186 4.8407526 0.27895415 4.85110474 0.31122363 4.85097694 0.3451134
		 4.80487728 0.38915908 4.82087231 0.36735976 4.7829299 0.40494955 4.7571764 0.41318381
		 4.73013926 0.41305864 4.70446396 0.40458262 4.68266439 0.38858902 4.66687489 0.36664069
		 4.65863895 0.3408879 4.65876579 0.31385005 4.66724014 0.28817499 4.68323517 0.26637542
		 4.70518255 0.2505852 4.73093605 0.2423507 4.75797319 0.24247634 4.78364849 0.25095189
		 4.80544806 0.26694548 4.82123804 0.28889382 4.8294735 0.3146466 4.82934666 0.34168446
		 4.78954268 0.37376797 4.8015337 0.35746086 4.77310324 0.38557398 4.75381708 0.39171875
		 4.73357773 0.3916074 4.7143631 0.38524234 4.69805479 0.37325585 4.68625116 0.3568126
		 4.68010283 0.33752954 4.6802187 0.31728828 4.68657875 0.29807413 4.69856977 0.28176677
		 4.71500969 0.26996052 4.73429537 0.263816 4.75453472 0.26392734 4.77374935 0.2702924
		 4.79005766 0.28227866 4.80186176 0.29872191 4.80800962 0.31800568 4.80789375 0.33824623
		 4.77432013 0.3584305 4.78232384 0.34758389 4.76336765 0.36629212 4.75051689 0.37036264
		 4.7370348 0.37028515 4.72424603 0.36602509 4.71338463 0.35803807 4.70554209 0.34707463
		 4.70144939 0.33422863 4.70154905 0.32074893 4.70578909 0.30795109 4.7137928 0.29710424
		 4.72474527 0.28924263 4.73759556 0.2851721 4.75107765 0.28524935 4.76386642 0.28950965
		 4.77472782 0.29749668 4.78257036 0.30846012 4.78666306 0.32130635 4.7865634 0.33478558
		 4.76025534 0.34418118 4.76317358 0.33766687 4.75370359 0.34701335 4.74751425 0.35056722
		 4.74054909 0.3490082 4.73345184 0.34824526 4.72873354 0.3428899 4.72344065 0.33810198
		 4.72277164 0.3309952 4.72130346 0.32401025 4.72493935 0.31786788 4.72785759 0.31135404
		 4.73440886 0.30852187 4.74059868 0.30496728 4.74756384 0.30652678 4.75466061 0.30728948
		 4.75937891 0.31264508 4.76467228 0.31743324 4.76534128 0.32453954 4.76680899 0.33152449
		 4.25595284 0.32373261 4.74405622 0.32776725 4.034592152 0.28867221 4.034592152 0.3587923
		 4.056260586 0.22198391 4.097476006 0.16525602 4.15420485 0.12404037 4.22089291 0.10237241
		 4.29101276 0.10237217 4.3577013 0.1240406 4.41442919 0.16525626 4.45564508 0.22198462
		 4.47731304 0.28867269 4.47731304 0.35879278 4.45564508 0.42548108 4.41442919 0.48220968
		 4.35770082 0.5234251 4.29101276 0.5450933 4.22089243 0.5450933 4.15420437 0.52342486
		 4.097475529 0.48220921 4.056260109 0.42548084;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.23434976 16.243303 -0.019027811 0.23833922 
		16.264158 0.036284249 0.26975021 16.272907 0.061045092 0.29315269 16.288353 0.10308325 
		0.32702923 16.284214 0.093919307 0.36090583 16.288353 0.10662885 0.38430831 16.272907 
		0.067040116 0.41571927 16.264158 0.045566812 0.41970867 16.243303 -0.0093277274 0.43665618 
		16.225008 -0.056780659 0.41970867 16.206713 -0.10600742 0.41571927 16.18586 -0.16131566 
		0.38430831 16.177111 -0.18607649 0.3609058 16.161663 -0.22811463 0.32702923 16.165802 
		-0.21895073 0.29315269 16.161663 -0.23166025 0.26975024 16.177111 -0.19207151 0.23833925 
		16.18586 -0.17059821 0.23434982 16.206713 -0.11570749 0.2174024 16.225008 -0.06825453 
		0.14514655 16.224518 0.037207521 0.17248893 16.25712 0.12478185 0.21507573 16.282993 
		0.1953737 0.26873815 16.299604 0.24207385 0.32822341 16.305328 0.26031205 0.38770869 
		16.299604 0.24829976 0.44137108 16.282993 0.20721605 0.48395783 16.25712 0.14108148 
		0.51130027 16.224518 0.056368887 0.52072173 16.188375 -0.038631409 0.51130027 16.152235 
		-0.13461393 0.48395783 16.119633 -0.22219211 0.44137108 16.093758 -0.29278395 0.38770866 
		16.077147 -0.3394841 0.32822341 16.071423 -0.35772231 0.26873815 16.077147 -0.34570998 
		0.21507581 16.093758 -0.30462629 0.17248908 16.119633 -0.23849174 0.14514662 16.152235 
		-0.15377529 0.13572516 16.188375 -0.058778834 0.061214682 16.181423 0.10015521 0.10138456 
		16.229321 0.22881375 0.16395068 16.267332 0.33252507 0.24278852 16.291737 0.40113443 
		0.330181 16.300148 0.42792845 0.41757342 16.291737 0.41028121 0.49641129 16.267332 
		0.34992325 0.55897731 16.229321 0.25276026 0.5991472 16.181423 0.12830602 0.61298883 
		16.128326 -0.011262756 0.5991472 16.07523 -0.15227641 0.55897725 16.027332 -0.28093877 
		0.49641126 15.989319 -0.38465011 0.41757342 15.964914 -0.45325944 0.330181 15.956504 
		-0.48005342 0.24278858 15.964914 -0.46240619 0.16395079 15.989319 -0.40204829 0.10138471 
		16.027332 -0.3048853 0.061214756 16.07523 -0.18042721 0.047373302 16.128326 -0.040862251 
		-0.015379138 16.11508 0.16826594 0.036629252 16.177095 0.33484411 0.11763407 16.226309 
		0.46911862 0.2197061 16.257906 0.55794871 0.33285379 16.268795 0.59264028 0.4460015 
		16.257908 0.56979102 0.54807347 16.226309 0.49164411 0.62907827 16.177095 0.36584786 
		0.68108654 16.11508 0.20471302 0.69900733 16.046337 0.024014026 0.68108654 15.977592 
		-0.1585606 0.62907821 15.915578 -0.32513881 0.54807347 15.866364 -0.45941329 0.44600147 
		15.834765 -0.54824334 0.33285379 15.823878 -0.58293116 0.21970618 15.834765 -0.56008571 
		0.11763422 15.866364 -0.48193881 0.036629327 15.915578 -0.35614252 -0.015378844 15.977592 
		-0.19500767 -0.033299696 16.046337 -0.01430871 -0.082748771 16.027124 0.23986591 
		-0.020182766 16.101728 0.44025695 0.077266261 16.160934 0.60179353 0.20005916 16.198946 
		0.70865661 0.33617601 16.212044 0.75038671 0.47229293 16.198946 0.72290301 0.59508574 
		16.160934 0.62889177 0.69253463 16.101728 0.4775545 0.75510073 16.027124 0.28371182 
		0.77665955 15.944426 0.066330343 0.75510073 15.861727 -0.15330751 0.69253463 15.787124 
		-0.35369855 0.59508568 15.727918 -0.51523513 0.47229287 15.689907 -0.62209439 0.33617601 
		15.676807 -0.66382837 0.20005918 15.689907 -0.63634074 0.077266328 15.727918 -0.54233336 
		-0.020182546 15.787125 -0.3909961 -0.082748622 15.861727 -0.19715343 -0.10430732 
		15.944426 0.020228041 -0.13923572 15.919722 0.31318825 -0.06765233 16.005077 0.54246306 
		0.043841235 16.072817 0.72727948 0.18433136 16.116308 0.84954548 0.34006584 16.131292 
		0.89728802 0.49580026 16.116308 0.86584508 0.63629031 16.072817 0.7582832 0.74778378 
		16.005077 0.58513606 0.81936717 15.919722 0.36335337 0.844033 15.825105 0.1146442 
		0.81936717 15.730487 -0.13664661 0.74778378 15.645131 -0.36592138 0.63629025 15.577394 
		-0.55073398 0.4958002 15.533902 -0.67299998 0.34006584 15.518916 -0.72074634 0.18433145 
		15.533902 -0.68929958 0.043841317 15.577394 -0.5817377 -0.067652188 15.645132 -0.40859437 
		-0.13923544 15.730487 -0.18681172 -0.16390133 15.825105 0.061897494 -0.18344873 15.795516 
		0.38643253 -0.10461088 15.889522 0.63894075 0.01818208 15.964126 0.84248739 0.17291009 
		16.012024 0.97714472 0.34442744 16.028528 1.0297263 0.51594472 16.012024 0.99509621 
		0.67067271 15.964126 0.87663323 0.79346555 15.889522 0.68593848 0.87230331 15.795516 
		0.44168156 0.89946902 15.69131 0.16776597 0.87230331 15.587105 -0.10898905 0.79346555 
		15.493098 -0.36150113 0.67067266 15.418494 -0.56504768 0.51594466 15.370596 -0.69970131 
		0.34442744 15.354092 -0.75228661 0.17291017 15.370596 -0.7176528 0.018182233 15.418494 
		-0.59919351 -0.10461059 15.493098 -0.40849879 -0.18344836 15.587105 -0.16423807 -0.21061406 
		15.69131 0.10967369 -0.21429925 15.657565 0.45778951 -0.13014808 15.757907 0.72731853 
		0.00092048571 15.83754 0.94458479 0.16607656 15.888665 1.0883137 0.34915343 15.906281 
		1.1444414 0.53223026 15.888665 1.1074752 0.69738621 15.83754 0.98103195 0.82845473 
		15.757907 0.7774837 0.91260588 15.657565 0.51676214 0.94160241 15.546336 0.22438765 
		0.91260588 15.435107 -0.071021684 0.82845473 15.334765 -0.34055075 0.69738615 15.255135 
		-0.55781317 0.5322302 15.204008 -0.70154208 0.34915349 15.186392 -0.75766975 0.1660767 
		15.204008 -0.72070342 0.00092070922 15.255135 -0.59426028 -0.13014773 15.334765 -0.39071581 
		-0.21429893 15.435107 -0.1299943 -0.24329543 15.546336 0.16238019 -0.23102762 15.509268 
		0.525509 -0.14363526 15.613474 0.80541956 -0.0075181965 15.696172 1.0310487 0.16399911 
		15.749269 1.1803175 0.35412747 15.767564 1.238607 0.54425591 15.749269 1.2002169;
	setAttr ".pt[166:331]" 0.71577322 15.696172 1.0688995 0.85188997 15.613474 
		0.85751688 0.93928248 15.509268 0.58675301 0.96939582 15.393754 0.28311497 0.93928248 
		15.278239 -0.023674812 0.85188997 15.174034 -0.3035816 0.71577311 15.091335 -0.5292145 
		0.54425591 15.03824 -0.67847949 0.35412747 15.019943 -0.73677284 0.16399917 15.03824 
		-0.69837892 -0.0075180437 15.091335 -0.56706542 -0.14363481 15.174034 -0.35567889 
		-0.23102732 15.278239 -0.084918857 -0.2611407 15.393754 0.2187192 -0.23322201 15.354273 
		0.58791602 -0.14474019 15.459779 0.87131691 -0.0069265724 15.543508 1.0997584 0.16672873 
		15.597265 1.2508863 0.35922712 15.615788 1.3099027 0.55172551 15.597265 1.2710338 
		0.72538072 15.543508 1.1380811 0.86319435 15.459779 0.92406362 0.95167607 15.354273 
		0.64992356 0.9821648 15.237319 0.34250188 0.95167613 15.120366 0.031889182 0.86319429 
		15.014861 -0.25150782 0.72538066 14.931131 -0.4799532 0.55172545 14.877375 -0.63107723 
		0.35922712 14.85885 -0.69009733 0.16672888 14.877375 -0.65122473 -0.0069262767 14.931131 
		-0.51827592 -0.14474003 15.014861 -0.30425453 -0.23322164 15.120366 -0.030118257 
		-0.26371041 15.237319 0.2773034 -0.22082834 15.196399 0.64348 -0.1334359 15.300606 
		0.92339063 0.0026809352 15.383304 1.1490197 0.17419837 15.436399 1.2982886 0.36432678 
		15.454695 1.3565781 0.55445516 15.436399 1.318188 0.72597241 15.383304 1.1868707 
		0.86208928 15.300606 0.97548795 0.94948173 15.196399 0.70472407 0.97959507 15.080885 
		0.40108603 0.94948173 14.965371 0.094296247 0.86208928 14.861166 -0.18561053 0.72597235 
		14.778466 -0.41124338 0.5544551 14.725371 -0.56050843 0.36432678 14.707075 -0.61880183 
		0.17419845 14.725371 -0.58040786 0.0026812351 14.778466 -0.44909433 -0.13343576 14.861166 
		-0.23770782 -0.22082797 14.965371 0.033052202 -0.2509414 15.080885 0.33669025 -0.19415179 
		15.039531 0.69082689 -0.11000066 15.139873 0.960356 0.021067988 15.219505 1.1776223 
		0.18622401 15.270632 1.3213512 0.36930087 15.288248 1.3774787 0.5523777 15.270632 
		1.3405124 0.71753371 15.219505 1.2140692 0.84860218 15.139873 1.0105211 0.93275338 
		15.039531 0.74979955 0.96174985 14.928302 0.45742506 0.93275338 14.817073 0.16201572 
		0.84860218 14.716731 -0.10751331 0.71753365 14.6371 -0.32477576 0.55237764 14.585975 
		-0.46850467 0.36930087 14.568357 -0.52463228 0.1862241 14.585975 -0.48766604 0.021068148 
		14.6371 -0.36122283 -0.11000036 14.716731 -0.15767838 -0.19415143 14.817073 0.10304314 
		-0.223148 14.928302 0.3954176 -0.15384915 14.887535 0.72879809 -0.075011469 14.981541 
		0.98130637 0.04778149 15.056145 1.184853 0.20250958 15.104044 1.3195103 0.37402686 
		15.120547 1.3720919 0.54554427 15.104043 1.3374618 0.70027214 15.056145 1.2189988 
		0.82306498 14.981541 1.0283041 0.90190279 14.887535 0.78404719 0.92906845 14.783329 
		0.51013154 0.90190279 14.679124 0.23337653 0.82306498 14.585116 -0.019135511 0.70027214 
		14.510512 -0.2226821 0.54554415 14.462615 -0.35733569 0.37402689 14.446111 -0.40992105 
		0.20250967 14.462615 -0.3752872 0.047781724 14.510513 -0.25682795 -0.075011179 14.585117 
		-0.066133201 -0.15384886 14.679124 0.17812748 -0.18101449 14.783329 0.45203927 -0.10091287 
		14.744151 0.75645185 -0.029329697 14.829507 0.98572659 0.082163878 14.897245 1.170543 
		0.22265397 14.940738 1.292809 0.37838846 14.955722 1.3405516 0.53412294 14.940737 
		1.3091086 0.674613 14.897245 1.2015467 0.78610665 14.829507 1.0283996 0.85768986 
		14.744151 0.80661696 0.88235575 14.649534 0.55790782 0.85768986 14.554916 0.30661699 
		0.78610653 14.469561 0.077342167 0.67461294 14.401823 -0.10747042 0.53412294 14.358332 
		-0.22973642 0.37838846 14.343346 -0.27748281 0.22265412 14.358332 -0.24603604 0.082164168 
		14.401823 -0.13847414 -0.029329408 14.469562 0.034669153 -0.10091272 14.554916 0.25645185 
		-0.12557861 14.649534 0.50516105 -0.036646627 14.612911 0.77311277 0.025919456 14.687514 
		0.97350377 0.12336853 14.74672 1.1350404 0.24616137 14.784733 1.2419035 0.38227826 
		14.797831 1.2836336 0.51839519 14.784733 1.2561499 0.64118803 14.74672 1.1621387 
		0.73863685 14.687514 1.0108013 0.80120295 14.612911 0.81695867 0.82276171 14.530212 
		0.59957719 0.80120295 14.447514 0.37993932 0.73863691 14.37291 0.17954823 0.64118797 
		14.313704 0.018011762 0.51839519 14.275693 -0.088847511 0.38227826 14.262594 -0.13058151 
		0.24616152 14.275693 -0.10309395 0.1233687 14.313704 -0.0090864785 0.025919747 14.37291 
		0.14225075 -0.036646321 14.447514 0.3360934 -0.05820518 14.530212 0.5534749 0.037367549 
		14.497046 0.77836585 0.089375868 14.559061 0.94494408 0.17038077 14.608274 1.0792186 
		0.27245274 14.639873 1.1680486 0.38560048 14.650762 1.2027402 0.49874818 14.639873 
		1.179891 0.60082018 14.608275 1.1017441 0.68182498 14.559061 0.9759478 0.73383319 
		14.497046 0.8148129 0.75175405 14.428302 0.63411403 0.73383319 14.359558 0.45153931 
		0.68182498 14.297544 0.28496116 0.60082018 14.248329 0.15068661 0.49874818 14.216731 
		0.06185662 0.38560048 14.205844 0.027168799 0.27245289 14.216731 0.05001425 0.17038092 
		14.248329 0.12816118 0.089376017 14.297544 0.25395739 0.037367772 14.359558 0.41509226 
		0.019446988 14.428302 0.59579128 0.11930703 14.399409 0.77208549 0.15947685 14.447307 
		0.90074408 0.22204301 14.485319 1.0044553 0.30088085 14.509725 1.0730647 0.38827327 
		14.518134 1.0998588 0.47566578 14.509725 1.0822115 0.55450356 14.485319 1.0218536 
		0.6170696 14.447307 0.92469054 0.6572395 14.399409 0.80023634 0.67108113 14.346313 
		0.66066754 0.6572395 14.293218 0.51965392 0.6170696 14.245318 0.39099148;
	setAttr ".pt[332:381]" 0.55450356 14.207306 0.28728017 0.47566572 14.1829 
		0.21867089 0.38827327 14.174491 0.1918768 0.30088091 14.182901 0.20952405 0.22204305 
		14.207306 0.26988202 0.15947691 14.245318 0.36704499 0.1193071 14.293218 0.49150306 
		0.10546552 14.346313 0.63106805 0.20715395 14.322404 0.75442296 0.23449638 14.355006 
		0.84199733 0.27708319 14.380879 0.91258925 0.33074558 14.397491 0.95928931 0.39023089 
		14.403215 0.97752762 0.44971609 14.397491 0.96551526 0.50337863 14.380879 0.92443156 
		0.54596531 14.355006 0.85829693 0.57330763 14.322404 0.77358437 0.58272916 14.286263 
		0.67858404 0.57330763 14.250123 0.58260155 0.54596525 14.217519 0.49502334 0.50337857 
		14.191646 0.42443159 0.44971609 14.175034 0.37773144 0.39023089 14.169309 0.35949326 
		0.33074558 14.175034 0.37150547 0.27708328 14.191646 0.41258925 0.23449647 14.217519 
		0.47872373 0.20715412 14.250123 0.5634402 0.19773252 14.286263 0.65843672 0.29874557 
		14.267926 0.72581261 0.30692807 14.28693 0.77645487 0.33414596 14.29753 0.80588567 
		0.35915005 14.30998 0.84009027 0.39142501 14.308837 0.83875978 0.42369998 14.30998 
		0.84346825 0.44870406 14.29753 0.81188053 0.47592199 14.28693 0.78529847 0.48410445 
		14.267926 0.73551273 0.49586901 14.249631 0.68778861 0.48410445 14.231336 0.63883305 
		0.47592199 14.212333 0.58819497 0.44870406 14.201734 0.55876392 0.42369998 14.189281 
		0.52455539 0.39142501 14.190426 0.52588975 0.35915005 14.189281 0.52117741 0.33414596 
		14.201733 0.55276906 0.30692813 14.212333 0.57935131 0.29874557 14.231336 0.62913293 
		0.28698108 14.249631 0.67685711 0.32662788 16.23732 -0.067159876 0.3918263 14.237319 
		0.68696511;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877814 -0.98768842 -0.048339844 0.14237386 -0.98768848 -0.10344315
		 0.09194988 -0.98768848 -0.12656021 0.054381967 -0.98768842 -0.16737366 0 -0.98768848 -0.15643692
		 -0.054382026 -0.98768848 -0.16737366 -0.09194994 -0.98768842 -0.12656021 -0.14237392 -0.98768848 -0.10344315
		 -0.14877808 -0.98768848 -0.048339844 -0.17598385 -0.98768842 0 -0.14877808 -0.98768848 0.048339844
		 -0.14237392 -0.98768848 0.10343933 -0.09194994 -0.98768842 0.1265564 -0.054381967 -0.98768842 0.16736984
		 0 -0.98768848 0.15643311 0.054381967 -0.98768842 0.16736984 0.091949821 -0.98768848 0.1265564
		 0.1423738 -0.98768842 0.10343933 0.14877802 -0.98768842 0.048339844 0.17598367 -0.98768842 0
		 0.2938928 -0.9510566 -0.095493317 0.25000018 -0.95105666 -0.18163681 0.18163568 -0.9510566 -0.25
		 0.095491529 -0.9510566 -0.29389191 0 -0.9510566 -0.30901718 -0.095491588 -0.9510566 -0.29389191
		 -0.18163568 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.18163681 -0.29389274 -0.9510566 -0.095493317
		 -0.30901706 -0.95105666 0 -0.29389274 -0.9510566 0.095489502 -0.25000006 -0.9510566 0.18163681
		 -0.18163568 -0.95105666 0.25 -0.095491529 -0.9510566 0.29389191 0 -0.9510566 0.30901718
		 0.095491529 -0.9510566 0.29389191 0.18163556 -0.9510566 0.25 0.24999994 -0.95105666 0.18163681
		 0.29389268 -0.9510566 0.095489502 0.30901694 -0.9510566 0 0.43177092 -0.89100659 -0.14029312
		 0.36728632 -0.89100659 -0.26684952 0.2668491 -0.89100659 -0.36728668 0.14029092 -0.89100659 -0.43177032
		 0 -0.89100659 -0.45399094 -0.14029086 -0.89100659 -0.43177032 -0.26684907 -0.89100659 -0.36728668
		 -0.36728618 -0.89100659 -0.26684952 -0.43177077 -0.89100659 -0.14029312 -0.45399064 -0.89100659 0
		 -0.43177077 -0.89100659 0.14028931 -0.36728609 -0.89100659 0.26684952 -0.26684901 -0.89100659 0.36728668
		 -0.14029086 -0.89100659 0.43177032 0 -0.89100659 0.45399094 0.1402908 -0.89100659 0.43177032
		 0.26684892 -0.89100665 0.36728668 0.36728609 -0.89100665 0.26684952 0.4317708 -0.89100659 0.14028931
		 0.45399046 -0.89100659 0 0.55901742 -0.80901706 -0.18163681 0.47552848 -0.80901712 -0.34549332
		 0.34549165 -0.80901706 -0.47552872 0.18163568 -0.80901706 -0.55901718 0 -0.80901706 -0.58778763
		 -0.18163574 -0.80901712 -0.55901718 -0.34549162 -0.80901712 -0.47552872 -0.47552842 -0.80901706 -0.34549332
		 -0.55901718 -0.80901706 -0.18163681 -0.58778536 -0.80901706 0 -0.55901718 -0.80901706 0.18163681
		 -0.47552836 -0.80901706 0.34549332 -0.34549156 -0.80901706 0.47552872 -0.18163568 -0.80901706 0.55901718
		 0 -0.80901706 0.58778381 0.18163556 -0.80901706 0.55901718 0.34549141 -0.80901706 0.47552872
		 0.47552836 -0.80901706 0.34549332 0.55901694 -0.80901706 0.18163681 0.58778524 -0.80901712 0
		 0.67249882 -0.70710683 -0.21850967 0.57206178 -0.70710683 -0.41562653 0.41562712 -0.70710677 -0.57206345
		 0.21850801 -0.70710683 -0.67250061 -5.9604645e-08 -0.70710683 -0.70710754 -0.21850815 -0.70710677 -0.67250061
		 -0.41562712 -0.70710683 -0.57206345 -0.5720616 -0.70710677 -0.41562653 -0.67249876 -0.70710677 -0.21850967
		 -0.70710707 -0.70710683 0 -0.67249876 -0.70710677 0.21850967 -0.5720616 -0.70710677 0.41562653
		 -0.41562706 -0.70710683 0.57206345 -0.21850809 -0.70710683 0.6724968 -5.9604645e-08 -0.70710683 0.70710754
		 0.21850795 -0.70710677 0.6724968 0.415627 -0.70710683 0.57206345 0.57206142 -0.70710683 0.41562653
		 0.67249858 -0.70710683 0.21850967 0.70710671 -0.70710683 0 0.76942146 -0.58778536 -0.25
		 0.65450883 -0.58778536 -0.47552872 0.47552848 -0.58778536 -0.6545105 0.25000006 -0.58778536 -0.76942444
		 -5.9604645e-08 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.76942444 -0.47552845 -0.5877853 -0.6545105
		 -0.65450871 -0.58778536 -0.47552872 -0.76942122 -0.58778536 -0.25 -0.80901724 -0.5877853 0
		 -0.76942122 -0.58778536 0.25 -0.65450865 -0.5877853 0.47552872 -0.47552839 -0.58778536 0.65450668
		 -0.25000006 -0.58778536 0.76942062 -5.9604645e-08 -0.5877853 0.80901718 0.24999994 -0.5877853 0.76942062
		 0.47552836 -0.5877853 0.65450668 0.65450859 -0.58778536 0.47552872 0.76942098 -0.58778536 0.25
		 0.80901706 -0.58778536 0 0.84739816 -0.45399058 -0.27533722 0.72083998 -0.45399058 -0.52371979
		 0.52372074 -0.45399058 -0.72084045 0.27533627 -0.45399058 -0.84740067 -5.9604645e-08 -0.45399058 -0.89100647
		 -0.27533633 -0.45399052 -0.84740067 -0.52372074 -0.45399058 -0.72084045 -0.72083974 -0.45399058 -0.52371979
		 -0.8473978 -0.45399058 -0.27533722 -0.89100689 -0.45399058 0 -0.8473978 -0.45399058 0.2753334
		 -0.72083974 -0.45399058 0.52371979 -0.52372068 -0.45399052 0.72084045 -0.27533621 -0.45399058 0.84739685
		 -5.9604645e-08 -0.45399058 0.89100647 0.27533615 -0.45399058 0.84739685 0.5237205 -0.45399058 0.72084045
		 0.7208395 -0.45399058 0.52371979 0.84739757 -0.45399052 0.2753334 0.89100659 -0.45399058 0
		 0.90450907 -0.30901706 -0.29389191 0.76942146 -0.30901706 -0.55901718 0.55901742 -0.30901706 -0.76942444
		 0.2938928 -0.309017 -0.9045105 0 -0.309017 -0.95105743 -0.2938928 -0.309017 -0.9045105
		 -0.55901724 -0.30901694 -0.76942444 -0.76942116 -0.309017 -0.55901718 -0.90450883 -0.309017 -0.29389191
		 -0.95105684 -0.309017 0 -0.90450883 -0.309017 0.29389191 -0.76942116 -0.30901706 0.55901718
		 -0.55901712 -0.30901706 0.76942062 -0.29389274 -0.309017 0.90450668 -1.1920929e-07 -0.30901706 0.95105362
		 0.29389256 -0.309017 0.90450668 0.55901706 -0.309017 0.76942062 0.76942086 -0.30901706 0.55901718
		 0.90450859 -0.30901706 0.29389191 0.9510566 -0.309017 0 0.93934798 -0.15643442 -0.30521393
		 0.79905725 -0.15643442 -0.58055115 0.58054888 -0.15643442 -0.79905701 0.30521262 -0.15643442 -0.93935013
		 0 -0.15643442 -0.98768997 -0.30521268 -0.15643442 -0.93935013;
	setAttr ".vt[166:331]" -0.58054894 -0.15643442 -0.79905701 -0.79905689 -0.15643442 -0.58055115
		 -0.93934774 -0.15643442 -0.30521393 -0.98768866 -0.15643442 0 -0.93934774 -0.15643442 0.30521393
		 -0.79905689 -0.15643442 0.58054733 -0.58054876 -0.15643448 0.79905701 -0.30521262 -0.15643436 0.93934631
		 0 -0.15643442 0.98768997 0.3052125 -0.15643442 0.93934631 0.58054864 -0.15643442 0.79905701
		 0.79905653 -0.15643442 0.58054733 0.93934751 -0.15643442 0.30521393 0.98768842 -0.15643442 0
		 0.95105708 -1.1920929e-07 -0.30901718 0.80901742 0 -0.58778763 0.5877856 -1.1920929e-07 -0.80901718
		 0.30901718 0 -0.95105743 0 0 -1 -0.30901718 0 -0.95105743 -0.58778548 -1.1920929e-07 -0.80901718
		 -0.8090173 0 -0.58778763 -0.95105684 0 -0.30901718 -1.000000238419 0 0 -0.95105684 0 0.30901718
		 -0.80901724 0 0.58778381 -0.58778536 0 0.80901718 -0.30901706 0 0.95105362 0 0 1
		 0.30901694 0 0.95105362 0.58778512 0 0.80901718 0.80901718 0 0.58778381 0.95105648 0 0.30901718
		 1 0 0 0.93934798 0.1564343 -0.30521393 0.79905713 0.1564343 -0.58055115 0.58054912 0.1564343 -0.79905701
		 0.30521262 0.1564343 -0.93935013 0 0.1564343 -0.98768997 -0.30521265 0.15643442 -0.93935013
		 -0.58054888 0.1564343 -0.79905701 -0.79905689 0.1564343 -0.58055115 -0.93934774 0.1564343 -0.30521393
		 -0.98768866 0.1564343 0 -0.93934774 0.1564343 0.30521393 -0.79905689 0.1564343 0.58054733
		 -0.58054876 0.15643442 0.79905701 -0.30521253 0.15643442 0.93934631 0 0.1564343 0.98768997
		 0.3052125 0.1564343 0.93934631 0.58054864 0.1564343 0.79905701 0.79905689 0.1564343 0.58054733
		 0.93934739 0.1564343 0.30521393 0.98768842 0.1564343 0 0.90450907 0.30901694 -0.29389191
		 0.76942146 0.30901694 -0.55901718 0.5590173 0.30901694 -0.76942444 0.29389274 0.30901694 -0.9045105
		 0 0.30901694 -0.95105743 -0.29389283 0.30901694 -0.9045105 -0.5590173 0.30901694 -0.76942444
		 -0.76942122 0.30901694 -0.55901718 -0.90450883 0.30901694 -0.29389191 -0.95105684 0.30901694 0
		 -0.90450883 0.30901694 0.29389191 -0.76942122 0.30901694 0.55901718 -0.55901718 0.30901694 0.76942062
		 -0.29389271 0.30901694 0.90450668 0 0.30901694 0.95105362 0.29389262 0.30901694 0.90450668
		 0.55901706 0.30901694 0.76942062 0.76942098 0.30901694 0.55901718 0.90450847 0.30901694 0.29389191
		 0.9510566 0.30901694 0 0.84739804 0.45399046 -0.27533722 0.7208401 0.45399046 -0.52371979
		 0.52372086 0.45399046 -0.72084045 0.27533627 0.45399046 -0.84740067 0 0.45399046 -0.89100647
		 -0.27533633 0.45399058 -0.84740067 -0.52372074 0.45399058 -0.72084045 -0.72083968 0.45399058 -0.52371979
		 -0.84739786 0.45399046 -0.27533722 -0.89100677 0.45399046 0 -0.84739786 0.45399046 0.2753334
		 -0.72083968 0.45399058 0.52371979 -0.52372068 0.45399058 0.72084045 -0.27533624 0.45399046 0.84739685
		 0 0.45399046 0.89100647 0.27533615 0.45399046 0.84739685 0.5237205 0.45399046 0.72084045
		 0.72083962 0.45399046 0.52371979 0.84739757 0.45399046 0.2753334 0.89100647 0.45399046 0
		 0.76942122 0.58778524 -0.25 0.65450895 0.58778524 -0.47552872 0.4755286 0.58778524 -0.6545105
		 0.25000018 0.58778512 -0.76942444 0 0.58778524 -0.80901718 -0.25000009 0.58778524 -0.76942444
		 -0.47552848 0.58778524 -0.6545105 -0.65450883 0.58778524 -0.47552872 -0.76942122 0.58778536 -0.25
		 -0.8090173 0.58778536 0 -0.76942122 0.58778536 0.25 -0.65450871 0.58778524 0.47552872
		 -0.47552839 0.58778524 0.65450668 -0.25000009 0.58778524 0.76942062 0 0.58778524 0.80901718
		 0.25 0.58778524 0.76942062 0.47552812 0.58778524 0.65450668 0.65450847 0.58778512 0.47552872
		 0.76942098 0.58778524 0.25 0.80901706 0.58778524 0 0.67249906 0.70710671 -0.21850967
		 0.5720619 0.70710671 -0.41562653 0.41562712 0.70710671 -0.57206345 0.21850812 0.70710671 -0.67250061
		 0 0.70710671 -0.70710754 -0.21850812 0.70710683 -0.67250061 -0.41562712 0.70710683 -0.57206345
		 -0.57206154 0.70710659 -0.41562653 -0.6724987 0.70710671 -0.21850967 -0.70710695 0.70710671 0
		 -0.6724987 0.70710671 0.21850967 -0.57206154 0.70710659 0.41562653 -0.41562706 0.70710683 0.57206345
		 -0.21850812 0.70710683 0.6724968 0 0.70710671 0.70710754 0.21850789 0.70710671 0.6724968
		 0.41562688 0.70710683 0.57206345 0.57206142 0.70710671 0.41562653 0.67249858 0.70710671 0.21850967
		 0.70710695 0.70710671 0 0.55901742 0.80901706 -0.18163681 0.4755286 0.80901706 -0.34549332
		 0.34549165 0.80901718 -0.47552872 0.1816358 0.80901706 -0.55901718 0 0.80901706 -0.58778763
		 -0.18163574 0.80901706 -0.55901718 -0.34549165 0.80901694 -0.47552872 -0.47552845 0.80901706 -0.34549332
		 -0.55901712 0.80901694 -0.18163681 -0.58778536 0.80901718 0 -0.55901712 0.80901694 0.18163681
		 -0.47552845 0.80901706 0.34549332 -0.34549159 0.80901694 0.47552872 -0.18163574 0.80901706 0.55901718
		 0 0.80901706 0.58778381 0.18163556 0.80901706 0.55901718 0.34549141 0.80901718 0.47552872
		 0.47552836 0.80901694 0.34549332 0.55901706 0.80901706 0.18163681 0.58778524 0.80901706 0
		 0.4317708 0.89100659 -0.14029312 0.36728632 0.89100659 -0.26684952 0.26684904 0.89100659 -0.36728668
		 0.14029086 0.89100647 -0.43177032 0 0.89100647 -0.45399094 -0.14029092 0.89100659 -0.43177032
		 -0.26684904 0.89100659 -0.36728668 -0.36728618 0.89100647 -0.26684952 -0.43177083 0.89100659 -0.14029312
		 -0.4539907 0.89100659 0 -0.43177083 0.89100659 0.14028931 -0.36728618 0.89100647 0.26684952;
	setAttr ".vt[332:381]" -0.26684904 0.89100659 0.36728668 -0.1402908 0.89100671 0.43177032
		 0 0.89100647 0.45399094 0.14029074 0.89100647 0.43177032 0.26684892 0.89100659 0.36728668
		 0.36728621 0.89100647 0.26684952 0.43177068 0.89100647 0.14028931 0.45399058 0.89100671 0
		 0.29389286 0.95105648 -0.095493317 0.25000012 0.95105648 -0.18163681 0.18163568 0.95105672 -0.25
		 0.095491529 0.95105648 -0.29389191 -5.9604645e-08 0.95105672 -0.30901718 -0.095491529 0.9510566 -0.29389191
		 -0.1816358 0.9510566 -0.25 -0.25000009 0.95105648 -0.18163681 -0.29389268 0.95105648 -0.095493317
		 -0.30901703 0.95105648 0 -0.29389268 0.95105648 0.095489502 -0.25000003 0.95105648 0.18163681
		 -0.18163568 0.9510566 0.25 -0.095491529 0.9510566 0.29389191 -5.9604645e-08 0.95105672 0.30901718
		 0.095491529 0.95105648 0.29389191 0.18163556 0.95105672 0.25 0.25 0.95105648 0.18163681
		 0.29389262 0.9510566 0.095489502 0.30901706 0.9510566 0 0.14877808 0.9876883 -0.048339844
		 0.13564277 0.98768854 -0.098553807 0.09194994 0.98768854 -0.12656021 0.051810894 0.9876883 -0.15945643
		 0 0.9876883 -0.15643692 -0.051810894 0.9876883 -0.15945643 -0.09194988 0.9876883 -0.12656021
		 -0.13564277 0.9876883 -0.098553807 -0.14877808 0.9876883 -0.048339844 -0.16766362 0.98768854 5.1003729e-16
		 -0.14877808 0.9876883 0.048339844 -0.13564277 0.9876883 0.098549724 -0.09194988 0.9876883 0.1265564
		 -0.051810894 0.9876883 0.15945643 0 0.9876883 0.15643311 0.051810894 0.9876883 0.15945643
		 0.09194994 0.98768854 0.1265564 0.13564265 0.98768854 0.098549724 0.14877808 0.9876883 0.048339844
		 0.16766362 0.9876883 5.1003729e-16 0 -1.000000119209 0 1.1920929e-07 1 0;
	setAttr -s 760 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 0 341 342 0 342 343 0 343 344 0 344 345 0 345 346 0 346 347 0
		 347 348 0 348 349 0 349 350 0 350 351 0 351 352 0 352 353 0 353 354 0 354 355 0 355 356 0
		 356 357 0 357 358 0 358 359 0 359 340 0 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:759]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 2 1
		 380 4 1 380 6 1 380 8 1 380 10 1 380 12 1 380 14 1 380 16 1 380 18 1 360 381 1 362 381 1
		 364 381 1 366 381 1 368 381 1 370 381 1 372 381 1 374 381 1 376 381 1 378 381 1;
	setAttr -s 380 -ch 1520 ".fc[0:379]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 2 3
		f 4 1 382 -22 -382
		mu 0 4 1 4 5 2
		f 4 2 383 -23 -383
		mu 0 4 4 6 7 5
		f 4 3 384 -24 -384
		mu 0 4 6 8 9 7
		f 4 4 385 -25 -385
		mu 0 4 8 10 11 9
		f 4 5 386 -26 -386
		mu 0 4 10 12 13 11
		f 4 6 387 -27 -387
		mu 0 4 12 14 15 13
		f 4 7 388 -28 -388
		mu 0 4 14 16 17 15
		f 4 8 389 -29 -389
		mu 0 4 16 18 19 17
		f 4 9 390 -30 -390
		mu 0 4 18 20 21 19
		f 4 10 391 -31 -391
		mu 0 4 20 22 23 21
		f 4 11 392 -32 -392
		mu 0 4 22 24 25 23
		f 4 12 393 -33 -393
		mu 0 4 24 26 27 25
		f 4 13 394 -34 -394
		mu 0 4 26 28 29 27
		f 4 14 395 -35 -395
		mu 0 4 28 30 31 29
		f 4 15 396 -36 -396
		mu 0 4 30 32 33 31
		f 4 16 397 -37 -397
		mu 0 4 32 34 35 33
		f 4 17 398 -38 -398
		mu 0 4 34 36 37 35
		f 4 18 399 -39 -399
		mu 0 4 36 38 39 37
		f 4 19 380 -40 -400
		mu 0 4 38 0 3 39
		f 4 20 401 -41 -401
		mu 0 4 3 2 40 41
		f 4 21 402 -42 -402
		mu 0 4 2 5 42 40
		f 4 22 403 -43 -403
		mu 0 4 5 7 43 42
		f 4 23 404 -44 -404
		mu 0 4 7 9 44 43
		f 4 24 405 -45 -405
		mu 0 4 9 11 45 44
		f 4 25 406 -46 -406
		mu 0 4 11 13 46 45
		f 4 26 407 -47 -407
		mu 0 4 13 15 47 46
		f 4 27 408 -48 -408
		mu 0 4 15 17 48 47
		f 4 28 409 -49 -409
		mu 0 4 17 19 49 48
		f 4 29 410 -50 -410
		mu 0 4 19 21 50 49
		f 4 30 411 -51 -411
		mu 0 4 21 23 51 50
		f 4 31 412 -52 -412
		mu 0 4 23 25 52 51
		f 4 32 413 -53 -413
		mu 0 4 25 27 53 52
		f 4 33 414 -54 -414
		mu 0 4 27 29 54 53
		f 4 34 415 -55 -415
		mu 0 4 29 31 55 54
		f 4 35 416 -56 -416
		mu 0 4 31 33 56 55
		f 4 36 417 -57 -417
		mu 0 4 33 35 57 56
		f 4 37 418 -58 -418
		mu 0 4 35 37 58 57
		f 4 38 419 -59 -419
		mu 0 4 37 39 59 58
		f 4 39 400 -60 -420
		mu 0 4 39 3 41 59
		f 4 40 421 -61 -421
		mu 0 4 41 40 60 61
		f 4 41 422 -62 -422
		mu 0 4 40 42 62 60
		f 4 42 423 -63 -423
		mu 0 4 42 43 63 62
		f 4 43 424 -64 -424
		mu 0 4 43 44 64 63
		f 4 44 425 -65 -425
		mu 0 4 44 45 65 64
		f 4 45 426 -66 -426
		mu 0 4 45 46 66 65
		f 4 46 427 -67 -427
		mu 0 4 46 47 67 66
		f 4 47 428 -68 -428
		mu 0 4 47 48 68 67
		f 4 48 429 -69 -429
		mu 0 4 48 49 69 68
		f 4 49 430 -70 -430
		mu 0 4 49 50 70 69
		f 4 50 431 -71 -431
		mu 0 4 50 51 71 70
		f 4 51 432 -72 -432
		mu 0 4 51 52 72 71
		f 4 52 433 -73 -433
		mu 0 4 52 53 73 72
		f 4 53 434 -74 -434
		mu 0 4 53 54 74 73
		f 4 54 435 -75 -435
		mu 0 4 54 55 75 74
		f 4 55 436 -76 -436
		mu 0 4 55 56 76 75
		f 4 56 437 -77 -437
		mu 0 4 56 57 77 76
		f 4 57 438 -78 -438
		mu 0 4 57 58 78 77
		f 4 58 439 -79 -439
		mu 0 4 58 59 79 78
		f 4 59 420 -80 -440
		mu 0 4 59 41 61 79
		f 4 60 441 -81 -441
		mu 0 4 61 60 80 81
		f 4 61 442 -82 -442
		mu 0 4 60 62 82 80
		f 4 62 443 -83 -443
		mu 0 4 62 63 83 82
		f 4 63 444 -84 -444
		mu 0 4 63 64 84 83
		f 4 64 445 -85 -445
		mu 0 4 64 65 85 84
		f 4 65 446 -86 -446
		mu 0 4 65 66 86 85
		f 4 66 447 -87 -447
		mu 0 4 66 67 87 86
		f 4 67 448 -88 -448
		mu 0 4 67 68 88 87
		f 4 68 449 -89 -449
		mu 0 4 68 69 89 88
		f 4 69 450 -90 -450
		mu 0 4 69 70 90 89
		f 4 70 451 -91 -451
		mu 0 4 70 71 91 90
		f 4 71 452 -92 -452
		mu 0 4 71 72 92 91
		f 4 72 453 -93 -453
		mu 0 4 72 73 93 92
		f 4 73 454 -94 -454
		mu 0 4 73 74 94 93
		f 4 74 455 -95 -455
		mu 0 4 74 75 95 94
		f 4 75 456 -96 -456
		mu 0 4 75 76 96 95
		f 4 76 457 -97 -457
		mu 0 4 76 77 97 96
		f 4 77 458 -98 -458
		mu 0 4 77 78 98 97
		f 4 78 459 -99 -459
		mu 0 4 78 79 99 98
		f 4 79 440 -100 -460
		mu 0 4 79 61 81 99
		f 4 80 461 -101 -461
		mu 0 4 81 80 100 101
		f 4 81 462 -102 -462
		mu 0 4 80 82 102 100
		f 4 82 463 -103 -463
		mu 0 4 82 83 103 102
		f 4 83 464 -104 -464
		mu 0 4 83 84 104 103
		f 4 84 465 -105 -465
		mu 0 4 84 85 105 104
		f 4 85 466 -106 -466
		mu 0 4 85 86 106 105
		f 4 86 467 -107 -467
		mu 0 4 86 87 107 106
		f 4 87 468 -108 -468
		mu 0 4 87 88 108 107
		f 4 88 469 -109 -469
		mu 0 4 88 89 109 108
		f 4 89 470 -110 -470
		mu 0 4 89 90 110 109
		f 4 90 471 -111 -471
		mu 0 4 90 91 111 110
		f 4 91 472 -112 -472
		mu 0 4 91 92 112 111
		f 4 92 473 -113 -473
		mu 0 4 92 93 113 112
		f 4 93 474 -114 -474
		mu 0 4 93 94 114 113
		f 4 94 475 -115 -475
		mu 0 4 94 95 115 114
		f 4 95 476 -116 -476
		mu 0 4 95 96 116 115
		f 4 96 477 -117 -477
		mu 0 4 96 97 117 116
		f 4 97 478 -118 -478
		mu 0 4 97 98 118 117
		f 4 98 479 -119 -479
		mu 0 4 98 99 119 118
		f 4 99 460 -120 -480
		mu 0 4 99 81 101 119
		f 4 100 481 -121 -481
		mu 0 4 101 100 120 121
		f 4 101 482 -122 -482
		mu 0 4 100 102 122 120
		f 4 102 483 -123 -483
		mu 0 4 102 103 123 122
		f 4 103 484 -124 -484
		mu 0 4 103 104 124 123
		f 4 104 485 -125 -485
		mu 0 4 104 105 125 124
		f 4 105 486 -126 -486
		mu 0 4 105 106 126 125
		f 4 106 487 -127 -487
		mu 0 4 106 107 127 126
		f 4 107 488 -128 -488
		mu 0 4 107 108 128 127
		f 4 108 489 -129 -489
		mu 0 4 108 109 129 128
		f 4 109 490 -130 -490
		mu 0 4 109 110 130 129
		f 4 110 491 -131 -491
		mu 0 4 110 111 131 130
		f 4 111 492 -132 -492
		mu 0 4 111 112 132 131
		f 4 112 493 -133 -493
		mu 0 4 112 113 133 132
		f 4 113 494 -134 -494
		mu 0 4 113 114 134 133
		f 4 114 495 -135 -495
		mu 0 4 114 115 135 134
		f 4 115 496 -136 -496
		mu 0 4 115 116 136 135
		f 4 116 497 -137 -497
		mu 0 4 116 117 137 136
		f 4 117 498 -138 -498
		mu 0 4 117 118 138 137
		f 4 118 499 -139 -499
		mu 0 4 118 119 139 138
		f 4 119 480 -140 -500
		mu 0 4 119 101 121 139
		f 4 120 501 -141 -501
		mu 0 4 121 120 140 141
		f 4 121 502 -142 -502
		mu 0 4 120 122 142 140
		f 4 122 503 -143 -503
		mu 0 4 122 123 143 142
		f 4 123 504 -144 -504
		mu 0 4 123 124 144 143
		f 4 124 505 -145 -505
		mu 0 4 124 125 145 144
		f 4 125 506 -146 -506
		mu 0 4 125 126 146 145
		f 4 126 507 -147 -507
		mu 0 4 126 127 147 146
		f 4 127 508 -148 -508
		mu 0 4 127 128 148 147
		f 4 128 509 -149 -509
		mu 0 4 128 129 149 148
		f 4 129 510 -150 -510
		mu 0 4 129 130 150 149
		f 4 130 511 -151 -511
		mu 0 4 130 131 151 150
		f 4 131 512 -152 -512
		mu 0 4 131 132 152 151
		f 4 132 513 -153 -513
		mu 0 4 132 133 153 152
		f 4 133 514 -154 -514
		mu 0 4 133 134 154 153
		f 4 134 515 -155 -515
		mu 0 4 134 135 155 154
		f 4 135 516 -156 -516
		mu 0 4 135 136 156 155
		f 4 136 517 -157 -517
		mu 0 4 136 137 157 156
		f 4 137 518 -158 -518
		mu 0 4 137 138 158 157
		f 4 138 519 -159 -519
		mu 0 4 138 139 159 158
		f 4 139 500 -160 -520
		mu 0 4 139 121 141 159
		f 4 140 521 -161 -521
		mu 0 4 141 140 160 161
		f 4 141 522 -162 -522
		mu 0 4 140 142 162 160
		f 4 142 523 -163 -523
		mu 0 4 142 143 163 162
		f 4 143 524 -164 -524
		mu 0 4 143 144 164 163
		f 4 144 525 -165 -525
		mu 0 4 144 145 165 164
		f 4 145 526 -166 -526
		mu 0 4 145 146 166 165
		f 4 146 527 -167 -527
		mu 0 4 146 147 167 166
		f 4 147 528 -168 -528
		mu 0 4 147 148 168 167
		f 4 148 529 -169 -529
		mu 0 4 148 149 169 168
		f 4 149 530 -170 -530
		mu 0 4 149 150 170 169
		f 4 150 531 -171 -531
		mu 0 4 150 151 171 170
		f 4 151 532 -172 -532
		mu 0 4 151 152 172 171
		f 4 152 533 -173 -533
		mu 0 4 152 153 173 172
		f 4 153 534 -174 -534
		mu 0 4 153 154 174 173
		f 4 154 535 -175 -535
		mu 0 4 154 155 175 174
		f 4 155 536 -176 -536
		mu 0 4 155 156 176 175
		f 4 156 537 -177 -537
		mu 0 4 156 157 177 176
		f 4 157 538 -178 -538
		mu 0 4 157 158 178 177
		f 4 158 539 -179 -539
		mu 0 4 158 159 179 178
		f 4 159 520 -180 -540
		mu 0 4 159 141 161 179
		f 4 160 541 -181 -541
		mu 0 4 161 160 401 383
		f 4 161 542 -182 -542
		mu 0 4 160 162 400 401
		f 4 162 543 -183 -543
		mu 0 4 162 163 399 400
		f 4 163 544 -184 -544
		mu 0 4 163 164 398 399
		f 4 164 545 -185 -545
		mu 0 4 164 165 397 398
		f 4 165 546 -186 -546
		mu 0 4 165 166 396 397
		f 4 166 547 -187 -547
		mu 0 4 166 167 395 396
		f 4 167 548 -188 -548
		mu 0 4 167 168 394 395
		f 4 168 549 -189 -549
		mu 0 4 168 169 393 394
		f 4 169 550 -190 -550
		mu 0 4 169 170 392 393
		f 4 170 551 -191 -551
		mu 0 4 170 171 391 392
		f 4 171 552 -192 -552
		mu 0 4 171 172 390 391
		f 4 172 553 -193 -553
		mu 0 4 172 173 389 390
		f 4 173 554 -194 -554
		mu 0 4 173 174 388 389
		f 4 174 555 -195 -555
		mu 0 4 174 175 387 388
		f 4 175 556 -196 -556
		mu 0 4 175 176 386 387
		f 4 176 557 -197 -557
		mu 0 4 176 177 385 386
		f 4 177 558 -198 -558
		mu 0 4 177 178 384 385
		f 4 178 559 -199 -559
		mu 0 4 178 179 382 384
		f 4 179 540 -200 -560
		mu 0 4 179 161 383 382
		f 4 180 561 -201 -561
		mu 0 4 181 180 200 201
		f 4 181 562 -202 -562
		mu 0 4 180 182 202 200
		f 4 182 563 -203 -563
		mu 0 4 182 183 203 202
		f 4 183 564 -204 -564
		mu 0 4 183 184 204 203
		f 4 184 565 -205 -565
		mu 0 4 184 185 205 204
		f 4 185 566 -206 -566
		mu 0 4 185 186 206 205
		f 4 186 567 -207 -567
		mu 0 4 186 187 207 206
		f 4 187 568 -208 -568
		mu 0 4 187 188 208 207
		f 4 188 569 -209 -569
		mu 0 4 188 189 209 208
		f 4 189 570 -210 -570
		mu 0 4 189 190 210 209
		f 4 190 571 -211 -571
		mu 0 4 190 191 211 210
		f 4 191 572 -212 -572
		mu 0 4 191 192 212 211
		f 4 192 573 -213 -573
		mu 0 4 192 193 213 212
		f 4 193 574 -214 -574
		mu 0 4 193 194 214 213
		f 4 194 575 -215 -575
		mu 0 4 194 195 215 214
		f 4 195 576 -216 -576
		mu 0 4 195 196 216 215
		f 4 196 577 -217 -577
		mu 0 4 196 197 217 216
		f 4 197 578 -218 -578
		mu 0 4 197 198 218 217
		f 4 198 579 -219 -579
		mu 0 4 198 199 219 218
		f 4 199 560 -220 -580
		mu 0 4 199 181 201 219
		f 4 200 581 -221 -581
		mu 0 4 201 200 220 221
		f 4 201 582 -222 -582
		mu 0 4 200 202 222 220
		f 4 202 583 -223 -583
		mu 0 4 202 203 223 222
		f 4 203 584 -224 -584
		mu 0 4 203 204 224 223
		f 4 204 585 -225 -585
		mu 0 4 204 205 225 224
		f 4 205 586 -226 -586
		mu 0 4 205 206 226 225
		f 4 206 587 -227 -587
		mu 0 4 206 207 227 226
		f 4 207 588 -228 -588
		mu 0 4 207 208 228 227
		f 4 208 589 -229 -589
		mu 0 4 208 209 229 228
		f 4 209 590 -230 -590
		mu 0 4 209 210 230 229
		f 4 210 591 -231 -591
		mu 0 4 210 211 231 230
		f 4 211 592 -232 -592
		mu 0 4 211 212 232 231
		f 4 212 593 -233 -593
		mu 0 4 212 213 233 232
		f 4 213 594 -234 -594
		mu 0 4 213 214 234 233
		f 4 214 595 -235 -595
		mu 0 4 214 215 235 234
		f 4 215 596 -236 -596
		mu 0 4 215 216 236 235
		f 4 216 597 -237 -597
		mu 0 4 216 217 237 236
		f 4 217 598 -238 -598
		mu 0 4 217 218 238 237
		f 4 218 599 -239 -599
		mu 0 4 218 219 239 238
		f 4 219 580 -240 -600
		mu 0 4 219 201 221 239
		f 4 220 601 -241 -601
		mu 0 4 221 220 240 241
		f 4 221 602 -242 -602
		mu 0 4 220 222 242 240
		f 4 222 603 -243 -603
		mu 0 4 222 223 243 242
		f 4 223 604 -244 -604
		mu 0 4 223 224 244 243
		f 4 224 605 -245 -605
		mu 0 4 224 225 245 244
		f 4 225 606 -246 -606
		mu 0 4 225 226 246 245
		f 4 226 607 -247 -607
		mu 0 4 226 227 247 246
		f 4 227 608 -248 -608
		mu 0 4 227 228 248 247
		f 4 228 609 -249 -609
		mu 0 4 228 229 249 248
		f 4 229 610 -250 -610
		mu 0 4 229 230 250 249
		f 4 230 611 -251 -611
		mu 0 4 230 231 251 250
		f 4 231 612 -252 -612
		mu 0 4 231 232 252 251
		f 4 232 613 -253 -613
		mu 0 4 232 233 253 252
		f 4 233 614 -254 -614
		mu 0 4 233 234 254 253
		f 4 234 615 -255 -615
		mu 0 4 234 235 255 254
		f 4 235 616 -256 -616
		mu 0 4 235 236 256 255
		f 4 236 617 -257 -617
		mu 0 4 236 237 257 256
		f 4 237 618 -258 -618
		mu 0 4 237 238 258 257
		f 4 238 619 -259 -619
		mu 0 4 238 239 259 258
		f 4 239 600 -260 -620
		mu 0 4 239 221 241 259
		f 4 240 621 -261 -621
		mu 0 4 241 240 260 261
		f 4 241 622 -262 -622
		mu 0 4 240 242 262 260
		f 4 242 623 -263 -623
		mu 0 4 242 243 263 262
		f 4 243 624 -264 -624
		mu 0 4 243 244 264 263
		f 4 244 625 -265 -625
		mu 0 4 244 245 265 264
		f 4 245 626 -266 -626
		mu 0 4 245 246 266 265
		f 4 246 627 -267 -627
		mu 0 4 246 247 267 266
		f 4 247 628 -268 -628
		mu 0 4 247 248 268 267
		f 4 248 629 -269 -629
		mu 0 4 248 249 269 268
		f 4 249 630 -270 -630
		mu 0 4 249 250 270 269
		f 4 250 631 -271 -631
		mu 0 4 250 251 271 270
		f 4 251 632 -272 -632
		mu 0 4 251 252 272 271
		f 4 252 633 -273 -633
		mu 0 4 252 253 273 272
		f 4 253 634 -274 -634
		mu 0 4 253 254 274 273
		f 4 254 635 -275 -635
		mu 0 4 254 255 275 274
		f 4 255 636 -276 -636
		mu 0 4 255 256 276 275
		f 4 256 637 -277 -637
		mu 0 4 256 257 277 276
		f 4 257 638 -278 -638
		mu 0 4 257 258 278 277
		f 4 258 639 -279 -639
		mu 0 4 258 259 279 278
		f 4 259 620 -280 -640
		mu 0 4 259 241 261 279
		f 4 260 641 -281 -641
		mu 0 4 261 260 280 281
		f 4 261 642 -282 -642
		mu 0 4 260 262 282 280
		f 4 262 643 -283 -643
		mu 0 4 262 263 283 282
		f 4 263 644 -284 -644
		mu 0 4 263 264 284 283
		f 4 264 645 -285 -645
		mu 0 4 264 265 285 284
		f 4 265 646 -286 -646
		mu 0 4 265 266 286 285
		f 4 266 647 -287 -647
		mu 0 4 266 267 287 286
		f 4 267 648 -288 -648
		mu 0 4 267 268 288 287
		f 4 268 649 -289 -649
		mu 0 4 268 269 289 288
		f 4 269 650 -290 -650
		mu 0 4 269 270 290 289
		f 4 270 651 -291 -651
		mu 0 4 270 271 291 290
		f 4 271 652 -292 -652
		mu 0 4 271 272 292 291
		f 4 272 653 -293 -653
		mu 0 4 272 273 293 292
		f 4 273 654 -294 -654
		mu 0 4 273 274 294 293
		f 4 274 655 -295 -655
		mu 0 4 274 275 295 294
		f 4 275 656 -296 -656
		mu 0 4 275 276 296 295
		f 4 276 657 -297 -657
		mu 0 4 276 277 297 296
		f 4 277 658 -298 -658
		mu 0 4 277 278 298 297
		f 4 278 659 -299 -659
		mu 0 4 278 279 299 298
		f 4 279 640 -300 -660
		mu 0 4 279 261 281 299
		f 4 280 661 -301 -661
		mu 0 4 281 280 300 301
		f 4 281 662 -302 -662
		mu 0 4 280 282 302 300
		f 4 282 663 -303 -663
		mu 0 4 282 283 303 302
		f 4 283 664 -304 -664
		mu 0 4 283 284 304 303
		f 4 284 665 -305 -665
		mu 0 4 284 285 305 304
		f 4 285 666 -306 -666
		mu 0 4 285 286 306 305
		f 4 286 667 -307 -667
		mu 0 4 286 287 307 306
		f 4 287 668 -308 -668
		mu 0 4 287 288 308 307
		f 4 288 669 -309 -669
		mu 0 4 288 289 309 308
		f 4 289 670 -310 -670
		mu 0 4 289 290 310 309
		f 4 290 671 -311 -671
		mu 0 4 290 291 311 310
		f 4 291 672 -312 -672
		mu 0 4 291 292 312 311
		f 4 292 673 -313 -673
		mu 0 4 292 293 313 312
		f 4 293 674 -314 -674
		mu 0 4 293 294 314 313
		f 4 294 675 -315 -675
		mu 0 4 294 295 315 314
		f 4 295 676 -316 -676
		mu 0 4 295 296 316 315
		f 4 296 677 -317 -677
		mu 0 4 296 297 317 316
		f 4 297 678 -318 -678
		mu 0 4 297 298 318 317
		f 4 298 679 -319 -679
		mu 0 4 298 299 319 318
		f 4 299 660 -320 -680
		mu 0 4 299 281 301 319
		f 4 300 681 -321 -681
		mu 0 4 301 300 320 321
		f 4 301 682 -322 -682
		mu 0 4 300 302 322 320
		f 4 302 683 -323 -683
		mu 0 4 302 303 323 322
		f 4 303 684 -324 -684
		mu 0 4 303 304 324 323
		f 4 304 685 -325 -685
		mu 0 4 304 305 325 324
		f 4 305 686 -326 -686
		mu 0 4 305 306 326 325
		f 4 306 687 -327 -687
		mu 0 4 306 307 327 326
		f 4 307 688 -328 -688
		mu 0 4 307 308 328 327
		f 4 308 689 -329 -689
		mu 0 4 308 309 329 328
		f 4 309 690 -330 -690
		mu 0 4 309 310 330 329
		f 4 310 691 -331 -691
		mu 0 4 310 311 331 330
		f 4 311 692 -332 -692
		mu 0 4 311 312 332 331
		f 4 312 693 -333 -693
		mu 0 4 312 313 333 332
		f 4 313 694 -334 -694
		mu 0 4 313 314 334 333
		f 4 314 695 -335 -695
		mu 0 4 314 315 335 334
		f 4 315 696 -336 -696
		mu 0 4 315 316 336 335
		f 4 316 697 -337 -697
		mu 0 4 316 317 337 336
		f 4 317 698 -338 -698
		mu 0 4 317 318 338 337
		f 4 318 699 -339 -699
		mu 0 4 318 319 339 338
		f 4 319 680 -340 -700
		mu 0 4 319 301 321 339
		f 4 320 701 -341 -701
		mu 0 4 321 320 340 341
		f 4 321 702 -342 -702
		mu 0 4 320 322 342 340
		f 4 322 703 -343 -703
		mu 0 4 322 323 343 342
		f 4 323 704 -344 -704
		mu 0 4 323 324 344 343
		f 4 324 705 -345 -705
		mu 0 4 324 325 345 344
		f 4 325 706 -346 -706
		mu 0 4 325 326 346 345
		f 4 326 707 -347 -707
		mu 0 4 326 327 347 346
		f 4 327 708 -348 -708
		mu 0 4 327 328 348 347
		f 4 328 709 -349 -709
		mu 0 4 328 329 349 348
		f 4 329 710 -350 -710
		mu 0 4 329 330 350 349
		f 4 330 711 -351 -711
		mu 0 4 330 331 351 350
		f 4 331 712 -352 -712
		mu 0 4 331 332 352 351
		f 4 332 713 -353 -713
		mu 0 4 332 333 353 352
		f 4 333 714 -354 -714
		mu 0 4 333 334 354 353
		f 4 334 715 -355 -715
		mu 0 4 334 335 355 354
		f 4 335 716 -356 -716
		mu 0 4 335 336 356 355
		f 4 336 717 -357 -717
		mu 0 4 336 337 357 356
		f 4 337 718 -358 -718
		mu 0 4 337 338 358 357
		f 4 338 719 -359 -719
		mu 0 4 338 339 359 358
		f 4 339 700 -360 -720
		mu 0 4 339 321 341 359
		f 4 340 721 -361 -721
		mu 0 4 341 340 360 361
		f 4 341 722 -362 -722
		mu 0 4 340 342 362 360
		f 4 342 723 -363 -723
		mu 0 4 342 343 363 362
		f 4 343 724 -364 -724
		mu 0 4 343 344 364 363
		f 4 344 725 -365 -725
		mu 0 4 344 345 365 364
		f 4 345 726 -366 -726
		mu 0 4 345 346 366 365
		f 4 346 727 -367 -727
		mu 0 4 346 347 367 366
		f 4 347 728 -368 -728
		mu 0 4 347 348 368 367
		f 4 348 729 -369 -729
		mu 0 4 348 349 369 368
		f 4 349 730 -370 -730
		mu 0 4 349 350 370 369
		f 4 350 731 -371 -731
		mu 0 4 350 351 371 370
		f 4 351 732 -372 -732
		mu 0 4 351 352 372 371
		f 4 352 733 -373 -733
		mu 0 4 352 353 373 372
		f 4 353 734 -374 -734
		mu 0 4 353 354 374 373
		f 4 354 735 -375 -735
		mu 0 4 354 355 375 374
		f 4 355 736 -376 -736
		mu 0 4 355 356 376 375
		f 4 356 737 -377 -737
		mu 0 4 356 357 377 376
		f 4 357 738 -378 -738
		mu 0 4 357 358 378 377
		f 4 358 739 -379 -739
		mu 0 4 358 359 379 378
		f 4 359 720 -380 -740
		mu 0 4 359 341 361 379
		f 4 -1 -741 741 -2
		mu 0 4 1 0 380 4
		f 4 -3 -742 742 -4
		mu 0 4 6 4 380 8
		f 4 -5 -743 743 -6
		mu 0 4 10 8 380 12
		f 4 -7 -744 744 -8
		mu 0 4 14 12 380 16
		f 4 -9 -745 745 -10
		mu 0 4 18 16 380 20
		f 4 -11 -746 746 -12
		mu 0 4 22 20 380 24
		f 4 -13 -747 747 -14
		mu 0 4 26 24 380 28
		f 4 -15 -748 748 -16
		mu 0 4 30 28 380 32
		f 4 -17 -749 749 -18
		mu 0 4 34 32 380 36
		f 4 -19 -750 740 -20
		mu 0 4 38 36 380 0
		f 4 -751 360 361 751
		mu 0 4 381 361 360 362
		f 4 -752 362 363 752
		mu 0 4 381 362 363 364
		f 4 -753 364 365 753
		mu 0 4 381 364 365 366
		f 4 -754 366 367 754
		mu 0 4 381 366 367 368
		f 4 -755 368 369 755
		mu 0 4 381 368 369 370
		f 4 -756 370 371 756
		mu 0 4 381 370 371 372
		f 4 -757 372 373 757
		mu 0 4 381 372 373 374
		f 4 -758 374 375 758
		mu 0 4 381 374 375 376
		f 4 -759 376 377 759
		mu 0 4 381 376 377 378
		f 4 -760 378 379 750
		mu 0 4 381 378 379 361;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "eyes:rightEye" -p "eyes:eyes";
	rename -uid "19180A6E-814D-5509-11AA-2DB1128344BF";
	setAttr ".rp" -type "double3" -0.35922712087631226 15.237318992614746 0.30976703763008118 ;
	setAttr ".sp" -type "double3" -0.35922712087631226 15.237318992614746 0.30976703763008118 ;
createNode mesh -n "eyes:rightEyeShape" -p "eyes:rightEye";
	rename -uid "2FA95B0C-FE4D-9907-EE6F-E282B5B6A2A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.7514148810205068 1.5044347738997803 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 402 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.25945997 0.79348397 4.25232363
		 0.79616475 4.24948835 0.81485653 4.26297569 0.81477857 4.24630356 0.79148889 4.23663235
		 0.81078315 4.23895502 0.78946304 4.22567463 0.80291796 4.2368331 0.78214169 4.21766853
		 0.79206586 4.23207855 0.77618337 4.21342564 0.7792623 4.23466539 0.76901293 4.21332693
		 0.76577663 4.23432064 0.76139808 4.21742058 0.75292492 4.24062872 0.75711727 4.22526741
		 0.74195671 4.24482632 0.75075436 4.23613358 0.73396516 4.25244474 0.75099874 4.24892902
		 0.72970414 4.25958061 0.7483182 4.26241684 0.72962618 4.26560068 0.7529943 4.27527332
		 0.73369956 4.2729497 0.75501966 4.28623104 0.74156451 4.27507162 0.76234126 4.29423714
		 0.75241661 4.27982616 0.76829958 4.29847956 0.7652204 4.27723885 0.77547002 4.29857826
		 0.77870584 4.27758312 0.78308511 4.29448414 0.79155803 4.271276 0.78736544 4.28663778
		 0.802526 4.2670784 0.79372835 4.27577162 0.81051731 4.24618912 0.83620667 4.26643276
		 0.83609533 4.22689915 0.83006024 4.21045637 0.81825137 4.19846249 0.80194092 4.19210148
		 0.782722 4.19198561 0.76247692 4.1981349 0.74318957 4.20994091 0.72674322 4.22625351
		 0.71475363 4.24547243 0.70838761 4.2657156 0.70827603 4.28500605 0.71442223 4.3014493
		 0.7262311 4.31344271 0.74254179 4.31980419 0.76176047 4.31991959 0.78200555 4.31377029
		 0.80129313 4.30196381 0.81773973 4.28565168 0.82972908 4.24283028 0.85766912 4.26987123
		 0.85754347 4.21707392 0.84943318 4.19512367 0.83364058 4.17912674 0.81183839 4.17065096
		 0.78616023 4.1705246 0.7591188 4.17876053 0.73336291 4.1945529 0.71141148 4.21635532
		 0.69541597 4.24203444 0.686939 4.26907492 0.68681359 4.29483175 0.69504929 4.316782
		 0.71084189 4.33277893 0.73264408 4.34125423 0.75832248 4.34138107 0.78536367 4.33314419
		 0.81111956 4.31735229 0.83307099 4.29554939 0.84906673 4.23940754 0.87929893 4.27330017
		 0.87917209 4.20713425 0.86894655 4.17964077 0.84912777 4.15961647 0.82178307 4.1490221
		 0.78958869 4.14889479 0.7556963 4.1592474 0.72342348 4.17906618 0.69592905 4.20641088
		 0.67590499 4.2386055 0.66531038 4.27249765 0.66518378 4.30477095 0.67553592 4.33226442
		 0.69535494 4.3522892 0.72269964 4.36288261 0.75489402 4.36301041 0.78878617 4.35265732
		 0.82105923 4.33283949 0.84855342 4.30549431 0.86857748 4.23591328 0.90116477 4.27673388
		 0.90104747 4.19705439 0.88866258 4.16396093 0.86476374 4.13987255 0.83180833 4.12714624
		 0.79302239 4.12702894 0.75220203 4.13953161 0.71334291 4.16343021 0.68024945 4.19638538
		 0.65616107 4.23517179 0.643435 4.27599239 0.6433177 4.31485081 0.65582013 4.34794426
		 0.67971873 4.37203312 0.71267414 4.38475895 0.75146031 4.38487625 0.79228067 4.37237358
		 0.83113933 4.34847546 0.86423278 4.31551981 0.8883214 4.232337 0.92336011 4.28019094
		 0.92326164 4.18679428 0.90866613 4.1480217 0.88061786 4.11981392 0.84196091 4.10493231
		 0.79647946 4.1048336 0.74862528 4.11952782 0.7030828 4.14757633 0.66430998 4.18623304
		 0.63610244 4.23171425 0.62122107 4.27956867 0.6211226 4.32511139 0.63581657 4.36388397
		 0.66386485 4.39209175 0.70252156 4.40697289 0.74800301 4.40707159 0.79585719 4.39237738
		 0.84139967 4.36432886 0.88017249 4.32567263 0.90838003 4.22866154 0.94601727 4.28369713
		 0.9459455 4.17629719 0.92907858 4.13173056 0.89678764 4.09932375 0.85230517 4.082248211
		 0.79998541 4.082176208 0.74495029 4.099115372 0.69258595 4.13140678 0.64801908 4.17588902
		 0.61561203 4.22820854 0.59853697 4.28324413 0.5984652 4.33560801 0.61540389 4.38017464
		 0.64769506 4.41258144 0.69217753 4.42965698 0.74449706 4.42972851 0.79953265 4.41278982
		 0.85189629 4.38049889 0.89646339 4.33601665 0.9288702 4.22486067 0.96933198 4.28728676
		 0.96929359 4.16547823 0.95007801 4.11495161 0.91341567 4.07822752 0.86293459 4.058900356
		 0.80357575 4.058861732 0.74114943 4.07811594 0.68176699 4.11477804 0.63124084 4.16525936
		 0.59451628 4.22461891 0.57518888 4.28704453 0.57515049 4.34642696 0.59440494 4.39695311
		 0.6310668 4.43367767 0.68154812 4.45300484 0.74090719 4.45304298 0.80333304 4.43378925
		 0.86271572 4.39712715 0.91324186 4.34664583 0.94996643 4.8458004 0.57659066 4.90252733
		 0.61780488 4.7791152 0.55492318 4.70899773 0.55492318 4.64231205 0.5765909 4.58558559
		 0.61780465 4.5443716 0.6745311 4.52270412 0.74121654 4.52270412 0.81133449 4.5443716
		 0.87802017 4.58558559 0.93474615 4.64231157 0.97596014 4.70899773 0.99762785 4.77911472
		 0.99762785 4.8458004 0.97596037 4.90252686 0.93474615 4.94374084 0.87802017 4.96540833
		 0.81133449 4.96540833 0.74121702 4.94374132 0.67453158 4.83452702 0.59844625 4.88505125
		 0.63510692 4.77514696 0.579193 4.71272326 0.57923138 4.65336657 0.59855783 4.60288763
		 0.63528073 4.56622696 0.68580496 4.54697371 0.74518502 4.54701233 0.80760872 4.56633902
		 0.86696541 4.60306168 0.91744459 4.65358543 0.95410454 4.71296597 0.97335804 4.77538919
		 0.97331965 4.83474588 0.9539932 4.88522482 0.9172703 4.92188549 0.86674654 4.94113874
		 0.80736601 4.9411006 0.74494302 4.92177391 0.68558633 4.82370806 0.61944568 4.86827278
		 0.65173542 4.77134609 0.60250747 4.71631336 0.60257924 4.66399622 0.61965382 4.6195159
		 0.6520592 4.58722639 0.69662392 4.57028866 0.74898589 4.57036018 0.80401886 4.58743477
		 0.856336 4.61984015 0.90081608 4.66440487 0.93310559 4.71676636 0.95004332 4.77179909
		 0.94997156 4.82411623 0.93289721 4.86859703 0.9004916 4.90088606 0.85592711 4.91782379
		 0.80356562 4.91775227 0.74853265 4.90067816 0.69621575 4.81321096 0.63985813 4.85198164
		 0.66790473 4.76767063 0.62516487 4.71981907 0.62526333 4.67434025 0.64014423 4.63568592
		 0.66835034 4.60763884 0.70712078 4.59294605 0.75266111 4.59304428 0.80051243 4.60792494
		 0.84599125;
	setAttr ".uvst[0].uvsp[250:401]" 4.63613081 0.88464606 4.67490196 0.91269267
		 4.72044182 0.92738616 4.76829338 0.92728746 4.8137722 0.9124068 4.85242701 0.88420069
		 4.88047361 0.84543002 4.89516687 0.79988992 4.89506817 0.75203836 4.88018751 0.70655954
		 4.80295086 0.65986264 4.83604193 0.68375957 4.76409435 0.64736068 4.72327662 0.64747798
		 4.68449306 0.66020334 4.65154028 0.68429005 4.62764311 0.71738136 4.61514187 0.75623786
		 4.61525917 0.79705513 4.62798405 0.83583844 4.652071 0.8687917 4.68516254 0.89268863
		 4.7240181 0.90519011 4.76483583 0.90507281 4.80361938 0.89234769 4.83657265 0.86826074
		 4.86046934 0.83516943 4.87297106 0.79631364 4.87285376 0.75549591 4.8601284 0.71671236
		 4.79287004 0.67957914 4.82036161 0.69939578 4.76060009 0.66922748 4.72671032 0.6693548
		 4.69451904 0.67994773 4.66717672 0.6999706 4.64735985 0.72746193 4.63700867 0.75973237
		 4.63713551 0.79362142 4.64772892 0.82581294 4.66775131 0.85315549 4.69524336 0.87297237
		 4.72751331 0.88332403 4.76140213 0.88319623 4.79359341 0.8726033 4.82093573 0.85258067
		 4.84075308 0.82508957 4.85110426 0.79281938 4.85097742 0.75892985 4.84038401 0.72673833
		 4.78292942 0.6990937 4.80487823 0.71488345 4.75717735 0.69085848 4.73013926 0.69098532
		 4.70446396 0.6994592 4.68266487 0.71545446 4.66687441 0.7374016 4.65863991 0.76315486
		 4.65876532 0.79019225 4.6672411 0.81586778 4.68323469 0.83766758 4.70518303 0.85345733
		 4.73093605 0.86169279 4.75797319 0.86156595 4.78364849 0.85309136 4.80544806 0.83709681
		 4.82123852 0.81514943 4.82947302 0.78939593 4.82934761 0.76235878 4.82087183 0.73668349
		 4.77310181 0.71847045 4.78954458 0.73027384 4.75381851 0.71232212 4.73357725 0.71243775
		 4.7143631 0.71879804 4.69805574 0.73078907 4.68624973 0.74722874 4.68010521 0.76651466
		 4.68021631 0.78675377 4.68658113 0.80596817 4.69856787 0.82227671 4.71501112 0.83408082
		 4.73429441 0.84022915 4.7545352 0.84011352 4.77374983 0.83375299 4.79005671 0.82176197
		 4.80186319 0.80532253 4.80800772 0.78603661 4.80789614 0.76579678 4.80153131 0.74658239
		 4.76336336 0.73776138 4.77432728 0.74560368 4.75051785 0.73366916 4.73703814 0.73376858
		 4.7242403 0.73800838 4.71339369 0.74601185 4.7055316 0.75696456 4.70146084 0.76981485
		 4.70153809 0.7832967 4.70579815 0.79608548 4.71378517 0.80694711 4.72474957 0.81478965
		 4.73759508 0.81888211 4.75107479 0.81878245 4.7638731 0.81454313 4.77471924 0.80653918
		 4.78258085 0.79558671 4.78665161 0.78273642 4.78657436 0.76925409 4.78231382 0.75646532
		 4.75439024 0.75565946 4.75917864 0.76095307 4.74728394 0.75498998 4.74029922 0.75352299
		 4.73415661 0.75715816 4.72764301 0.76007664 4.7248106 0.76662791 4.72125626 0.77281749
		 4.72281551 0.77978313 4.72357798 0.78687942 4.72893381 0.7915982 4.73372221 0.79689133
		 4.74082804 0.79756033 4.74781322 0.79902828 4.75395584 0.79539263 4.76046944 0.79247439
		 4.76330185 0.78592288 4.76685619 0.77973306 4.76529694 0.77276814 4.76453447 0.76567137
		 4.25595236 0.77224135 4.74405622 0.77627552 4.35770082 0.97193336 4.29101276 0.9936018
		 4.41442919 0.93071818 4.45564461 0.87398982 4.47731304 0.80730152 4.47731304 0.73718166
		 4.45564508 0.67049313 4.41442919 0.61376476 4.3577013 0.5725491 4.29101276 0.55088067
		 4.22089291 0.55088067 4.15420485 0.57254887 4.097476006 0.61376452 4.056260109 0.67049313
		 4.034592152 0.73718119 4.034592152 0.80730128 4.056260109 0.87398958 4.097476006
		 0.93071795 4.15420437 0.9719336 4.22089195 0.9936018;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.53190601 16.243303 -0.019027811 
		-0.52308697 16.264158 0.036284246 -0.45364994 16.272907 0.061045092 -0.40191662 16.288353 
		0.10308325 -0.32702923 16.284214 0.093919307 -0.25214177 16.288353 0.10662885 -0.20040843 
		16.272907 0.067040116 -0.13097146 16.264158 0.045566805 -0.12215252 16.243303 -0.0093277255 
		-0.084688492 16.225008 -0.056780659 -0.12215252 16.206713 -0.10600741 -0.13097146 
		16.18586 -0.16131566 -0.20040843 16.177111 -0.18607649 -0.25214186 16.161663 -0.22811463 
		-0.32702923 16.165802 -0.21895073 -0.40191662 16.161663 -0.23166025 -0.45364988 16.177111 
		-0.19207151 -0.52308685 16.18586 -0.17059821 -0.53190589 16.206713 -0.11570749 -0.56936973 
		16.225008 -0.06825453 -0.73293215 16.224518 0.037207521 -0.67248929 16.25712 0.12478185 
		-0.57834709 16.282993 0.1953737 -0.45972121 16.299604 0.24207385 -0.32822341 16.305328 
		0.26031205 -0.19672553 16.299604 0.24829976 -0.078099735 16.282993 0.20721605 0.016042337 
		16.25712 0.14108148 0.076485261 16.224518 0.056368887 0.097312391 16.188375 -0.038631417 
		0.076485261 16.152235 -0.13461393 0.016042288 16.119633 -0.22219211 -0.078099735 
		16.093758 -0.29278395 -0.19672561 16.077147 -0.3394841 -0.32822341 16.071423 -0.35772231 
		-0.45972121 16.077147 -0.34570998 -0.57834691 16.093758 -0.30462629 -0.67248893 16.119633 
		-0.23849174 -0.73293197 16.152235 -0.15377529 -0.75375903 16.188375 -0.058778834 
		-0.92475653 16.181423 0.1001552 -0.83595723 16.229321 0.22881375 -0.69764888 16.267332 
		0.3325251 -0.52337033 16.291737 0.40113443 -0.330181 16.300148 0.42792845 -0.13699171 
		16.291737 0.41028121 0.037286852 16.267332 0.34992325 0.17559502 16.229321 0.25276026 
		0.26439431 16.181423 0.12830602 0.29499248 16.128326 -0.011262756 0.26439431 16.07523 
		-0.15227641 0.1755949 16.027332 -0.28093877 0.037286766 15.989319 -0.38465011 -0.13699171 
		15.964914 -0.45325944 -0.330181 15.956504 -0.48005342 -0.52337021 15.964914 -0.46240619 
		-0.69764858 15.989319 -0.40204829 -0.83595687 16.027332 -0.3048853 -0.92475641 16.07523 
		-0.18042721 -0.95535421 16.128326 -0.040862251 -1.1026556 16.11508 0.16826594 -0.98768622 
		16.177095 0.33484411 -0.80861735 16.226309 0.46911862 -0.58297747 16.257906 0.55794871 
		-0.33285379 16.268795 0.59264028 -0.082730025 16.257908 0.56979102 0.14290975 16.226309 
		0.49164411 0.32197857 16.177095 0.36584786 0.43694782 16.11508 0.20471302 0.47656339 
		16.046337 0.024014026 0.43694779 15.977592 -0.1585606 0.32197845 15.915578 -0.32513881 
		0.14290968 15.866364 -0.45941329 -0.082730114 15.834765 -0.54824334 -0.33285379 15.823878 
		-0.58293116 -0.58297729 15.834765 -0.56008571 -0.808617 15.866364 -0.48193881 -0.98768604 
		15.915578 -0.35614252 -1.1026551 15.977592 -0.19500767 -1.1422708 16.046337 -0.01430871 
		-1.2622489 16.027124 0.23986591 -1.1239407 16.101728 0.44025695 -0.90852046 16.160934 
		0.60179353 -0.63707519 16.198946 0.70865661 -0.33617589 16.212044 0.75038671 -0.03527661 
		16.198946 0.72290301 0.23616852 16.160934 0.62889177 0.45158857 16.101728 0.4775545 
		0.5898968 16.027124 0.28371182 0.63755459 15.944426 0.066330343 0.5898968 15.861727 
		-0.15330751 0.45158857 15.787124 -0.35369855 0.23616843 15.727918 -0.51523513 -0.035276689 
		15.689907 -0.62209439 -0.33617589 15.676807 -0.66382837 -0.63707507 15.689907 -0.63634074 
		-0.90852034 15.727918 -0.54233336 -1.1239402 15.787125 -0.3909961 -1.2622485 15.861727 
		-0.19715343 -1.3099061 15.944426 0.020228041 -1.3996072 15.919722 0.31318825 -1.2413653 
		16.005077 0.54246306 -0.9948982 16.072817 0.72727948 -0.68433148 16.116308 0.84954548 
		-0.34006572 16.131292 0.89728802 0.004200004 16.116308 0.86584508 0.31476662 16.072817 
		0.7582832 0.56123364 16.005077 0.58513606 0.71947527 15.919722 0.36335337 0.77400148 
		15.825105 0.1146442 0.71947527 15.730487 -0.13664661 0.56123352 15.645131 -0.36592138 
		0.31476653 15.577394 -0.55073398 0.0041999295 15.533902 -0.67299998 -0.34006572 15.518916 
		-0.72074634 -0.6843313 15.533902 -0.68929958 -0.99489802 15.577394 -0.5817377 -1.241365 
		15.645132 -0.40859437 -1.3996066 15.730487 -0.1868117 -1.4541328 15.825105 0.061897494 
		-1.5113475 15.795516 0.38643253 -1.337069 15.889522 0.63894075 -1.0656235 15.964126 
		0.84248739 -0.72358263 16.012024 0.97714472 -0.34442732 16.028528 1.0297263 0.034727924 
		16.012024 0.99509621 0.3767688 15.964126 0.87663323 0.64821392 15.889522 0.68593848 
		0.8224923 15.795516 0.44168156 0.88254476 15.69131 0.16776597 0.8224923 15.587105 
		-0.10898905 0.64821392 15.493098 -0.36150113 0.37676871 15.418494 -0.56504768 0.034727767 
		15.370596 -0.69970131 -0.34442732 15.354092 -0.75228661 -0.72358245 15.370596 -0.7176528 
		-1.0656232 15.418494 -0.59919357 -1.3370684 15.493098 -0.40849879 -1.5113467 15.587105 
		-0.16423808 -1.5713992 15.69131 0.10967369 -1.5947189 15.657565 0.45778951 -1.4086947 
		15.757907 0.72731853 -1.1189554 15.83754 0.94458479 -0.75386214 15.888665 1.0883137 
		-0.34915343 15.906281 1.1444414 0.055555336 15.888665 1.1074752 0.42064825 15.83754 
		0.98103195 0.71038759 15.757907 0.7774837 0.89641178 15.657565 0.51676214 0.96051127 
		15.546336 0.22438765 0.89641178 15.435107 -0.071021684 0.71038759 15.334765 -0.34055075 
		0.4206481 15.255135 -0.55781317 0.055555254 15.204008 -0.70154208 -0.34915325 15.186392 
		-0.75766975 -0.75386184 15.204008 -0.72070342 -1.1189548 15.255135 -0.59426028 -1.4086939 
		15.334765 -0.39071581 -1.5947183 15.435107 -0.1299943 -1.6588178 15.546336 0.16238019 
		-1.6476682 15.509268 0.525509 -1.4544792 15.613474 0.80541956 -1.1535796 15.696172 
		1.0310487 -0.77442437 15.749269 1.1803175 -0.35412747 15.767564 1.238607 0.066169426 
		15.749269 1.2002169;
	setAttr ".pt[166:331]" 0.44532466 15.696172 1.0688995 0.74622381 15.613474 
		0.85751688 0.93941301 15.509268 0.58675301 1.0059814 15.393754 0.283115 0.93941301 
		15.278239 -0.023674812 0.74622381 15.174034 -0.3035816 0.44532442 15.091335 -0.5292145 
		0.066169351 15.03824 -0.67847949 -0.35412747 15.019943 -0.73677284 -0.7744242 15.03824 
		-0.69837892 -1.1535792 15.091335 -0.56706542 -1.4544783 15.174034 -0.35567889 -1.6476676 
		15.278239 -0.084918857 -1.7142361 15.393754 0.2187192 -1.6688921 15.354273 0.58791602 
		-1.4732946 15.459779 0.87131691 -1.1686447 15.543508 1.0997584 -0.7847631 15.597265 
		1.2508863 -0.35922712 15.615788 1.3099027 0.066308819 15.597265 1.2710338 0.45019019 
		15.543508 1.1380811 0.75484025 15.459779 0.92406362 0.95043761 15.354273 0.64992356 
		1.0178357 15.237319 0.34250188 0.95043755 15.120366 0.031889182 0.7548402 15.014861 
		-0.25150782 0.45019001 14.931131 -0.4799532 0.06630867 14.877375 -0.63107723 -0.35922712 
		14.85885 -0.69009733 -0.7847628 14.877375 -0.65122473 -1.168644 14.931131 -0.51827592 
		-1.4732943 15.014861 -0.30425453 -1.6688913 15.120366 -0.030118268 -1.7362896 15.237319 
		0.2773034 -1.6578677 15.196399 0.64348 -1.4646783 15.300606 0.92339063 -1.1637791 
		15.383304 1.1490197 -0.78462362 15.436399 1.2982886 -0.36432678 15.454695 1.3565781 
		0.055970103 15.436399 1.318188 0.43512529 15.383304 1.1868707 0.7360245 15.300606 
		0.97548795 0.92921376 15.196399 0.70472407 0.99578226 15.080885 0.40108603 0.92921376 
		14.965371 0.094296247 0.7360245 14.861166 -0.18561053 0.43512511 14.778466 -0.41124338 
		0.055969939 14.725371 -0.56050843 -0.36432678 14.707075 -0.61880183 -0.78462344 14.725371 
		-0.58040786 -1.1637785 14.778466 -0.4490943 -1.4646779 14.861166 -0.23770784 -1.6578668 
		14.965371 0.033052202 -1.7244354 15.080885 0.33669025 -1.6148664 15.039531 0.69082689 
		-1.4288422 15.139873 0.960356 -1.1391026 15.219505 1.1776223 -0.77400953 15.270632 
		1.3213512 -0.36930087 15.288248 1.3774787 0.035407927 15.270632 1.3405125 0.40050089 
		15.219505 1.2140692 0.69024026 15.139873 1.0105211 0.87626427 15.039531 0.74979955 
		0.94036382 14.928302 0.45742506 0.87626427 14.817073 0.16201572 0.69024026 14.716731 
		-0.10751331 0.40050074 14.6371 -0.32477576 0.035407774 14.585975 -0.46850467 -0.36930087 
		14.568357 -0.52463228 -0.77400935 14.585975 -0.48766604 -1.1391022 14.6371 -0.36122283 
		-1.4288416 14.716731 -0.15767838 -1.6148654 14.817073 0.10304312 -1.6789652 14.928302 
		0.3954176 -1.540947 14.887535 0.72879809 -1.3666687 14.981541 0.98130637 -1.0952232 
		15.056145 1.184853 -0.75318211 15.104044 1.3195103 -0.37402686 15.120547 1.3720919 
		0.0051284395 15.104043 1.3374618 0.34716928 15.056145 1.2189988 0.61861438 14.981541 
		1.0283041 0.79289293 14.887535 0.78404719 0.85294509 14.783329 0.51013154 0.79289293 
		14.679124 0.23337653 0.61861438 14.585116 -0.019135511 0.34716922 14.510512 -0.2226821 
		0.0051283203 14.462615 -0.35733569 -0.37402689 14.446111 -0.40992105 -0.75318193 
		14.462615 -0.3752872 -1.0952227 14.510513 -0.25682795 -1.3666681 14.585117 -0.066133201 
		-1.5409462 14.679124 0.17812748 -1.6009984 14.783329 0.45203927 -1.4379296 14.744151 
		0.75645185 -1.2796882 14.829507 0.98572659 -1.033221 14.897245 1.170543 -0.72265434 
		14.940738 1.292809 -0.37838846 14.955722 1.3405516 -0.034122754 14.940737 1.3091086 
		0.27644393 14.897245 1.2015467 0.52291107 14.829507 1.0283996 0.68115258 14.744151 
		0.80661696 0.73567885 14.649534 0.55790782 0.68115258 14.554916 0.30661699 0.52291089 
		14.469561 0.077342167 0.27644384 14.401823 -0.10747042 -0.034122743 14.358332 -0.22973642 
		-0.37838846 14.343346 -0.27748281 -0.7226541 14.358332 -0.24603605 -1.0332204 14.401823 
		-0.13847414 -1.2796875 14.469562 0.034669153 -1.4379293 14.554916 0.25645185 -1.4924556 
		14.649534 0.50516105 -1.3083515 14.612911 0.77311277 -1.1700432 14.687514 0.97350377 
		-0.95462275 14.74672 1.1350404 -0.68317759 14.784733 1.2419034 -0.38227826 14.797831 
		1.2836336 -0.081378937 14.784733 1.2561499 0.19006623 14.74672 1.1621387 0.4054862 
		14.687514 1.0108013 0.54379445 14.612911 0.81695867 0.59145218 14.530212 0.59957719 
		0.54379445 14.447514 0.37993932 0.4054862 14.37291 0.17954823 0.19006614 14.313704 
		0.018011767 -0.081378937 14.275693 -0.088847511 -0.38227826 14.262594 -0.13058151 
		-0.68317729 14.275693 -0.10309395 -0.95462245 14.313704 -0.0090864785 -1.1700426 
		14.37291 0.14225075 -1.3083509 14.447514 0.33609343 -1.3560086 14.530212 0.5534749 
		-1.1554023 14.497046 0.77836585 -1.040433 14.559061 0.94494408 -0.86136407 14.608274 
		1.0792186 -0.63572431 14.639873 1.1680486 -0.38560048 14.650762 1.2027402 -0.13547672 
		14.639873 1.179891 0.090163112 14.608275 1.1017441 0.26923189 14.559061 0.9759478 
		0.38420102 14.497046 0.8148129 0.42381668 14.428302 0.63411403 0.38420102 14.359558 
		0.45153931 0.26923192 14.297544 0.28496116 0.09016303 14.248329 0.15068661 -0.13547672 
		14.216731 0.06185662 -0.38560048 14.205844 0.027168799 -0.63572401 14.216731 0.05001425 
		-0.86136371 14.248329 0.12816118 -1.0404327 14.297544 0.25395736 -1.1554018 14.359558 
		0.41509226 -1.1950175 14.428302 0.59579128 -0.98284864 14.399409 0.77208549 -0.89404947 
		14.447307 0.90074402 -0.75574106 14.485319 1.0044553 -0.58146256 14.509725 1.0730647 
		-0.38827327 14.518134 1.0998588 -0.1950839 14.509725 1.0822115 -0.020805467 14.485319 
		1.0218536 0.11750275 14.447307 0.92469054 0.20630214 14.399409 0.80023634 0.23690028 
		14.346313 0.66066754 0.20630214 14.293218 0.51965392 0.11750273 14.245318 0.39099148;
	setAttr ".pt[332:381]" -0.020805474 14.207306 0.28728017 -0.19508408 14.1829 
		0.21867089 -0.38827327 14.174491 0.1918768 -0.58146238 14.182901 0.20952405 -0.75574088 
		14.207306 0.26988202 -0.89404929 14.245318 0.36704499 -0.98284853 14.293218 0.49150306 
		-1.0134467 14.346313 0.63106805 -0.7949397 14.322404 0.75442296 -0.73449665 14.355006 
		0.84199733 -0.64035451 14.380879 0.91258925 -0.52172863 14.397491 0.95928931 -0.39023077 
		14.403215 0.97752762 -0.25873306 14.397491 0.96551526 -0.14010702 14.380879 0.92443156 
		-0.04596512 14.355006 0.85829693 0.014477734 14.322404 0.77358437 0.035304904 14.286263 
		0.67858404 0.014477734 14.250123 0.58260155 -0.045965202 14.217519 0.49502334 -0.14010718 
		14.191646 0.42443159 -0.25873306 14.175034 0.37773144 -0.39023077 14.169309 0.35949326 
		-0.52172863 14.175034 0.37150547 -0.64035434 14.191646 0.41258925 -0.73449647 14.217519 
		0.4787237 -0.79493934 14.250123 0.5634402 -0.81576663 14.286263 0.65843672 -0.59630173 
		14.267926 0.72581261 -0.57821357 14.28693 0.77645487 -0.51804584 14.29753 0.80588567 
		-0.46277186 14.30998 0.84009027 -0.39142501 14.308837 0.83875978 -0.32007819 14.30998 
		0.84346825 -0.2648043 14.29753 0.81188053 -0.20463647 14.28693 0.78529847 -0.18654831 
		14.267926 0.73551273 -0.16054174 14.249631 0.68778861 -0.18654831 14.231336 0.63883305 
		-0.20463645 14.212333 0.58819497 -0.2648043 14.201734 0.55876392 -0.32007819 14.189281 
		0.52455539 -0.39142501 14.190426 0.52588975 -0.46277186 14.189281 0.52117741 -0.51804584 
		14.201733 0.55276906 -0.57821345 14.212333 0.57935137 -0.59630173 14.231336 0.62913293 
		-0.62230831 14.249631 0.67685711 -0.32662788 16.23732 -0.067159876 -0.39182654 14.237319 
		0.68696511;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877814 -0.98768842 -0.048339844 0.14237386 -0.98768848 -0.10344315
		 0.09194988 -0.98768848 -0.12656021 0.054381967 -0.98768842 -0.16737366 0 -0.98768848 -0.15643692
		 -0.054382026 -0.98768848 -0.16737366 -0.09194994 -0.98768842 -0.12656021 -0.14237392 -0.98768848 -0.10344315
		 -0.14877808 -0.98768848 -0.048339844 -0.17598385 -0.98768842 0 -0.14877808 -0.98768848 0.048339844
		 -0.14237392 -0.98768848 0.10343933 -0.09194994 -0.98768842 0.1265564 -0.054381967 -0.98768842 0.16736984
		 0 -0.98768848 0.15643311 0.054381967 -0.98768842 0.16736984 0.091949821 -0.98768848 0.1265564
		 0.1423738 -0.98768842 0.10343933 0.14877802 -0.98768842 0.048339844 0.17598367 -0.98768842 0
		 0.2938928 -0.9510566 -0.095493317 0.25000018 -0.95105666 -0.18163681 0.18163568 -0.9510566 -0.25
		 0.095491529 -0.9510566 -0.29389191 0 -0.9510566 -0.30901718 -0.095491588 -0.9510566 -0.29389191
		 -0.18163568 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.18163681 -0.29389274 -0.9510566 -0.095493317
		 -0.30901706 -0.95105666 0 -0.29389274 -0.9510566 0.095489502 -0.25000006 -0.9510566 0.18163681
		 -0.18163568 -0.95105666 0.25 -0.095491529 -0.9510566 0.29389191 0 -0.9510566 0.30901718
		 0.095491529 -0.9510566 0.29389191 0.18163556 -0.9510566 0.25 0.24999994 -0.95105666 0.18163681
		 0.29389268 -0.9510566 0.095489502 0.30901694 -0.9510566 0 0.43177092 -0.89100659 -0.14029312
		 0.36728632 -0.89100659 -0.26684952 0.2668491 -0.89100659 -0.36728668 0.14029092 -0.89100659 -0.43177032
		 0 -0.89100659 -0.45399094 -0.14029086 -0.89100659 -0.43177032 -0.26684907 -0.89100659 -0.36728668
		 -0.36728618 -0.89100659 -0.26684952 -0.43177077 -0.89100659 -0.14029312 -0.45399064 -0.89100659 0
		 -0.43177077 -0.89100659 0.14028931 -0.36728609 -0.89100659 0.26684952 -0.26684901 -0.89100659 0.36728668
		 -0.14029086 -0.89100659 0.43177032 0 -0.89100659 0.45399094 0.1402908 -0.89100659 0.43177032
		 0.26684892 -0.89100665 0.36728668 0.36728609 -0.89100665 0.26684952 0.4317708 -0.89100659 0.14028931
		 0.45399046 -0.89100659 0 0.55901742 -0.80901706 -0.18163681 0.47552848 -0.80901712 -0.34549332
		 0.34549165 -0.80901706 -0.47552872 0.18163568 -0.80901706 -0.55901718 0 -0.80901706 -0.58778763
		 -0.18163574 -0.80901712 -0.55901718 -0.34549162 -0.80901712 -0.47552872 -0.47552842 -0.80901706 -0.34549332
		 -0.55901718 -0.80901706 -0.18163681 -0.58778536 -0.80901706 0 -0.55901718 -0.80901706 0.18163681
		 -0.47552836 -0.80901706 0.34549332 -0.34549156 -0.80901706 0.47552872 -0.18163568 -0.80901706 0.55901718
		 0 -0.80901706 0.58778381 0.18163556 -0.80901706 0.55901718 0.34549141 -0.80901706 0.47552872
		 0.47552836 -0.80901706 0.34549332 0.55901694 -0.80901706 0.18163681 0.58778524 -0.80901712 0
		 0.67249882 -0.70710683 -0.21850967 0.57206178 -0.70710683 -0.41562653 0.41562712 -0.70710677 -0.57206345
		 0.21850801 -0.70710683 -0.67250061 -5.9604645e-08 -0.70710683 -0.70710754 -0.21850815 -0.70710677 -0.67250061
		 -0.41562712 -0.70710683 -0.57206345 -0.5720616 -0.70710677 -0.41562653 -0.67249876 -0.70710677 -0.21850967
		 -0.70710707 -0.70710683 0 -0.67249876 -0.70710677 0.21850967 -0.5720616 -0.70710677 0.41562653
		 -0.41562706 -0.70710683 0.57206345 -0.21850809 -0.70710683 0.6724968 -5.9604645e-08 -0.70710683 0.70710754
		 0.21850795 -0.70710677 0.6724968 0.415627 -0.70710683 0.57206345 0.57206142 -0.70710683 0.41562653
		 0.67249858 -0.70710683 0.21850967 0.70710671 -0.70710683 0 0.76942146 -0.58778536 -0.25
		 0.65450883 -0.58778536 -0.47552872 0.47552848 -0.58778536 -0.6545105 0.25000006 -0.58778536 -0.76942444
		 -5.9604645e-08 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.76942444 -0.47552845 -0.5877853 -0.6545105
		 -0.65450871 -0.58778536 -0.47552872 -0.76942122 -0.58778536 -0.25 -0.80901724 -0.5877853 0
		 -0.76942122 -0.58778536 0.25 -0.65450865 -0.5877853 0.47552872 -0.47552839 -0.58778536 0.65450668
		 -0.25000006 -0.58778536 0.76942062 -5.9604645e-08 -0.5877853 0.80901718 0.24999994 -0.5877853 0.76942062
		 0.47552836 -0.5877853 0.65450668 0.65450859 -0.58778536 0.47552872 0.76942098 -0.58778536 0.25
		 0.80901706 -0.58778536 0 0.84739816 -0.45399058 -0.27533722 0.72083998 -0.45399058 -0.52371979
		 0.52372074 -0.45399058 -0.72084045 0.27533627 -0.45399058 -0.84740067 -5.9604645e-08 -0.45399058 -0.89100647
		 -0.27533633 -0.45399052 -0.84740067 -0.52372074 -0.45399058 -0.72084045 -0.72083974 -0.45399058 -0.52371979
		 -0.8473978 -0.45399058 -0.27533722 -0.89100689 -0.45399058 0 -0.8473978 -0.45399058 0.2753334
		 -0.72083974 -0.45399058 0.52371979 -0.52372068 -0.45399052 0.72084045 -0.27533621 -0.45399058 0.84739685
		 -5.9604645e-08 -0.45399058 0.89100647 0.27533615 -0.45399058 0.84739685 0.5237205 -0.45399058 0.72084045
		 0.7208395 -0.45399058 0.52371979 0.84739757 -0.45399052 0.2753334 0.89100659 -0.45399058 0
		 0.90450907 -0.30901706 -0.29389191 0.76942146 -0.30901706 -0.55901718 0.55901742 -0.30901706 -0.76942444
		 0.2938928 -0.309017 -0.9045105 0 -0.309017 -0.95105743 -0.2938928 -0.309017 -0.9045105
		 -0.55901724 -0.30901694 -0.76942444 -0.76942116 -0.309017 -0.55901718 -0.90450883 -0.309017 -0.29389191
		 -0.95105684 -0.309017 0 -0.90450883 -0.309017 0.29389191 -0.76942116 -0.30901706 0.55901718
		 -0.55901712 -0.30901706 0.76942062 -0.29389274 -0.309017 0.90450668 -1.1920929e-07 -0.30901706 0.95105362
		 0.29389256 -0.309017 0.90450668 0.55901706 -0.309017 0.76942062 0.76942086 -0.30901706 0.55901718
		 0.90450859 -0.30901706 0.29389191 0.9510566 -0.309017 0 0.93934798 -0.15643442 -0.30521393
		 0.79905725 -0.15643442 -0.58055115 0.58054888 -0.15643442 -0.79905701 0.30521262 -0.15643442 -0.93935013
		 0 -0.15643442 -0.98768997 -0.30521268 -0.15643442 -0.93935013;
	setAttr ".vt[166:331]" -0.58054894 -0.15643442 -0.79905701 -0.79905689 -0.15643442 -0.58055115
		 -0.93934774 -0.15643442 -0.30521393 -0.98768866 -0.15643442 0 -0.93934774 -0.15643442 0.30521393
		 -0.79905689 -0.15643442 0.58054733 -0.58054876 -0.15643448 0.79905701 -0.30521262 -0.15643436 0.93934631
		 0 -0.15643442 0.98768997 0.3052125 -0.15643442 0.93934631 0.58054864 -0.15643442 0.79905701
		 0.79905653 -0.15643442 0.58054733 0.93934751 -0.15643442 0.30521393 0.98768842 -0.15643442 0
		 0.95105708 -1.1920929e-07 -0.30901718 0.80901742 0 -0.58778763 0.5877856 -1.1920929e-07 -0.80901718
		 0.30901718 0 -0.95105743 0 0 -1 -0.30901718 0 -0.95105743 -0.58778548 -1.1920929e-07 -0.80901718
		 -0.8090173 0 -0.58778763 -0.95105684 0 -0.30901718 -1.000000238419 0 0 -0.95105684 0 0.30901718
		 -0.80901724 0 0.58778381 -0.58778536 0 0.80901718 -0.30901706 0 0.95105362 0 0 1
		 0.30901694 0 0.95105362 0.58778512 0 0.80901718 0.80901718 0 0.58778381 0.95105648 0 0.30901718
		 1 0 0 0.93934798 0.1564343 -0.30521393 0.79905713 0.1564343 -0.58055115 0.58054912 0.1564343 -0.79905701
		 0.30521262 0.1564343 -0.93935013 0 0.1564343 -0.98768997 -0.30521265 0.15643442 -0.93935013
		 -0.58054888 0.1564343 -0.79905701 -0.79905689 0.1564343 -0.58055115 -0.93934774 0.1564343 -0.30521393
		 -0.98768866 0.1564343 0 -0.93934774 0.1564343 0.30521393 -0.79905689 0.1564343 0.58054733
		 -0.58054876 0.15643442 0.79905701 -0.30521253 0.15643442 0.93934631 0 0.1564343 0.98768997
		 0.3052125 0.1564343 0.93934631 0.58054864 0.1564343 0.79905701 0.79905689 0.1564343 0.58054733
		 0.93934739 0.1564343 0.30521393 0.98768842 0.1564343 0 0.90450907 0.30901694 -0.29389191
		 0.76942146 0.30901694 -0.55901718 0.5590173 0.30901694 -0.76942444 0.29389274 0.30901694 -0.9045105
		 0 0.30901694 -0.95105743 -0.29389283 0.30901694 -0.9045105 -0.5590173 0.30901694 -0.76942444
		 -0.76942122 0.30901694 -0.55901718 -0.90450883 0.30901694 -0.29389191 -0.95105684 0.30901694 0
		 -0.90450883 0.30901694 0.29389191 -0.76942122 0.30901694 0.55901718 -0.55901718 0.30901694 0.76942062
		 -0.29389271 0.30901694 0.90450668 0 0.30901694 0.95105362 0.29389262 0.30901694 0.90450668
		 0.55901706 0.30901694 0.76942062 0.76942098 0.30901694 0.55901718 0.90450847 0.30901694 0.29389191
		 0.9510566 0.30901694 0 0.84739804 0.45399046 -0.27533722 0.7208401 0.45399046 -0.52371979
		 0.52372086 0.45399046 -0.72084045 0.27533627 0.45399046 -0.84740067 0 0.45399046 -0.89100647
		 -0.27533633 0.45399058 -0.84740067 -0.52372074 0.45399058 -0.72084045 -0.72083968 0.45399058 -0.52371979
		 -0.84739786 0.45399046 -0.27533722 -0.89100677 0.45399046 0 -0.84739786 0.45399046 0.2753334
		 -0.72083968 0.45399058 0.52371979 -0.52372068 0.45399058 0.72084045 -0.27533624 0.45399046 0.84739685
		 0 0.45399046 0.89100647 0.27533615 0.45399046 0.84739685 0.5237205 0.45399046 0.72084045
		 0.72083962 0.45399046 0.52371979 0.84739757 0.45399046 0.2753334 0.89100647 0.45399046 0
		 0.76942122 0.58778524 -0.25 0.65450895 0.58778524 -0.47552872 0.4755286 0.58778524 -0.6545105
		 0.25000018 0.58778512 -0.76942444 0 0.58778524 -0.80901718 -0.25000009 0.58778524 -0.76942444
		 -0.47552848 0.58778524 -0.6545105 -0.65450883 0.58778524 -0.47552872 -0.76942122 0.58778536 -0.25
		 -0.8090173 0.58778536 0 -0.76942122 0.58778536 0.25 -0.65450871 0.58778524 0.47552872
		 -0.47552839 0.58778524 0.65450668 -0.25000009 0.58778524 0.76942062 0 0.58778524 0.80901718
		 0.25 0.58778524 0.76942062 0.47552812 0.58778524 0.65450668 0.65450847 0.58778512 0.47552872
		 0.76942098 0.58778524 0.25 0.80901706 0.58778524 0 0.67249906 0.70710671 -0.21850967
		 0.5720619 0.70710671 -0.41562653 0.41562712 0.70710671 -0.57206345 0.21850812 0.70710671 -0.67250061
		 0 0.70710671 -0.70710754 -0.21850812 0.70710683 -0.67250061 -0.41562712 0.70710683 -0.57206345
		 -0.57206154 0.70710659 -0.41562653 -0.6724987 0.70710671 -0.21850967 -0.70710695 0.70710671 0
		 -0.6724987 0.70710671 0.21850967 -0.57206154 0.70710659 0.41562653 -0.41562706 0.70710683 0.57206345
		 -0.21850812 0.70710683 0.6724968 0 0.70710671 0.70710754 0.21850789 0.70710671 0.6724968
		 0.41562688 0.70710683 0.57206345 0.57206142 0.70710671 0.41562653 0.67249858 0.70710671 0.21850967
		 0.70710695 0.70710671 0 0.55901742 0.80901706 -0.18163681 0.4755286 0.80901706 -0.34549332
		 0.34549165 0.80901718 -0.47552872 0.1816358 0.80901706 -0.55901718 0 0.80901706 -0.58778763
		 -0.18163574 0.80901706 -0.55901718 -0.34549165 0.80901694 -0.47552872 -0.47552845 0.80901706 -0.34549332
		 -0.55901712 0.80901694 -0.18163681 -0.58778536 0.80901718 0 -0.55901712 0.80901694 0.18163681
		 -0.47552845 0.80901706 0.34549332 -0.34549159 0.80901694 0.47552872 -0.18163574 0.80901706 0.55901718
		 0 0.80901706 0.58778381 0.18163556 0.80901706 0.55901718 0.34549141 0.80901718 0.47552872
		 0.47552836 0.80901694 0.34549332 0.55901706 0.80901706 0.18163681 0.58778524 0.80901706 0
		 0.4317708 0.89100659 -0.14029312 0.36728632 0.89100659 -0.26684952 0.26684904 0.89100659 -0.36728668
		 0.14029086 0.89100647 -0.43177032 0 0.89100647 -0.45399094 -0.14029092 0.89100659 -0.43177032
		 -0.26684904 0.89100659 -0.36728668 -0.36728618 0.89100647 -0.26684952 -0.43177083 0.89100659 -0.14029312
		 -0.4539907 0.89100659 0 -0.43177083 0.89100659 0.14028931 -0.36728618 0.89100647 0.26684952;
	setAttr ".vt[332:381]" -0.26684904 0.89100659 0.36728668 -0.1402908 0.89100671 0.43177032
		 0 0.89100647 0.45399094 0.14029074 0.89100647 0.43177032 0.26684892 0.89100659 0.36728668
		 0.36728621 0.89100647 0.26684952 0.43177068 0.89100647 0.14028931 0.45399058 0.89100671 0
		 0.29389286 0.95105648 -0.095493317 0.25000012 0.95105648 -0.18163681 0.18163568 0.95105672 -0.25
		 0.095491529 0.95105648 -0.29389191 -5.9604645e-08 0.95105672 -0.30901718 -0.095491529 0.9510566 -0.29389191
		 -0.1816358 0.9510566 -0.25 -0.25000009 0.95105648 -0.18163681 -0.29389268 0.95105648 -0.095493317
		 -0.30901703 0.95105648 0 -0.29389268 0.95105648 0.095489502 -0.25000003 0.95105648 0.18163681
		 -0.18163568 0.9510566 0.25 -0.095491529 0.9510566 0.29389191 -5.9604645e-08 0.95105672 0.30901718
		 0.095491529 0.95105648 0.29389191 0.18163556 0.95105672 0.25 0.25 0.95105648 0.18163681
		 0.29389262 0.9510566 0.095489502 0.30901706 0.9510566 0 0.14877808 0.9876883 -0.048339844
		 0.13564277 0.98768854 -0.098553807 0.09194994 0.98768854 -0.12656021 0.051810894 0.9876883 -0.15945643
		 0 0.9876883 -0.15643692 -0.051810894 0.9876883 -0.15945643 -0.09194988 0.9876883 -0.12656021
		 -0.13564277 0.9876883 -0.098553807 -0.14877808 0.9876883 -0.048339844 -0.16766362 0.98768854 5.1003729e-16
		 -0.14877808 0.9876883 0.048339844 -0.13564277 0.9876883 0.098549724 -0.09194988 0.9876883 0.1265564
		 -0.051810894 0.9876883 0.15945643 0 0.9876883 0.15643311 0.051810894 0.9876883 0.15945643
		 0.09194994 0.98768854 0.1265564 0.13564265 0.98768854 0.098549724 0.14877808 0.9876883 0.048339844
		 0.16766362 0.9876883 5.1003729e-16 0 -1.000000119209 0 1.1920929e-07 1 0;
	setAttr -s 760 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 0 341 342 0 342 343 0 343 344 0 344 345 0 345 346 0 346 347 0
		 347 348 0 348 349 0 349 350 0 350 351 0 351 352 0 352 353 0 353 354 0 354 355 0 355 356 0
		 356 357 0 357 358 0 358 359 0 359 340 0 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:759]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 2 1
		 380 4 1 380 6 1 380 8 1 380 10 1 380 12 1 380 14 1 380 16 1 380 18 1 360 381 1 362 381 1
		 364 381 1 366 381 1 368 381 1 370 381 1 372 381 1 374 381 1 376 381 1 378 381 1;
	setAttr -s 380 -ch 1520 ".fc[0:379]" -type "polyFaces" 
		f 4 380 20 -382 -1
		mu 0 4 0 3 2 1
		f 4 381 21 -383 -2
		mu 0 4 1 2 5 4
		f 4 382 22 -384 -3
		mu 0 4 4 5 7 6
		f 4 383 23 -385 -4
		mu 0 4 6 7 9 8
		f 4 384 24 -386 -5
		mu 0 4 8 9 11 10
		f 4 385 25 -387 -6
		mu 0 4 10 11 13 12
		f 4 386 26 -388 -7
		mu 0 4 12 13 15 14
		f 4 387 27 -389 -8
		mu 0 4 14 15 17 16
		f 4 388 28 -390 -9
		mu 0 4 16 17 19 18
		f 4 389 29 -391 -10
		mu 0 4 18 19 21 20
		f 4 390 30 -392 -11
		mu 0 4 20 21 23 22
		f 4 391 31 -393 -12
		mu 0 4 22 23 25 24
		f 4 392 32 -394 -13
		mu 0 4 24 25 27 26
		f 4 393 33 -395 -14
		mu 0 4 26 27 29 28
		f 4 394 34 -396 -15
		mu 0 4 28 29 31 30
		f 4 395 35 -397 -16
		mu 0 4 30 31 33 32
		f 4 396 36 -398 -17
		mu 0 4 32 33 35 34
		f 4 397 37 -399 -18
		mu 0 4 34 35 37 36
		f 4 398 38 -400 -19
		mu 0 4 36 37 39 38
		f 4 399 39 -381 -20
		mu 0 4 38 39 3 0
		f 4 400 40 -402 -21
		mu 0 4 3 41 40 2
		f 4 401 41 -403 -22
		mu 0 4 2 40 42 5
		f 4 402 42 -404 -23
		mu 0 4 5 42 43 7
		f 4 403 43 -405 -24
		mu 0 4 7 43 44 9
		f 4 404 44 -406 -25
		mu 0 4 9 44 45 11
		f 4 405 45 -407 -26
		mu 0 4 11 45 46 13
		f 4 406 46 -408 -27
		mu 0 4 13 46 47 15
		f 4 407 47 -409 -28
		mu 0 4 15 47 48 17
		f 4 408 48 -410 -29
		mu 0 4 17 48 49 19
		f 4 409 49 -411 -30
		mu 0 4 19 49 50 21
		f 4 410 50 -412 -31
		mu 0 4 21 50 51 23
		f 4 411 51 -413 -32
		mu 0 4 23 51 52 25
		f 4 412 52 -414 -33
		mu 0 4 25 52 53 27
		f 4 413 53 -415 -34
		mu 0 4 27 53 54 29
		f 4 414 54 -416 -35
		mu 0 4 29 54 55 31
		f 4 415 55 -417 -36
		mu 0 4 31 55 56 33
		f 4 416 56 -418 -37
		mu 0 4 33 56 57 35
		f 4 417 57 -419 -38
		mu 0 4 35 57 58 37
		f 4 418 58 -420 -39
		mu 0 4 37 58 59 39
		f 4 419 59 -401 -40
		mu 0 4 39 59 41 3
		f 4 420 60 -422 -41
		mu 0 4 41 61 60 40
		f 4 421 61 -423 -42
		mu 0 4 40 60 62 42
		f 4 422 62 -424 -43
		mu 0 4 42 62 63 43
		f 4 423 63 -425 -44
		mu 0 4 43 63 64 44
		f 4 424 64 -426 -45
		mu 0 4 44 64 65 45
		f 4 425 65 -427 -46
		mu 0 4 45 65 66 46
		f 4 426 66 -428 -47
		mu 0 4 46 66 67 47
		f 4 427 67 -429 -48
		mu 0 4 47 67 68 48
		f 4 428 68 -430 -49
		mu 0 4 48 68 69 49
		f 4 429 69 -431 -50
		mu 0 4 49 69 70 50
		f 4 430 70 -432 -51
		mu 0 4 50 70 71 51
		f 4 431 71 -433 -52
		mu 0 4 51 71 72 52
		f 4 432 72 -434 -53
		mu 0 4 52 72 73 53
		f 4 433 73 -435 -54
		mu 0 4 53 73 74 54
		f 4 434 74 -436 -55
		mu 0 4 54 74 75 55
		f 4 435 75 -437 -56
		mu 0 4 55 75 76 56
		f 4 436 76 -438 -57
		mu 0 4 56 76 77 57
		f 4 437 77 -439 -58
		mu 0 4 57 77 78 58
		f 4 438 78 -440 -59
		mu 0 4 58 78 79 59
		f 4 439 79 -421 -60
		mu 0 4 59 79 61 41
		f 4 440 80 -442 -61
		mu 0 4 61 81 80 60
		f 4 441 81 -443 -62
		mu 0 4 60 80 82 62
		f 4 442 82 -444 -63
		mu 0 4 62 82 83 63
		f 4 443 83 -445 -64
		mu 0 4 63 83 84 64
		f 4 444 84 -446 -65
		mu 0 4 64 84 85 65
		f 4 445 85 -447 -66
		mu 0 4 65 85 86 66
		f 4 446 86 -448 -67
		mu 0 4 66 86 87 67
		f 4 447 87 -449 -68
		mu 0 4 67 87 88 68
		f 4 448 88 -450 -69
		mu 0 4 68 88 89 69
		f 4 449 89 -451 -70
		mu 0 4 69 89 90 70
		f 4 450 90 -452 -71
		mu 0 4 70 90 91 71
		f 4 451 91 -453 -72
		mu 0 4 71 91 92 72
		f 4 452 92 -454 -73
		mu 0 4 72 92 93 73
		f 4 453 93 -455 -74
		mu 0 4 73 93 94 74
		f 4 454 94 -456 -75
		mu 0 4 74 94 95 75
		f 4 455 95 -457 -76
		mu 0 4 75 95 96 76
		f 4 456 96 -458 -77
		mu 0 4 76 96 97 77
		f 4 457 97 -459 -78
		mu 0 4 77 97 98 78
		f 4 458 98 -460 -79
		mu 0 4 78 98 99 79
		f 4 459 99 -441 -80
		mu 0 4 79 99 81 61
		f 4 460 100 -462 -81
		mu 0 4 81 101 100 80
		f 4 461 101 -463 -82
		mu 0 4 80 100 102 82
		f 4 462 102 -464 -83
		mu 0 4 82 102 103 83
		f 4 463 103 -465 -84
		mu 0 4 83 103 104 84
		f 4 464 104 -466 -85
		mu 0 4 84 104 105 85
		f 4 465 105 -467 -86
		mu 0 4 85 105 106 86
		f 4 466 106 -468 -87
		mu 0 4 86 106 107 87
		f 4 467 107 -469 -88
		mu 0 4 87 107 108 88
		f 4 468 108 -470 -89
		mu 0 4 88 108 109 89
		f 4 469 109 -471 -90
		mu 0 4 89 109 110 90
		f 4 470 110 -472 -91
		mu 0 4 90 110 111 91
		f 4 471 111 -473 -92
		mu 0 4 91 111 112 92
		f 4 472 112 -474 -93
		mu 0 4 92 112 113 93
		f 4 473 113 -475 -94
		mu 0 4 93 113 114 94
		f 4 474 114 -476 -95
		mu 0 4 94 114 115 95
		f 4 475 115 -477 -96
		mu 0 4 95 115 116 96
		f 4 476 116 -478 -97
		mu 0 4 96 116 117 97
		f 4 477 117 -479 -98
		mu 0 4 97 117 118 98
		f 4 478 118 -480 -99
		mu 0 4 98 118 119 99
		f 4 479 119 -461 -100
		mu 0 4 99 119 101 81
		f 4 480 120 -482 -101
		mu 0 4 101 121 120 100
		f 4 481 121 -483 -102
		mu 0 4 100 120 122 102
		f 4 482 122 -484 -103
		mu 0 4 102 122 123 103
		f 4 483 123 -485 -104
		mu 0 4 103 123 124 104
		f 4 484 124 -486 -105
		mu 0 4 104 124 125 105
		f 4 485 125 -487 -106
		mu 0 4 105 125 126 106
		f 4 486 126 -488 -107
		mu 0 4 106 126 127 107
		f 4 487 127 -489 -108
		mu 0 4 107 127 128 108
		f 4 488 128 -490 -109
		mu 0 4 108 128 129 109
		f 4 489 129 -491 -110
		mu 0 4 109 129 130 110
		f 4 490 130 -492 -111
		mu 0 4 110 130 131 111
		f 4 491 131 -493 -112
		mu 0 4 111 131 132 112
		f 4 492 132 -494 -113
		mu 0 4 112 132 133 113
		f 4 493 133 -495 -114
		mu 0 4 113 133 134 114
		f 4 494 134 -496 -115
		mu 0 4 114 134 135 115
		f 4 495 135 -497 -116
		mu 0 4 115 135 136 116
		f 4 496 136 -498 -117
		mu 0 4 116 136 137 117
		f 4 497 137 -499 -118
		mu 0 4 117 137 138 118
		f 4 498 138 -500 -119
		mu 0 4 118 138 139 119
		f 4 499 139 -481 -120
		mu 0 4 119 139 121 101
		f 4 500 140 -502 -121
		mu 0 4 121 141 140 120
		f 4 501 141 -503 -122
		mu 0 4 120 140 142 122
		f 4 502 142 -504 -123
		mu 0 4 122 142 143 123
		f 4 503 143 -505 -124
		mu 0 4 123 143 144 124
		f 4 504 144 -506 -125
		mu 0 4 124 144 145 125
		f 4 505 145 -507 -126
		mu 0 4 125 145 146 126
		f 4 506 146 -508 -127
		mu 0 4 126 146 147 127
		f 4 507 147 -509 -128
		mu 0 4 127 147 148 128
		f 4 508 148 -510 -129
		mu 0 4 128 148 149 129
		f 4 509 149 -511 -130
		mu 0 4 129 149 150 130
		f 4 510 150 -512 -131
		mu 0 4 130 150 151 131
		f 4 511 151 -513 -132
		mu 0 4 131 151 152 132
		f 4 512 152 -514 -133
		mu 0 4 132 152 153 133
		f 4 513 153 -515 -134
		mu 0 4 133 153 154 134
		f 4 514 154 -516 -135
		mu 0 4 134 154 155 135
		f 4 515 155 -517 -136
		mu 0 4 135 155 156 136
		f 4 516 156 -518 -137
		mu 0 4 136 156 157 137
		f 4 517 157 -519 -138
		mu 0 4 137 157 158 138
		f 4 518 158 -520 -139
		mu 0 4 138 158 159 139
		f 4 519 159 -501 -140
		mu 0 4 139 159 141 121
		f 4 520 160 -522 -141
		mu 0 4 141 161 160 140
		f 4 521 161 -523 -142
		mu 0 4 140 160 162 142
		f 4 522 162 -524 -143
		mu 0 4 142 162 163 143
		f 4 523 163 -525 -144
		mu 0 4 143 163 164 144
		f 4 524 164 -526 -145
		mu 0 4 144 164 165 145
		f 4 525 165 -527 -146
		mu 0 4 145 165 166 146
		f 4 526 166 -528 -147
		mu 0 4 146 166 167 147
		f 4 527 167 -529 -148
		mu 0 4 147 167 168 148
		f 4 528 168 -530 -149
		mu 0 4 148 168 169 149
		f 4 529 169 -531 -150
		mu 0 4 149 169 170 150
		f 4 530 170 -532 -151
		mu 0 4 150 170 171 151
		f 4 531 171 -533 -152
		mu 0 4 151 171 172 152
		f 4 532 172 -534 -153
		mu 0 4 152 172 173 153
		f 4 533 173 -535 -154
		mu 0 4 153 173 174 154
		f 4 534 174 -536 -155
		mu 0 4 154 174 175 155
		f 4 535 175 -537 -156
		mu 0 4 155 175 176 156
		f 4 536 176 -538 -157
		mu 0 4 156 176 177 157
		f 4 537 177 -539 -158
		mu 0 4 157 177 178 158
		f 4 538 178 -540 -159
		mu 0 4 158 178 179 159
		f 4 539 179 -521 -160
		mu 0 4 159 179 161 141
		f 4 540 180 -542 -161
		mu 0 4 161 383 401 160
		f 4 541 181 -543 -162
		mu 0 4 160 401 400 162
		f 4 542 182 -544 -163
		mu 0 4 162 400 399 163
		f 4 543 183 -545 -164
		mu 0 4 163 399 398 164
		f 4 544 184 -546 -165
		mu 0 4 164 398 397 165
		f 4 545 185 -547 -166
		mu 0 4 165 397 396 166
		f 4 546 186 -548 -167
		mu 0 4 166 396 395 167
		f 4 547 187 -549 -168
		mu 0 4 167 395 394 168
		f 4 548 188 -550 -169
		mu 0 4 168 394 393 169
		f 4 549 189 -551 -170
		mu 0 4 169 393 392 170
		f 4 550 190 -552 -171
		mu 0 4 170 392 391 171
		f 4 551 191 -553 -172
		mu 0 4 171 391 390 172
		f 4 552 192 -554 -173
		mu 0 4 172 390 389 173
		f 4 553 193 -555 -174
		mu 0 4 173 389 388 174
		f 4 554 194 -556 -175
		mu 0 4 174 388 387 175
		f 4 555 195 -557 -176
		mu 0 4 175 387 386 176
		f 4 556 196 -558 -177
		mu 0 4 176 386 385 177
		f 4 557 197 -559 -178
		mu 0 4 177 385 384 178
		f 4 558 198 -560 -179
		mu 0 4 178 384 382 179
		f 4 559 199 -541 -180
		mu 0 4 179 382 383 161
		f 4 560 200 -562 -181
		mu 0 4 181 201 200 180
		f 4 561 201 -563 -182
		mu 0 4 180 200 202 182
		f 4 562 202 -564 -183
		mu 0 4 182 202 203 183
		f 4 563 203 -565 -184
		mu 0 4 183 203 204 184
		f 4 564 204 -566 -185
		mu 0 4 184 204 205 185
		f 4 565 205 -567 -186
		mu 0 4 185 205 206 186
		f 4 566 206 -568 -187
		mu 0 4 186 206 207 187
		f 4 567 207 -569 -188
		mu 0 4 187 207 208 188
		f 4 568 208 -570 -189
		mu 0 4 188 208 209 189
		f 4 569 209 -571 -190
		mu 0 4 189 209 210 190
		f 4 570 210 -572 -191
		mu 0 4 190 210 211 191
		f 4 571 211 -573 -192
		mu 0 4 191 211 212 192
		f 4 572 212 -574 -193
		mu 0 4 192 212 213 193
		f 4 573 213 -575 -194
		mu 0 4 193 213 214 194
		f 4 574 214 -576 -195
		mu 0 4 194 214 215 195
		f 4 575 215 -577 -196
		mu 0 4 195 215 216 196
		f 4 576 216 -578 -197
		mu 0 4 196 216 217 197
		f 4 577 217 -579 -198
		mu 0 4 197 217 218 198
		f 4 578 218 -580 -199
		mu 0 4 198 218 219 199
		f 4 579 219 -561 -200
		mu 0 4 199 219 201 181
		f 4 580 220 -582 -201
		mu 0 4 201 221 220 200
		f 4 581 221 -583 -202
		mu 0 4 200 220 222 202
		f 4 582 222 -584 -203
		mu 0 4 202 222 223 203
		f 4 583 223 -585 -204
		mu 0 4 203 223 224 204
		f 4 584 224 -586 -205
		mu 0 4 204 224 225 205
		f 4 585 225 -587 -206
		mu 0 4 205 225 226 206
		f 4 586 226 -588 -207
		mu 0 4 206 226 227 207
		f 4 587 227 -589 -208
		mu 0 4 207 227 228 208
		f 4 588 228 -590 -209
		mu 0 4 208 228 229 209
		f 4 589 229 -591 -210
		mu 0 4 209 229 230 210
		f 4 590 230 -592 -211
		mu 0 4 210 230 231 211
		f 4 591 231 -593 -212
		mu 0 4 211 231 232 212
		f 4 592 232 -594 -213
		mu 0 4 212 232 233 213
		f 4 593 233 -595 -214
		mu 0 4 213 233 234 214
		f 4 594 234 -596 -215
		mu 0 4 214 234 235 215
		f 4 595 235 -597 -216
		mu 0 4 215 235 236 216
		f 4 596 236 -598 -217
		mu 0 4 216 236 237 217
		f 4 597 237 -599 -218
		mu 0 4 217 237 238 218
		f 4 598 238 -600 -219
		mu 0 4 218 238 239 219
		f 4 599 239 -581 -220
		mu 0 4 219 239 221 201
		f 4 600 240 -602 -221
		mu 0 4 221 241 240 220
		f 4 601 241 -603 -222
		mu 0 4 220 240 242 222
		f 4 602 242 -604 -223
		mu 0 4 222 242 243 223
		f 4 603 243 -605 -224
		mu 0 4 223 243 244 224
		f 4 604 244 -606 -225
		mu 0 4 224 244 245 225
		f 4 605 245 -607 -226
		mu 0 4 225 245 246 226
		f 4 606 246 -608 -227
		mu 0 4 226 246 247 227
		f 4 607 247 -609 -228
		mu 0 4 227 247 248 228
		f 4 608 248 -610 -229
		mu 0 4 228 248 249 229
		f 4 609 249 -611 -230
		mu 0 4 229 249 250 230
		f 4 610 250 -612 -231
		mu 0 4 230 250 251 231
		f 4 611 251 -613 -232
		mu 0 4 231 251 252 232
		f 4 612 252 -614 -233
		mu 0 4 232 252 253 233
		f 4 613 253 -615 -234
		mu 0 4 233 253 254 234
		f 4 614 254 -616 -235
		mu 0 4 234 254 255 235
		f 4 615 255 -617 -236
		mu 0 4 235 255 256 236
		f 4 616 256 -618 -237
		mu 0 4 236 256 257 237
		f 4 617 257 -619 -238
		mu 0 4 237 257 258 238
		f 4 618 258 -620 -239
		mu 0 4 238 258 259 239
		f 4 619 259 -601 -240
		mu 0 4 239 259 241 221
		f 4 620 260 -622 -241
		mu 0 4 241 261 260 240
		f 4 621 261 -623 -242
		mu 0 4 240 260 262 242
		f 4 622 262 -624 -243
		mu 0 4 242 262 263 243
		f 4 623 263 -625 -244
		mu 0 4 243 263 264 244
		f 4 624 264 -626 -245
		mu 0 4 244 264 265 245
		f 4 625 265 -627 -246
		mu 0 4 245 265 266 246
		f 4 626 266 -628 -247
		mu 0 4 246 266 267 247
		f 4 627 267 -629 -248
		mu 0 4 247 267 268 248
		f 4 628 268 -630 -249
		mu 0 4 248 268 269 249
		f 4 629 269 -631 -250
		mu 0 4 249 269 270 250
		f 4 630 270 -632 -251
		mu 0 4 250 270 271 251
		f 4 631 271 -633 -252
		mu 0 4 251 271 272 252
		f 4 632 272 -634 -253
		mu 0 4 252 272 273 253
		f 4 633 273 -635 -254
		mu 0 4 253 273 274 254
		f 4 634 274 -636 -255
		mu 0 4 254 274 275 255
		f 4 635 275 -637 -256
		mu 0 4 255 275 276 256
		f 4 636 276 -638 -257
		mu 0 4 256 276 277 257
		f 4 637 277 -639 -258
		mu 0 4 257 277 278 258
		f 4 638 278 -640 -259
		mu 0 4 258 278 279 259
		f 4 639 279 -621 -260
		mu 0 4 259 279 261 241
		f 4 640 280 -642 -261
		mu 0 4 261 281 280 260
		f 4 641 281 -643 -262
		mu 0 4 260 280 282 262
		f 4 642 282 -644 -263
		mu 0 4 262 282 283 263
		f 4 643 283 -645 -264
		mu 0 4 263 283 284 264
		f 4 644 284 -646 -265
		mu 0 4 264 284 285 265
		f 4 645 285 -647 -266
		mu 0 4 265 285 286 266
		f 4 646 286 -648 -267
		mu 0 4 266 286 287 267
		f 4 647 287 -649 -268
		mu 0 4 267 287 288 268
		f 4 648 288 -650 -269
		mu 0 4 268 288 289 269
		f 4 649 289 -651 -270
		mu 0 4 269 289 290 270
		f 4 650 290 -652 -271
		mu 0 4 270 290 291 271
		f 4 651 291 -653 -272
		mu 0 4 271 291 292 272
		f 4 652 292 -654 -273
		mu 0 4 272 292 293 273
		f 4 653 293 -655 -274
		mu 0 4 273 293 294 274
		f 4 654 294 -656 -275
		mu 0 4 274 294 295 275
		f 4 655 295 -657 -276
		mu 0 4 275 295 296 276
		f 4 656 296 -658 -277
		mu 0 4 276 296 297 277
		f 4 657 297 -659 -278
		mu 0 4 277 297 298 278
		f 4 658 298 -660 -279
		mu 0 4 278 298 299 279
		f 4 659 299 -641 -280
		mu 0 4 279 299 281 261
		f 4 660 300 -662 -281
		mu 0 4 281 301 300 280
		f 4 661 301 -663 -282
		mu 0 4 280 300 302 282
		f 4 662 302 -664 -283
		mu 0 4 282 302 303 283
		f 4 663 303 -665 -284
		mu 0 4 283 303 304 284
		f 4 664 304 -666 -285
		mu 0 4 284 304 305 285
		f 4 665 305 -667 -286
		mu 0 4 285 305 306 286
		f 4 666 306 -668 -287
		mu 0 4 286 306 307 287
		f 4 667 307 -669 -288
		mu 0 4 287 307 308 288
		f 4 668 308 -670 -289
		mu 0 4 288 308 309 289
		f 4 669 309 -671 -290
		mu 0 4 289 309 310 290
		f 4 670 310 -672 -291
		mu 0 4 290 310 311 291
		f 4 671 311 -673 -292
		mu 0 4 291 311 312 292
		f 4 672 312 -674 -293
		mu 0 4 292 312 313 293
		f 4 673 313 -675 -294
		mu 0 4 293 313 314 294
		f 4 674 314 -676 -295
		mu 0 4 294 314 315 295
		f 4 675 315 -677 -296
		mu 0 4 295 315 316 296
		f 4 676 316 -678 -297
		mu 0 4 296 316 317 297
		f 4 677 317 -679 -298
		mu 0 4 297 317 318 298
		f 4 678 318 -680 -299
		mu 0 4 298 318 319 299
		f 4 679 319 -661 -300
		mu 0 4 299 319 301 281
		f 4 680 320 -682 -301
		mu 0 4 301 321 320 300
		f 4 681 321 -683 -302
		mu 0 4 300 320 322 302
		f 4 682 322 -684 -303
		mu 0 4 302 322 323 303
		f 4 683 323 -685 -304
		mu 0 4 303 323 324 304
		f 4 684 324 -686 -305
		mu 0 4 304 324 325 305
		f 4 685 325 -687 -306
		mu 0 4 305 325 326 306
		f 4 686 326 -688 -307
		mu 0 4 306 326 327 307
		f 4 687 327 -689 -308
		mu 0 4 307 327 328 308
		f 4 688 328 -690 -309
		mu 0 4 308 328 329 309
		f 4 689 329 -691 -310
		mu 0 4 309 329 330 310
		f 4 690 330 -692 -311
		mu 0 4 310 330 331 311
		f 4 691 331 -693 -312
		mu 0 4 311 331 332 312
		f 4 692 332 -694 -313
		mu 0 4 312 332 333 313
		f 4 693 333 -695 -314
		mu 0 4 313 333 334 314
		f 4 694 334 -696 -315
		mu 0 4 314 334 335 315
		f 4 695 335 -697 -316
		mu 0 4 315 335 336 316
		f 4 696 336 -698 -317
		mu 0 4 316 336 337 317
		f 4 697 337 -699 -318
		mu 0 4 317 337 338 318
		f 4 698 338 -700 -319
		mu 0 4 318 338 339 319
		f 4 699 339 -681 -320
		mu 0 4 319 339 321 301
		f 4 700 340 -702 -321
		mu 0 4 321 341 340 320
		f 4 701 341 -703 -322
		mu 0 4 320 340 342 322
		f 4 702 342 -704 -323
		mu 0 4 322 342 343 323
		f 4 703 343 -705 -324
		mu 0 4 323 343 344 324
		f 4 704 344 -706 -325
		mu 0 4 324 344 345 325
		f 4 705 345 -707 -326
		mu 0 4 325 345 346 326
		f 4 706 346 -708 -327
		mu 0 4 326 346 347 327
		f 4 707 347 -709 -328
		mu 0 4 327 347 348 328
		f 4 708 348 -710 -329
		mu 0 4 328 348 349 329
		f 4 709 349 -711 -330
		mu 0 4 329 349 350 330
		f 4 710 350 -712 -331
		mu 0 4 330 350 351 331
		f 4 711 351 -713 -332
		mu 0 4 331 351 352 332
		f 4 712 352 -714 -333
		mu 0 4 332 352 353 333
		f 4 713 353 -715 -334
		mu 0 4 333 353 354 334
		f 4 714 354 -716 -335
		mu 0 4 334 354 355 335
		f 4 715 355 -717 -336
		mu 0 4 335 355 356 336
		f 4 716 356 -718 -337
		mu 0 4 336 356 357 337
		f 4 717 357 -719 -338
		mu 0 4 337 357 358 338
		f 4 718 358 -720 -339
		mu 0 4 338 358 359 339
		f 4 719 359 -701 -340
		mu 0 4 339 359 341 321
		f 4 720 360 -722 -341
		mu 0 4 341 361 360 340
		f 4 721 361 -723 -342
		mu 0 4 340 360 362 342
		f 4 722 362 -724 -343
		mu 0 4 342 362 363 343
		f 4 723 363 -725 -344
		mu 0 4 343 363 364 344
		f 4 724 364 -726 -345
		mu 0 4 344 364 365 345
		f 4 725 365 -727 -346
		mu 0 4 345 365 366 346
		f 4 726 366 -728 -347
		mu 0 4 346 366 367 347
		f 4 727 367 -729 -348
		mu 0 4 347 367 368 348
		f 4 728 368 -730 -349
		mu 0 4 348 368 369 349
		f 4 729 369 -731 -350
		mu 0 4 349 369 370 350
		f 4 730 370 -732 -351
		mu 0 4 350 370 371 351
		f 4 731 371 -733 -352
		mu 0 4 351 371 372 352
		f 4 732 372 -734 -353
		mu 0 4 352 372 373 353
		f 4 733 373 -735 -354
		mu 0 4 353 373 374 354
		f 4 734 374 -736 -355
		mu 0 4 354 374 375 355
		f 4 735 375 -737 -356
		mu 0 4 355 375 376 356
		f 4 736 376 -738 -357
		mu 0 4 356 376 377 357
		f 4 737 377 -739 -358
		mu 0 4 357 377 378 358
		f 4 738 378 -740 -359
		mu 0 4 358 378 379 359
		f 4 739 379 -721 -360
		mu 0 4 359 379 361 341
		f 4 1 -742 740 0
		mu 0 4 1 4 380 0
		f 4 3 -743 741 2
		mu 0 4 6 8 380 4
		f 4 5 -744 742 4
		mu 0 4 10 12 380 8
		f 4 7 -745 743 6
		mu 0 4 14 16 380 12
		f 4 9 -746 744 8
		mu 0 4 18 20 380 16
		f 4 11 -747 745 10
		mu 0 4 22 24 380 20
		f 4 13 -748 746 12
		mu 0 4 26 28 380 24
		f 4 15 -749 747 14
		mu 0 4 30 32 380 28
		f 4 17 -750 748 16
		mu 0 4 34 36 380 32
		f 4 19 -741 749 18
		mu 0 4 38 0 380 36
		f 4 -752 -362 -361 750
		mu 0 4 381 362 360 361
		f 4 -753 -364 -363 751
		mu 0 4 381 364 363 362
		f 4 -754 -366 -365 752
		mu 0 4 381 366 365 364
		f 4 -755 -368 -367 753
		mu 0 4 381 368 367 366
		f 4 -756 -370 -369 754
		mu 0 4 381 370 369 368
		f 4 -757 -372 -371 755
		mu 0 4 381 372 371 370
		f 4 -758 -374 -373 756
		mu 0 4 381 374 373 372
		f 4 -759 -376 -375 757
		mu 0 4 381 376 375 374
		f 4 -760 -378 -377 758
		mu 0 4 381 378 377 376
		f 4 -751 -380 -379 759
		mu 0 4 381 361 379 378;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3BFD9934-9442-E8AA-210B-148DDFBA978D";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DD6C9103-1B46-936F-B9FC-6FBFD59FBF16";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "19748BF9-4241-DEDC-1A77-AAB8F467F0B3";
createNode displayLayerManager -n "layerManager";
	rename -uid "01BE9193-6E43-320E-0869-DEB417369320";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3E5F6595-B54F-F1B2-8F56-03A5570702FE";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9471C1A1-CD48-5687-081C-86B7B473842E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A19C1ECD-1E43-0B4F-05D7-0FB77BC8AA1C";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E00B5406-6846-7A97-4F3B-08A61D43238A";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "0B866619-6D40-5A31-5E43-FA8A50C06BF1";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A4334D8A-254C-05E2-15FD-8FAF8E98D774";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8C5C8349-BD48-40E1-6DF0-E6AB750CB57B";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "modelRN";
	rename -uid "EA7072AC-D446-2C6D-BA8D-479CC680C9FC";
	setAttr -s 13 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 15
		2 "|model:geo|model:Extra|model:clothes|model:hat" "visibility" " 1"
		2 "model:refImages" "visibility" " 1"
		5 4 "modelRN" "|model:geo.drawOverride" "modelRN.placeHolderList[1]" 
		""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:hair_strand.drawOverride" 
		"modelRN.placeHolderList[2]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:hair_midScalp_left.drawOverride" 
		"modelRN.placeHolderList[3]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:hair_midScalp_right.drawOverride" 
		"modelRN.placeHolderList[4]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:ponytail.drawOverride" 
		"modelRN.placeHolderList[5]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:hair_back.drawOverride" 
		"modelRN.placeHolderList[6]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:hair|model:hair_scalp.drawOverride" 
		"modelRN.placeHolderList[7]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:gloves|model:glove_left.drawOverride" 
		"modelRN.placeHolderList[8]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:gloves|model:glove_right.drawOverride" 
		"modelRN.placeHolderList[9]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:briarClothes.drawOverride" 
		"modelRN.placeHolderList[10]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:boots|model:boot_right.drawOverride" 
		"modelRN.placeHolderList[11]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:boots|model:boot_left.drawOverride" 
		"modelRN.placeHolderList[12]" ""
		5 4 "modelRN" "|model:geo|model:Extra|model:clothes|model:hat.drawOverride" 
		"modelRN.placeHolderList[13]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "Hi";
	rename -uid "DE75430C-4C41-92FB-27E6-F1803C6255DB";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode animCurveUA -n "SDK1FKIndexFinger3_L_rotateY";
	rename -uid "3CC83F9B-B54B-4C00-5491-9282CBA81C54";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKIndexFinger2_L_rotateY";
	rename -uid "80ABB54F-3341-FCB3-F16E-5782033F1468";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKIndexFinger1_L_rotateY";
	rename -uid "72D3FB8D-884B-FFDA-137A-EB924447FF88";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKIndexFinger2_R_rotateY";
	rename -uid "EA5E815E-4B42-DF16-EF4E-11B41943DECF";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKIndexFinger3_R_rotateY";
	rename -uid "707E35FD-E547-0BA6-2601-10AB647DADD8";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKIndexFinger1_R_rotateY";
	rename -uid "F8816498-404C-3D20-A21F-B1A85D52D6BD";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger3_L_rotateY";
	rename -uid "CBF46E42-E343-2A57-7103-5187CA4341DB";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger2_L_rotateY";
	rename -uid "C11E3F2B-5542-33ED-85AF-7C92BEB770DD";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger1_L_rotateY";
	rename -uid "39798405-0441-6D83-2FCB-C793493070DA";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger3_R_rotateY";
	rename -uid "41F9C503-C04B-1C70-C891-0FB162FA995C";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger1_R_rotateY";
	rename -uid "51007919-E449-76F6-C507-F2A4B001D579";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleFinger2_R_rotateY";
	rename -uid "3C1E027B-834C-09BB-209E-EBA790B3829A";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger3_L_rotateY";
	rename -uid "CF3117B3-FC40-B7D8-9D56-699C6D9BDDD0";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger2_L_rotateY";
	rename -uid "C745C601-E442-2E13-1CD2-F084119FB486";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKRingFinger1_L_rotateY";
	rename -uid "302F05A9-ED44-334F-3CB2-3B8390F60E38";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger2_R_rotateY";
	rename -uid "9271E9FE-6043-1E19-5F91-8DAE29C05632";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger3_R_rotateY";
	rename -uid "DB99722E-1E49-AF5C-6044-FDAC4BEAD7C1";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKRingFinger1_R_rotateY";
	rename -uid "4BD6EFF3-1047-0E3D-1B98-FDAA362A4891";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger3_L_rotateY";
	rename -uid "3916C08F-8D43-5D1F-2534-1AA90B3D7289";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger2_L_rotateY";
	rename -uid "501FFE3A-794F-BF50-F947-0C8A0C176405";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKPinkyFinger1_L_rotateY";
	rename -uid "F2F7A629-CB4D-BFB7-3388-91B2E8F01C93";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger2_R_rotateY";
	rename -uid "A1736F00-404B-5AEC-D2AC-5EB021C99DE1";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKPinkyFinger1_R_rotateY";
	rename -uid "F79A3B5F-884E-2B91-A96C-8C84A9594EB3";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger3_R_rotateY";
	rename -uid "C1A093A8-334B-5801-E442-C9B8EC71F95D";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKThumbFinger3_L_rotateY";
	rename -uid "C06AD806-6E46-3DD4-C5B0-2FAA9B82C255";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKThumbFinger2_L_rotateY";
	rename -uid "67E193A0-354C-11DA-472F-7E9CD2D828F6";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKThumbFinger3_R_rotateY";
	rename -uid "1BF66FC1-C545-A3C2-1D2D-ECA329CE5A9C";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKThumbFinger2_R_rotateY";
	rename -uid "A2CD250E-D545-7EF0-E001-80931F99796D";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKIndexFinger1_R_rotateZ";
	rename -uid "2D731697-934F-8311-8F14-4AB1953ACC2E";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 -20 0 0 10 40;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger1_R_rotateZ";
	rename -uid "7B4BE63B-F445-E112-7D72-7995016A13FE";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 29.999999999999996 0 0 10 -59.999999999999993;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger1_R_rotateZ";
	rename -uid "346AC5C8-D741-17A4-2845-0BB3A13751B6";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 14.999999999999998 0 0 10 -29.999999999999996;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKIndexFinger1_L_rotateZ";
	rename -uid "33776883-6846-A1C8-9164-71B887394276";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 -20 0 0 10 40;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyFinger1_L_rotateZ";
	rename -uid "9F09CF6E-E24C-1243-6FD0-DD9A6E873B33";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 29.999999999999996 0 0 10 -59.999999999999993;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingFinger1_L_rotateZ";
	rename -uid "ECE5F211-864D-A8D6-1E76-F5882854B5C5";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 14.999999999999998 0 0 10 -29.999999999999996;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKCup_R_rotateX";
	rename -uid "3B596F7A-994C-415A-A55C-9984673CBFBD";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "cup" -ln "cup" -smn 0 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 65;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKCup_L_rotateX";
	rename -uid "EA321249-254F-2ABD-B5F3-8CA6AF672E8E";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "cup" -ln "cup" -smn 0 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 65;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9AFCF5E9-FD4C-85C1-60D5-4698AA966DB9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2254\n            -height 1500\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0CA4F9C0-2A46-4759-6A69-24B8B3F4385E";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode displayLayer -n "extras";
	rename -uid "F94645B9-E947-5DB8-40B2-7DA480A658DB";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode materialInfo -n "eyes:materialInfo5";
	rename -uid "35D6EE7E-C043-6E9E-C6BC-A59E62F8856D";
createNode shadingEngine -n "eyes:standardSurface6SG";
	rename -uid "8534DEA5-A748-88D2-4948-AAA66ADCF20B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode standardSurface -n "eyes:standardSurface6";
	rename -uid "E5CD9C83-754A-7CBD-60C5-F6862D5D4165";
	setAttr ".bc" -type "float3" 0.90209788 0.90209788 0.90209788 ;
	setAttr ".sr" 0.081000000238418579;
	setAttr ".sior" 1.5499999523162842;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "B15BA2D7-CF49-E5E3-068A-A2A5E3465944";
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
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Hi.di" "modelRN.phl[1]";
connectAttr "extras.di" "modelRN.phl[2]";
connectAttr "extras.di" "modelRN.phl[3]";
connectAttr "extras.di" "modelRN.phl[4]";
connectAttr "extras.di" "modelRN.phl[5]";
connectAttr "extras.di" "modelRN.phl[6]";
connectAttr "extras.di" "modelRN.phl[7]";
connectAttr "extras.di" "modelRN.phl[8]";
connectAttr "extras.di" "modelRN.phl[9]";
connectAttr "extras.di" "modelRN.phl[10]";
connectAttr "extras.di" "modelRN.phl[11]";
connectAttr "extras.di" "modelRN.phl[12]";
connectAttr "extras.di" "modelRN.phl[13]";
connectAttr "SDK2FKIndexFinger1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger2_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger3_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger3_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger2_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger3_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger2_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKRingFinger1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKPinkyFinger1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger2_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger3_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKThumbFinger2_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKThumbFinger3_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKCup_R_rotateX.drivingSystemOut" "FitSkeleton.drivingSystem" -na
		;
connectAttr "SDK2FKIndexFinger1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger2_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger3_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger2_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger3_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleFinger1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger2_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger3_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKRingFinger1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger2_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger3_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKPinkyFinger1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKThumbFinger2_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKThumbFinger3_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyFinger1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKIndexFinger1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingFinger1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKCup_L_rotateX.drivingSystemOut" "FitSkeleton.drivingSystem" -na
		;
connectAttr "Root.s" "Spine1.is";
connectAttr "Spine1.s" "Chest.is";
connectAttr "Chest.s" "Neck.is";
connectAttr "Neck.s" "Head.is";
connectAttr "Head.s" "HeadEnd.is";
connectAttr "Head.s" "Eye.is";
connectAttr "Eye.s" "EyeEnd.is";
connectAttr "Head.s" "Jaw.is";
connectAttr "Jaw.s" "JawEnd.is";
connectAttr "Head.s" "joint1.is";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
connectAttr "Chest.s" "Scapula.is";
connectAttr "Scapula.s" "Shoulder.is";
connectAttr "Shoulder.s" "Elbow.is";
connectAttr "Elbow.s" "Wrist.is";
connectAttr "Wrist.s" "MiddleFinger1.is";
connectAttr "MiddleFinger1.s" "MiddleFinger2.is";
connectAttr "MiddleFinger2.s" "MiddleFinger3.is";
connectAttr "MiddleFinger3.s" "MiddleFinger4.is";
connectAttr "Wrist.s" "ThumbFinger1.is";
connectAttr "ThumbFinger1.s" "ThumbFinger2.is";
connectAttr "ThumbFinger2.s" "ThumbFinger3.is";
connectAttr "ThumbFinger3.s" "ThumbFinger4.is";
connectAttr "Wrist.s" "IndexFinger1.is";
connectAttr "IndexFinger1.s" "IndexFinger2.is";
connectAttr "IndexFinger2.s" "IndexFinger3.is";
connectAttr "IndexFinger3.s" "IndexFinger4.is";
connectAttr "Wrist.s" "Cup.is";
connectAttr "Cup.s" "PinkyFinger1.is";
connectAttr "PinkyFinger1.s" "PinkyFinger2.is";
connectAttr "PinkyFinger2.s" "PinkyFinger3.is";
connectAttr "PinkyFinger3.s" "PinkyFinger4.is";
connectAttr "Cup.s" "RingFinger1.is";
connectAttr "RingFinger1.s" "RingFinger2.is";
connectAttr "RingFinger2.s" "RingFinger3.is";
connectAttr "RingFinger3.s" "RingFinger4.is";
connectAttr "Root.s" "Hip.is";
connectAttr "Hip.s" "Knee.is";
connectAttr "Knee.s" "Ankle.is";
connectAttr "Ankle.s" "Heel.is";
connectAttr "Ankle.s" "Toes.is";
connectAttr "Toes.s" "FootSideInner.is";
connectAttr "Toes.s" "FootSideOuter.is";
connectAttr "Toes.s" "ToesEnd.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eyes:standardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eyes:standardSurface6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[1]" "Hi.id";
connectAttr "FitSkeleton.drivingSystem_Fingers_L[6]" "SDK1FKIndexFinger3_L_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[5]" "SDK1FKIndexFinger2_L_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[4]" "SDK2FKIndexFinger1_L_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[5]" "SDK1FKIndexFinger2_R_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[6]" "SDK1FKIndexFinger3_R_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[4]" "SDK2FKIndexFinger1_R_rotateY.indexCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[8]" "SDK1FKMiddleFinger3_L_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[7]" "SDK1FKMiddleFinger2_L_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[9]" "SDK1FKMiddleFinger1_L_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[8]" "SDK1FKMiddleFinger3_R_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[9]" "SDK1FKMiddleFinger1_R_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[7]" "SDK1FKMiddleFinger2_R_rotateY.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[11]" "SDK1FKRingFinger3_L_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[10]" "SDK1FKRingFinger2_L_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[12]" "SDK2FKRingFinger1_L_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[10]" "SDK1FKRingFinger2_R_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[11]" "SDK1FKRingFinger3_R_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[12]" "SDK2FKRingFinger1_R_rotateY.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[14]" "SDK1FKPinkyFinger3_L_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[13]" "SDK1FKPinkyFinger2_L_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[15]" "SDK2FKPinkyFinger1_L_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[13]" "SDK1FKPinkyFinger2_R_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[15]" "SDK2FKPinkyFinger1_R_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[14]" "SDK1FKPinkyFinger3_R_rotateY.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[17]" "SDK1FKThumbFinger3_L_rotateY.thumbCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[16]" "SDK1FKThumbFinger2_L_rotateY.thumbCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[17]" "SDK1FKThumbFinger3_R_rotateY.thumbCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[16]" "SDK1FKThumbFinger2_R_rotateY.thumbCurl"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[1]" "SDK1FKIndexFinger1_R_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[0]" "SDK1FKPinkyFinger1_R_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[2]" "SDK1FKRingFinger1_R_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[1]" "SDK1FKIndexFinger1_L_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[0]" "SDK1FKPinkyFinger1_L_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_L[2]" "SDK1FKRingFinger1_L_rotateZ.spread"
		;
connectAttr "FitSkeleton.drivingSystem_Fingers_R[3]" "SDK1FKCup_R_rotateX.cup";
connectAttr "FitSkeleton.drivingSystem_Fingers_L[3]" "SDK1FKCup_L_rotateX.cup";
connectAttr "layerManager.dli[2]" "extras.id";
connectAttr "eyes:standardSurface6SG.msg" "eyes:materialInfo5.sg";
connectAttr "eyes:standardSurface6.msg" "eyes:materialInfo5.m";
connectAttr "eyes:standardSurface6.oc" "eyes:standardSurface6SG.ss";
connectAttr "eyes:leftEyeShape.iog" "eyes:standardSurface6SG.dsm" -na;
connectAttr "eyes:rightEyeShape.iog" "eyes:standardSurface6SG.dsm" -na;
connectAttr "eyes:standardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "eyes:standardSurface6.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of briarRig_v01.0001.ma

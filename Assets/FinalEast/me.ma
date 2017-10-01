//Maya ASCII 2016 scene
//Name: me.ma
//Last modified: Sat, Sep 30, 2017 07:44:53 PM
//Codeset: UTF-8
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0A3D7933-EF45-72D3-01D0-AEAFF0782D96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2694379424260602 3.5777086823945243 7.2959258245934704 ;
	setAttr ".r" -type "double3" 2.0616472690204755 -9.7999999999928651 2.5216038441718974e-17 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 -1.3322676295501878e-15 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -6.0427394644293007e-16 -4.6278799988232635e-16 -2.0169049716600967e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "ECEEA845-0042-DEA6-7265-FE801E8B233C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.4087609389531099;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0092127276022317961 3.8442371433422613 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5F69C212-3640-ECDB-D3D5-3685BD53A6C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "43259F50-E646-2BF2-C1D2-9B834705E9EE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9652437A-6947-5BC8-3D6D-8E9E3D1620BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.3810669111869609 -0.33137545982792316 100.26486307230157 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E3B5F982-744A-3D9E-438E-ACB80AECACC6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.216903748360451;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E1A4DB16-954E-45D1-9637-34A15B9F8871";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "29FEBFAA-3B40-8C71-BB45-388A93216F66";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	rename -uid "1EA19E79-6F44-0F91-7BB2-0F938B123463";
	setAttr ".t" -type "double3" 3.1500000000000004 0 0 ;
	setAttr ".rp" -type "double3" -1.7036566510835867 2.8452266329058897 -0.26107750270871932 ;
	setAttr ".sp" -type "double3" -1.7036566510835867 2.8452266329058897 -0.26107750270871932 ;
createNode transform -n "group1";
	rename -uid "5526502D-5940-FCB7-91F0-2187252DE11E";
createNode transform -n "group2" -p "group1";
	rename -uid "D61A38FE-674B-D74E-3D6D-20B1F61C98D6";
	setAttr ".t" -type "double3" 0 0.47126867649218762 0 ;
	setAttr ".s" -type "double3" 0.83441886692527301 0.83441886692527301 0.83441886692527301 ;
createNode transform -n "group3";
	rename -uid "7C45702F-4541-419A-F547-A18B554A3B98";
createNode transform -n "pCylinder1" -p "group3";
	rename -uid "8FB56B0F-CD41-14FA-BE7C-D39759792479";
	setAttr ".t" -type "double3" 0 3.2072888417562182 0 ;
	setAttr ".s" -type "double3" 0.46323886530173919 0.46323886530173919 0.46323886530173919 ;
createNode transform -n "transform6" -p "pCylinder1";
	rename -uid "F1CD55C3-D24B-FBCC-1C1D-35AA314DF590";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform6";
	rename -uid "C4766901-5C42-061C-DFE6-389E105908F1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -0.48272625 0.60347652 0.55323327 
		0 0.60347652 0.78239012 0.48272625 0.60347652 0.55323327 0.70996296 0.60347652 1.1031697e-08 
		0.48272625 0.60347652 -0.55323327 0 0.60347652 -0.78239012 -0.48272631 0.60347652 
		-0.55323333 -0.70996308 0.60347652 1.1031697e-08 -0.37516311 -0.60347652 0.19672917 
		0 -0.60347652 0.27821627 0.37516311 -0.60347652 0.19672917 0.45028317 -0.60347652 
		-3.2457379e-08 0.37516311 -0.60347652 -0.19672915 0 -0.60347652 -0.27821642 -0.37516317 
		-0.60347652 -0.19672921 -0.45028329 -0.60347652 -3.2457379e-08 0 0.60347652 1.1031697e-08 
		0 -0.60347652 -3.2457379e-08;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "group3";
	rename -uid "81752B80-0649-70D1-7102-F2BE57FDE740";
	setAttr ".t" -type "double3" 0 2.5085062672352008 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube1";
	rename -uid "32BCEBA8-D240-CE81-ED45-2C80DD002727";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.375 0 0.625 0 0.5
		 0.25 0.375 0.5625 0.625 0.5625 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.1875 0.125 0 0.125 0.1875 0.625 0.125 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.125
		 0.625 0.125 0.875 0.125 0.75 0.25 0.125 0.125 0.375 0.125 0.25 0.25 0.625 0.125 0.875
		 0.125 0.75 0.25 0.125 0.125 0.375 0.125 0.25 0.25 0.5 0.75 0.5 0 0.5 1 0.5 0.875
		 0.375 1 0.625 1 0.4375 0.9375 0.375 0.875 0.5635078 0.93850785 0.625 0.875 0.5 0.9375
		 0.5 0.5 0.46875 0.90625 0.5317539 0.9067539 0.625 1 0.5635078 0.93850785 0.625 0.875
		 0.375 0.875 0.4375 0.9375 0.375 1 0.75 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt";
	setAttr ".pt[10]" -type "float3" -0.45289564 -0.083750129 6.7055225e-08 ;
	setAttr ".pt[11]" -type "float3" -0.45421097 -0.083397672 6.7055225e-08 ;
	setAttr ".pt[12]" -type "float3" -0.36772761 -0.10657081 6.7055225e-08 ;
	setAttr ".pt[13]" -type "float3" 0.45421097 -0.083397672 6.7055225e-08 ;
	setAttr ".pt[14]" -type "float3" 0.45289564 -0.083750129 6.7055225e-08 ;
	setAttr ".pt[15]" -type "float3" 0.36772761 -0.10657081 6.7055225e-08 ;
	setAttr ".pt[16]" -type "float3" -0.69173032 -0.37729931 0.080940917 ;
	setAttr ".pt[17]" -type "float3" -0.69173032 -0.37729931 -0.080940783 ;
	setAttr ".pt[18]" -type "float3" -0.69697386 -0.46217895 6.7055225e-08 ;
	setAttr ".pt[19]" -type "float3" 0.69173032 -0.37729931 -0.080940783 ;
	setAttr ".pt[20]" -type "float3" 0.69173032 -0.37729931 0.080940917 ;
	setAttr ".pt[21]" -type "float3" 0.69697386 -0.46217895 6.7055225e-08 ;
	setAttr ".pt[25]" -type "float3" 0.15199499 0 0.15795949 ;
	setAttr ".pt[26]" -type "float3" -0.15199499 0 0.15795949 ;
	setAttr ".pt[27]" -type "float3" -0.056413095 0 -0.04211323 ;
	setAttr ".pt[28]" -type "float3" 0.021621305 -8.8817842e-16 0.0798712 ;
	setAttr ".pt[29]" -type "float3" 0.056413095 0 -0.04211323 ;
	setAttr ".pt[30]" -type "float3" -0.021621305 -8.8817842e-16 0.0798712 ;
	setAttr ".pt[33]" -type "float3" 0.015594792 0 -0.039905239 ;
	setAttr ".pt[34]" -type "float3" -0.015594792 0 -0.039905239 ;
	setAttr ".pt[35]" -type "float3" 0.099330656 -1.7763568e-15 -0.10356771 ;
	setAttr ".pt[36]" -type "float3" -0.10692443 1.7763568e-15 -0.014924843 ;
	setAttr ".pt[37]" -type "float3" -0.11391137 0 0.045653909 ;
	setAttr ".pt[38]" -type "float3" -0.10134888 -1.7763568e-15 -0.099690951 ;
	setAttr ".pt[39]" -type "float3" 0.11391132 0 0.045654446 ;
	setAttr ".pt[40]" -type "float3" 0.1069244 1.7763568e-15 -0.014924332 ;
	setAttr -s 43 ".vt[0:42]"  -0.4171389 -0.3164148 0.30841196 0.4171389 -0.3164148 0.30841196
		 0 0.40279651 0.3489579 -0.43150687 0.3502903 -0.21732566 0.43150687 0.3502903 -0.21732566
		 -0.39131564 -0.44561243 -0.12175238 0.39131567 -0.44561243 -0.12175238 0.48763362 0.38630131 0.17749067
		 0 0.70361489 -0.01472269 -0.48763362 0.38630131 0.17749067 1.34702516 0.0088402666 -0.11658766
		 1.34702516 0.0062096156 0.15864259 1.34702516 0.17917633 0.0077681104 -1.34702516 0.0062096156 0.15864259
		 -1.34702516 0.0088402666 -0.11658766 -1.34702516 0.17917633 0.0077681104 2.055532932 -0.34159899 -0.15673833
		 2.055532932 -0.34159899 0.15673833 2.13390207 -0.20585966 -1.2896269e-16 -2.055532932 -0.34159899 0.15673833
		 -2.055532932 -0.34159899 -0.15673833 -2.13390207 -0.20585966 -1.2896269e-16 0 -0.40924692 -0.17946169
		 0 -0.0007109642 0.45831913 0 -0.5168879 0.25975072 -0.49999994 -1.52985835 0.15766166
		 0.49999997 -1.52985835 0.15766166 -0.24999999 -1.52985835 0.20065674 -0.49999994 -1.52985835 0.0060027689
		 0.2540313 -1.52985835 0.20839947 0.5 -1.52985835 0.0060028434 0 -0.4372344 0.38278282
		 0 0.46958637 -0.27128571 -0.21046999 -0.85998964 0.28336746 0.21248566 -0.86202335 0.28723884
		 0.2540313 -2.84913397 0.20840049 0.49999997 -2.84913397 0.15766267 0.5 -2.84913397 0.006003852
		 -0.24999999 -2.84913397 0.20065674 -0.49999994 -2.84913397 0.0060027689 -0.49999994 -2.84913397 0.15766166
		 0.51014674 0.60991144 -0.057361346 -0.51014674 0.60991144 -0.057361346;
	setAttr -s 84 ".ed[0:83]"  0 23 0 3 32 0 5 22 0 0 9 0 1 7 0 2 8 0 5 0 0
		 6 1 0 7 2 0 8 4 0 4 6 0 7 8 0 4 7 0 3 5 0 8 3 0 9 2 0 8 9 0 9 3 0 4 10 0 7 11 0 10 11 0
		 8 41 0 12 10 0 11 12 0 9 13 0 3 14 0 13 14 0 8 42 0 15 13 0 14 15 0 10 16 0 11 17 0
		 16 17 0 12 18 0 18 16 0 17 18 0 13 19 0 14 20 0 19 20 0 15 21 0 21 19 0 20 21 0 22 6 0
		 23 1 0 22 24 1 24 31 1 24 0 0 5 24 0 6 24 0 24 1 0 0 25 0 24 33 0 5 28 0 1 26 0 6 30 0
		 24 34 0 27 25 1 28 25 1 27 28 1 29 26 1 30 26 1 29 30 1 31 23 1 2 23 1 32 4 0 4 22 1
		 22 3 1 33 27 0 34 29 0 29 35 0 26 36 0 35 36 0 30 37 0 35 37 0 37 36 0 27 38 0 28 39 0
		 38 39 0 25 40 0 38 40 0 39 40 0 41 12 0 42 15 0 8 32 1;
	setAttr -s 43 -ch 168 ".fc[0:42]" -type "polyFaces" 
		f 3 83 -2 -15
		mu 0 3 14 41 3
		f 4 1 64 65 66
		mu 0 4 3 41 4 30
		f 5 47 51 67 58 -53
		mu 0 5 5 33 42 36 37
		f 3 11 -6 -9
		mu 0 3 13 15 2
		f 4 -8 -11 12 -5
		mu 0 4 1 9 10 13
		f 3 -33 -35 -36
		mu 0 3 24 25 26
		f 3 16 15 5
		mu 0 3 16 17 2
		f 4 6 3 17 13
		mu 0 4 11 0 17 12
		f 3 -39 -41 -42
		mu 0 3 27 28 29
		f 4 -13 18 20 -20
		mu 0 4 13 10 19 18
		f 5 -10 21 81 22 -19
		mu 0 5 10 15 50 20 19
		f 5 -12 19 23 -82 -22
		mu 0 5 15 13 18 20 50
		f 4 -18 24 26 -26
		mu 0 4 12 17 22 21
		f 5 -17 27 82 28 -25
		mu 0 5 17 16 51 23 22
		f 5 14 25 29 -83 -28
		mu 0 5 16 12 21 23 51
		f 4 -21 30 32 -32
		mu 0 4 18 19 25 24
		f 4 -23 33 34 -31
		mu 0 4 19 20 26 25
		f 4 -24 31 35 -34
		mu 0 4 20 18 24 26
		f 4 -27 36 38 -38
		mu 0 4 21 22 28 27
		f 4 -29 39 40 -37
		mu 0 4 22 23 29 28
		f 4 -30 37 41 -40
		mu 0 4 23 21 27 29
		f 3 48 -45 42
		mu 0 3 6 33 30
		f 4 -47 45 62 -1
		mu 0 4 7 33 40 32
		f 3 2 44 -48
		mu 0 3 5 30 33
		f 4 -63 -46 49 -44
		mu 0 4 32 40 33 8
		f 3 -72 73 74
		mu 0 3 44 45 46
		f 5 46 50 -57 -68 -52
		mu 0 5 33 7 34 36 42
		f 4 -7 52 57 -51
		mu 0 4 7 5 37 34
		f 5 -50 55 68 59 -54
		mu 0 5 8 33 43 38 35
		f 4 7 53 -61 -55
		mu 0 4 6 8 35 39
		f 3 -78 79 -81
		mu 0 3 47 48 49
		f 5 -62 -69 -56 -49 54
		mu 0 5 39 38 43 33 6
		f 4 63 43 4 8
		mu 0 4 2 31 1 13
		f 4 0 -64 -16 -4
		mu 0 4 0 31 2 17
		f 3 -66 10 -43
		mu 0 3 30 4 6
		f 3 -67 -3 -14
		mu 0 3 3 30 5
		f 4 -60 69 71 -71
		mu 0 4 35 38 45 44
		f 4 61 72 -74 -70
		mu 0 4 38 39 46 45
		f 4 60 70 -75 -73
		mu 0 4 39 35 44 46
		f 4 -59 75 77 -77
		mu 0 4 37 36 48 47
		f 4 56 78 -80 -76
		mu 0 4 36 34 49 48
		f 4 -58 76 80 -79
		mu 0 4 34 37 47 49
		f 3 9 -65 -84
		mu 0 3 14 4 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pCube1";
	rename -uid "0842F097-EE4C-19DC-5D92-69BDB53E973C";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform5";
	rename -uid "E1B4EB1C-F34E-8506-FA72-64BCA7450506";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".pt";
	setAttr ".pt[16]" -type "float3" -5.9604645e-08 2.9802322e-08 0 ;
	setAttr ".pt[17]" -type "float3" -5.9604645e-08 2.9802322e-08 0 ;
	setAttr ".pt[18]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[19]" -type "float3" 5.9604645e-08 2.9802322e-08 0 ;
	setAttr ".pt[20]" -type "float3" 5.9604645e-08 2.9802322e-08 0 ;
	setAttr ".pt[21]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".pt[43]" -type "float3" 5.9604645e-08 -2.9802322e-08 -0.050000001 ;
	setAttr ".pt[44]" -type "float3" -0.010996219 -0.15119958 -0.14999999 ;
	setAttr ".pt[45]" -type "float3" 1.1920929e-07 8.9406967e-08 0 ;
	setAttr ".pt[46]" -type "float3" -2.9802322e-08 -2.9802322e-08 0 ;
	setAttr ".pt[47]" -type "float3" -5.9604645e-08 -2.9802322e-08 0 ;
	setAttr ".pt[48]" -type "float3" -1.1920929e-07 8.9406967e-08 0 ;
	setAttr ".pt[51]" -type "float3" 4.4703484e-08 1.1175871e-08 -0.049999993 ;
	setAttr ".pt[57]" -type "float3" 0.010996249 -0.15119956 -0.15000001 ;
	setAttr ".pt[58]" -type "float3" -4.4703484e-08 1.1175871e-08 7.4505806e-09 ;
	setAttr ".pt[61]" -type "float3" 5.5879354e-09 5.5879354e-09 3.7252903e-09 ;
	setAttr ".pt[62]" -type "float3" -3.7252903e-09 -7.4505806e-09 -3.7252903e-09 ;
	setAttr ".pt[63]" -type "float3" 5.5879354e-09 -1.8626451e-09 -0.049999993 ;
	setAttr ".pt[64]" -type "float3" -0.095702887 0.15746994 0.025094669 ;
	setAttr ".pt[65]" -type "float3" 9.3132257e-09 3.7252903e-08 -5.5879354e-09 ;
	setAttr ".pt[66]" -type "float3" 1.8626451e-08 2.2351742e-08 -5.5879354e-09 ;
	setAttr ".pt[67]" -type "float3" 3.7252903e-09 -7.4505806e-09 -3.7252903e-09 ;
	setAttr ".pt[68]" -type "float3" -5.5879354e-09 5.5879354e-09 3.7252903e-09 ;
	setAttr ".pt[69]" -type "float3" 0.095702887 0.15747 0.025094684 ;
	setAttr ".pt[70]" -type "float3" -5.5879354e-09 -1.8626451e-09 -0.049999993 ;
	setAttr ".pt[71]" -type "float3" -9.3132257e-09 3.7252903e-08 -5.5879354e-09 ;
	setAttr ".pt[72]" -type "float3" -1.8626451e-08 2.2351742e-08 -5.5879354e-09 ;
createNode transform -n "pPlane4" -p "group3";
	rename -uid "BBFF6855-5040-6ADC-27D4-B88722E48DAF";
	setAttr ".t" -type "double3" 0 0.47126867649218762 0 ;
	setAttr -av ".ty";
	setAttr ".s" -type "double3" 0.83441886692527301 0.83441886692527301 0.83441886692527301 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
createNode transform -n "transform4" -p "pPlane4";
	rename -uid "D4531992-3E42-05FF-3290-84ADA4C25C17";
	setAttr ".v" no;
createNode mesh -n "pPlane4Shape" -p "transform4";
	rename -uid "A91F3B05-4940-6147-DEDA-72B9B9A4DEA5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 59 ".uvst[0].uvsp[0:58]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0.25 0.25 0.25 0.25 0.5 0 0.5 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.5 0.375 0.5 0.75
		 0.25 0.75 0.5 0.625 0.5 1 0.25 1 0.5 0.25 0.75 0 0.75 0.5 0.75 0.75 0.75 1 0.75 0.125
		 0 0.375 0 0.625 0 0.875 0 0.125 1 0.375 1 0.625 1 0.875 1 0.50000006 0 0.75 0.25
		 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 0.34375 0.38048381 0.57034731 0.3125 0.5 0.4375 0.5
		 0.5 0.625 0.375 0.625 0.61951619 0.57034731 0.5625 0.5 0.6875 0.5 0.625 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".pt";
	setAttr ".pt[0]" -type "float3" -4.1624698e-06 0.019004524 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.01537022 -0.038042977 ;
	setAttr ".pt[2]" -type "float3" 4.1624698e-06 0.019004524 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.054258842 -0.19718505 ;
	setAttr ".pt[9]" -type "float3" 0.13984106 0.018762471 0 ;
	setAttr ".pt[11]" -type "float3" -0.13984106 0.018762471 0 ;
	setAttr ".pt[13]" -type "float3" 0.13761495 0.044445276 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.044852823 0.19959833 ;
	setAttr ".pt[15]" -type "float3" -0.13761495 0.044445276 0 ;
	setAttr ".pt[17]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[18]" -type "float3" 0 -7.4505806e-09 3.7252903e-09 ;
	setAttr ".pt[19]" -type "float3" 0 0 -2.220446e-16 ;
	setAttr ".pt[21]" -type "float3" 0 0 -2.220446e-16 ;
	setAttr ".pt[22]" -type "float3" 0.00072025508 0.011114746 0.014679776 ;
	setAttr ".pt[23]" -type "float3" -0.022244494 -0.034292743 0.022824727 ;
	setAttr ".pt[24]" -type "float3" 0.022244491 0.032288384 0.079574294 ;
	setAttr ".pt[25]" -type "float3" -0.00034168267 -0.018626768 0.081702136 ;
	setAttr ".pt[26]" -type "float3" 0.022244494 -0.034292743 0.022824727 ;
	setAttr ".pt[27]" -type "float3" -0.00072025508 0.011114746 0.014679776 ;
	setAttr ".pt[28]" -type "float3" 0.00034168267 -0.018626768 0.081702136 ;
	setAttr ".pt[29]" -type "float3" -0.022244491 0.032288384 0.079574294 ;
	setAttr ".pt[30]" -type "float3" 0 0.093161762 0.10245495 ;
	setAttr ".pt[32]" -type "float3" 0 0.1 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.03144116 0.099884667 ;
	setAttr ".pt[34]" -type "float3" -0.057905328 0.08683677 0.2171091 ;
	setAttr ".pt[35]" -type "float3" 0 0.093161754 0.10245496 ;
	setAttr ".pt[36]" -type "float3" 0 0.1 0 ;
	setAttr ".pt[38]" -type "float3" 0.057905328 0.086836763 0.2171091 ;
	setAttr -s 39 ".vt[0:38]"  -0.27768427 3.61450529 0.48465356 -7.5032105e-09 3.59107304 0.63468724
		 0.27899039 3.61935949 0.48286507 4.0963766e-10 3.65908003 0.67903286 1.1809534e-07 3.34967971 -0.38005641
		 -0.71139586 3.59973216 0.11605394 -3.9365119e-08 3.37308145 0.67969102 0.71139586 3.59973216 0.11605401
		 1.6701203e-07 3.90574598 -0.63784331 -0.97560114 4.14345694 -7.6944232e-08 -5.5670682e-08 3.85698652 0.72498012
		 0.97560114 4.14345694 0 1.1809534e-07 4.46181202 -0.38005641 -0.76747668 4.44101048 -5.4407788e-08
		 -1.968256e-08 4.31689882 0.48028469 0.76747668 4.44101048 0 0 3.31159449 0 0 4.6863966 0
		 9.1417611e-09 3.75758791 0.67322123 -0.20805793 3.85506606 0.6144489 -2.1933809e-08 3.79695916 0.83672619
		 0.20805793 3.85506606 0.6144489 -0.50015891 3.96001744 0.42462724 -0.2762225 4.07075119 0.55664819
		 -0.71004844 4.13098955 0.23547727 -0.48980361 4.2324543 0.39652267 0.2762225 4.07075119 0.55664819
		 0.50015891 3.96001744 0.42462724 0.48980361 4.2324543 0.39652267 0.71004844 4.13098955 0.23547727
		 -0.40524572 4.091619492 0.36461893 -0.59182954 3.99926138 0.30722442 -0.10402899 3.85602617 0.66971451
		 -3.7676621e-08 4.086942673 0.6026324 -0.48780057 4.23017788 0.2401423 0.40524572 4.091619492 0.36461896
		 0.10402893 3.85602617 0.66971451 0.59182954 3.99926138 0.30722445 0.48780057 4.23017788 0.24014235;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 0 3 0 3 2 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 31 0 10 36 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 4 8 0 5 9 0 6 1 0
		 7 11 0 8 12 0 9 13 0 10 33 0 11 15 0 16 4 0 16 5 0 16 6 0 16 7 0 12 17 0 13 17 0
		 14 17 0 15 17 0 18 19 0 19 20 0 20 21 0 21 18 0 18 14 0 19 14 0 20 14 0 21 14 0 19 32 0
		 21 37 0 18 10 0 22 23 0 22 24 0 23 25 0 24 25 0 26 27 0 26 28 0 27 29 0 28 29 0 1 3 0
		 3 18 0 14 34 1 14 38 1 31 19 0 32 10 0 33 14 0 34 9 1 31 30 0 32 30 0 33 30 0 34 30 0
		 36 21 0 37 11 0 38 11 1 36 35 0 37 35 0 38 35 0 33 35 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 0 1 -4 -3
		mu 0 4 0 1 2 3
		f 4 4 17 -9 -17
		mu 0 4 4 5 6 7
		f 10 5 18 51 52 42 -57 -41 -56 -10 -18
		mu 0 10 5 8 9 49 10 11 52 12 51 6
		f 10 6 19 -65 -42 -64 -11 -43 -53 -52 -19
		mu 0 10 8 13 14 57 15 56 11 10 49 9
		f 4 7 16 -12 -20
		mu 0 4 13 16 17 14
		f 4 8 21 -13 -21
		mu 0 4 7 6 18 19
		f 4 58 9 59 -63
		mu 0 4 54 6 51 50
		f 4 54 65 23 -15
		mu 0 4 20 58 14 21
		f 4 11 20 -16 -24
		mu 0 4 14 17 22 21
		f 3 -5 -25 25
		mu 0 3 5 4 23
		f 3 -6 -26 26
		mu 0 3 8 5 24
		f 3 -7 -27 27
		mu 0 3 13 8 25
		f 3 -8 -28 24
		mu 0 3 16 13 26
		f 3 12 29 -29
		mu 0 3 19 18 27
		f 3 13 30 -30
		mu 0 3 18 20 28
		f 3 14 31 -31
		mu 0 3 20 21 29
		f 3 15 28 -32
		mu 0 3 21 22 30
		f 4 -36 -35 -34 -33
		mu 0 4 31 32 33 34
		f 3 32 37 -37
		mu 0 3 35 36 37
		f 3 33 38 -38
		mu 0 3 36 38 37
		f 3 34 39 -39
		mu 0 3 38 39 37
		f 3 35 36 -40
		mu 0 3 39 40 37
		f 4 43 45 -47 -45
		mu 0 4 41 42 43 44
		f 4 47 49 -51 -49
		mu 0 4 45 46 47 48
		f 4 -59 -54 -14 -22
		mu 0 4 6 54 20 18
		f 4 -23 10 66 -70
		mu 0 4 53 11 56 55
		f 4 55 40 60 -60
		mu 0 4 51 12 52 50
		f 4 56 22 61 -61
		mu 0 4 52 11 53 50
		f 4 57 53 62 -62
		mu 0 4 53 20 54 50
		f 4 63 41 67 -67
		mu 0 4 56 15 57 55
		f 4 64 -66 68 -68
		mu 0 4 57 14 58 55
		f 4 -55 -58 69 -69
		mu 0 4 58 20 53 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5" -p "group3";
	rename -uid "7D965727-374D-D6A5-75E6-EB974C644FA1";
	setAttr ".t" -type "double3" -0.40997468217845606 3.8846283160931971 0.4962038608958157 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 112.20765429859631 -20.704811054635421 -49.106605350869138 ;
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 0.090069645253722616 0.83441886692527323 0.090069645253722644 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" -2.8124267057016412e-18 0 1.8749511371341439e-18 ;
	setAttr ".rpt" -type "double3" -5.7994280942210634e-20 6.6289533173079455e-19 -3.5321894664605171e-18 ;
createNode transform -n "transform3" -p "pPlane5";
	rename -uid "8C0200EE-5144-B1FF-B423-CC959CD1F832";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape3" -p "transform3";
	rename -uid "BB5AF988-7E4A-2E24-4E8E-61B141C1A839";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.079661131 -0.057911489 
		-0.079661608 -0.2296951 -0.061728116 0.23722555 -0.23722573 -0.06172812 0.22969504 
		-0.54658186 -0.065544814 0.54658139;
	setAttr -s 4 ".vt[0:3]"  -0.78040749 -1.7328527e-16 0.78040749 0.78040749 -1.7328527e-16 0.78040749
		 -0.78040749 1.7328527e-16 -0.78040749 0.78040749 1.7328527e-16 -0.78040749;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6" -p "group3";
	rename -uid "8E4E7C2C-7641-B088-B72A-03B879F417B4";
	setAttr ".t" -type "double3" 0.41093717048260647 3.8846283160931971 0.4962038608958157 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 63.060422564120081 24.372932641239757 -50.922209384668086 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 0.090069645253722602 0.83441886692527312 0.090069645253722616 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" -2.8124267057016409e-18 0 1.8749511371341431e-18 ;
	setAttr ".rpt" -type "double3" 1.2095722721050585e-19 6.6289533173079898e-19 5.9408593398048331e-20 ;
createNode transform -n "transform2" -p "pPlane6";
	rename -uid "CCB72A2C-6B40-4681-AD49-01A699C48003";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape6" -p "transform2";
	rename -uid "00F6C63A-404D-C56B-1C0B-3C8BEF01EDFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.59085155 -0.062056903 -0.59085202 
		0.2762644 -0.057879772 -0.26873419 0.26873395 -0.057879772 -0.27626464 -0.045853406 
		-0.053702667 0.045853406;
	setAttr -s 4 ".vt[0:3]"  -0.78040749 -1.7328527e-16 0.78040749 0.78040749 -1.7328527e-16 0.78040749
		 -0.78040749 1.7328527e-16 -0.78040749 0.78040749 1.7328527e-16 -0.78040749;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8" -p "group3";
	rename -uid "A6364DCD-D54C-CE76-32B5-F4A0F6A5779A";
createNode transform -n "transform1" -p "pPlane8";
	rename -uid "ACA93387-AF4B-7A63-E67C-D8B2CA82E38E";
	setAttr ".v" no;
createNode mesh -n "pPlane8Shape" -p "transform1";
	rename -uid "7D9AD034-9541-922D-20D2-D2A3A9D6AF8A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.1686257 0 0.12120306 -0.035462625 
		0.052815113 0.014107235 -0.024042934 -0.040755831 -0.050000008 0.14103296 0 -0.12537585 
		-0.14103296 0 -0.12537585 0.035462625 0.052815113 0.014107235 0.024042934 -0.040755831 
		-0.050000008 0.1686257 0 0.12120306;
	setAttr -s 8 ".vt[0:7]"  0.3611103 4.092712402 0.46824688 0.41093716 3.99282622 0.4367286
		 0.41093716 4.19259834 0.4367286 0.46076399 4.092712402 0.40521032 -0.46311441 4.092712402 0.4097257
		 -0.40997469 3.99282622 0.4367286 -0.40997469 4.19259834 0.4367286 -0.35683495 4.092712402 0.4637315;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 4 6 0 5 7 0
		 6 7 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 4 6 -8 -6
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	rename -uid "C5BC4A5B-6442-66DE-8BBC-BB8FB71780C8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "group4Shape" -p "group4";
	rename -uid "E3218931-8045-EF1C-E77D-FA816B44A2A4";
	setAttr -k off ".v";
	setAttr -s 16 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "group4ShapeOrig" -p "group4";
	rename -uid "B499A856-814B-2FFE-154F-9888CBC00348";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "C4959A16-C44D-2045-E846-25BA7633CFD1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.00034187308612954048 2.8508393465191211 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -1.0000000000000002 -0 0 1.0000000000000002 2.2204460492503131e-16 0 0
		 0 -0 1 0 -0.00034187308612954048 2.8508393465191211 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "hips" -p "joint1";
	rename -uid "70217B5A-7E4C-3F6C-7ECC-2998E57CE32A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.714925040894831 -1.0323409702524674e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 19.785489405218083 ;
	setAttr ".bps" -type "matrix" 0.33849962412708334 -0.94096652675099113 0 0 0.94096652675099113 0.33849962412708334 0 0
		 0 0 1 0 -0.00034187308612948497 2.13591430562429 0 1;
	setAttr ".radi" 0.51037727270220656;
createNode joint -n "leftKnee" -p "hips";
	rename -uid "AE0BD4C2-484E-61A0-2153-2F8A23174421";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.2194206023384595 -3.4694469519536142e-18 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.7655625192200634e-31 -20.973274317338959 ;
	setAttr ".bps" -type "matrix" -0.020729272663986331 -0.99978512554189491 3.0814879110195774e-33 0
		 -0.99978512554189491 0.020729272663986331 1.2246467991473532e-16 0 -1.2243836538300161e-16 2.5386037416603588e-18 -1 0
		 0.41243154245826064 0.98848033679326819 0 1;
	setAttr ".radi" 0.5156010816463632;
createNode joint -n "leftFoot" -p "leftKnee";
	rename -uid "F091C26A-DF4E-C22A-54BF-308D01C32381";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2888275764799202 0.00026525353295623022 3.2484189009733431e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 88.812215087879125 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.7347234759768071e-16 2.6314531733715111e-20 0
		 -2.8449465006019636e-16 1.0000000000000002 2.5386037416603896e-18 0 -2.6314531733739762e-20 -2.538603741660378e-18 1 0
		 0.38544988767179661 -0.30006480504675515 7.9685351449021883e-33 1;
	setAttr ".radi" 0.5156010816463632;
createNode joint -n "rightKnee" -p "hips";
	rename -uid "84935D7F-9E4A-9C3D-2210-F788E0E8292E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.93513496455046663 -0.75301291152811634 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.299943575209948 ;
	setAttr ".bps" -type "matrix" 0.008474271972141012 -0.99996409271260456 0 0 0.99996409271260456 0.008474271972141012 0 0
		 0 0 1 0 -0.39235898303696615 1.0010890184727181 0 1;
	setAttr ".radi" 0.51719891337260315;
createNode joint -n "rightFoot" -p "rightKnee";
	rename -uid "46E00FF0-5248-6F87-19BD-7CAC0181A214";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.3402128466743468 0.0050399480412073854 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 18.425264580871836 ;
	setAttr ".bps" -type "matrix" 0.32409591722790276 -0.94602422613599313 0 0 0.94602422613599313 0.32409591722790276 0 0
		 0 0 1 0 -0.37596188780334577 -0.33903299490334549 0 1;
	setAttr ".radi" 0.51719891337260315;
createNode joint -n "leftShoulder" -p "joint1";
	rename -uid "4BBB83CC-5644-C2B3-A0E6-B4B2F69C5DB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.16758116290951452 0.5056072615751801 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 38.558399900664938 ;
	setAttr ".bps" -type "matrix" 0.62331200257645403 -0.78197323959591558 0 0 0.78197323959591558 0.62331200257645403 0 0
		 0 0 1 0 0.50526538848905067 3.0184205094286356 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftElbow" -p "leftShoulder";
	rename -uid "2CB5AC8F-0841-EF12-3963-2EAD4936D090";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.75722063210317869 -1.6653345369377348e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.8683323746851288 ;
	setAttr ".bps" -type "matrix" 0.5547001962252297 -0.83205029433784361 0 0 0.83205029433784361 0.5547001962252297 0 0
		 0 0 1 0 0.97725009707749122 2.4262942386540458 0 1;
	setAttr ".radi" 0.5010892607326034;
createNode joint -n "leftHand" -p "leftElbow";
	rename -uid "10BE8F0B-6745-58E0-C7F1-F8B216B712E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.0210590408303317 -1.6653345369377348e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -33.690067525979799 ;
	setAttr ".bps" -type "matrix" 2.7755575615628914e-16 -1.0000000000000004 0 0 1.0000000000000004 2.7755575615628914e-16 0 0
		 0 0 1 0 1.543631747383621 1.5767217631948518 0 1;
	setAttr ".radi" 0.5010892607326034;
createNode joint -n "rightShoulder" -p "joint1";
	rename -uid "C93777ED-E64D-DE32-B6FA-D69FE71D47E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.14894638940455929 -0.51622990030089599 0 ;
	setAttr ".r" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -39.053136946026548 ;
	setAttr ".bps" -type "matrix" -0.63004085686759759 -0.77656198637168927 0 0 -0.77656198637168916 0.63004085686759759 1.2246467991473532e-16 0
		 -9.5101415094959968e-17 7.7157751869495911e-17 -1 0 -0.51657177338702565 2.9997857359236804 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightElbow" -p "rightShoulder";
	rename -uid "128CE087-4F4B-4F8F-DC6A-14959D8E53EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.770678733382959 -5.5511151231257827e-16 -6.1629758220391547e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.5131932156251468e-17 8.7786670518401986e-16 -7.1871592524228411 ;
	setAttr ".bps" -type "matrix" -0.52793412112562221 -0.84928532528904399 -1.5321664399095498e-17 0
		 -0.84928532528904388 0.52793412112562221 1.215024461756226e-16 0 -9.5101415094959968e-17 7.7157751869495911e-17 -1 0
		 -1.0021308629372596 2.4013059278733921 -6.3517954519530082e-33 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightHand" -p "rightElbow";
	rename -uid "9EDDC1D2-5549-9DF3-081B-E99C16E23032";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.98390174893933491 -3.8857805861880479e-16 -1.5075012398931647e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -3.5311250384401269e-31 -31.86597769360371 ;
	setAttr ".bps" -type "matrix" 2.7755575615628914e-16 -1.0000000000000002 -7.7157751869495936e-17 0
		 1.0000000000000002 2.7755575615628914e-16 2.7363264819775402e-17 0 -2.7363264819775377e-17 -7.7157751869495948e-17 1 0
		 -1.5215661680375097 1.5656926109729896 -9.4332833629725856e-33 1;
	setAttr ".radi" 0.52622713961149259;
createNode joint -n "head" -p "joint1";
	rename -uid "26229EC1-1242-37F5-3FEE-31AA3D4F7E6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.99339779682313978 -0.0088708545161020318 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 -0.0092127276022317944 3.8442371433422613 0 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E501355E-F74C-2AD7-9902-7994DAEB4510";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "B4494C9F-5E48-BC09-0384-A6900671BA1A";
createNode displayLayer -n "defaultLayer";
	rename -uid "727C5B5E-154C-7022-4ABA-6DB61B403FC7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E44EF1CE-0542-6D93-69FC-DC9EC82AAF74";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3450553A-9149-C005-4CA3-80A159EEA7D0";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A9A2CBDD-5C4C-D08D-D430-659A212DD8F3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 793\n                -height 523\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 793\n            -height 523\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8DB400E5-FE40-482E-5714-A597BDDA72F3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTU -n "pPlane4_scaleX";
	rename -uid "FA751DD2-564A-3DCC-C569-43A40E5A2D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pPlane4_scaleY";
	rename -uid "415E5D0C-9548-C929-CEAA-CCB7DF0545C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pPlane4_scaleZ";
	rename -uid "4C078E8A-074E-5A92-1F02-38AF77B32D3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pPlane5_scaleX";
	rename -uid "38AE740C-D440-AE10-623E-A29052EF523D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.10794296344906218;
createNode animCurveTU -n "pPlane5_scaleY";
	rename -uid "4330B57E-A343-9E62-CA53-848C3A515197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pPlane5_scaleZ";
	rename -uid "460CD505-9543-FF3D-B72D-AC972579A685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.10794296344906218;
createNode animCurveTU -n "pPlane6_scaleX";
	rename -uid "2BD44209-B04A-C5C8-43CD-82B00C29F672";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.10794296344906218;
createNode animCurveTU -n "pPlane6_scaleY";
	rename -uid "285A681F-0C44-254A-93DB-AF8B53AF797C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pPlane6_scaleZ";
	rename -uid "680EB199-FD4A-74ED-34E8-27A60A2CCF8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.10794296344906218;
createNode animCurveTU -n "pPlane4_visibility";
	rename -uid "1D1EE7C7-9E4B-CAA0-DAC2-37A19AC3DBA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane4_translateX";
	rename -uid "E119515D-484D-6252-8813-739A212676D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pPlane4_translateY";
	rename -uid "FCF49FD9-FA42-1D9B-4068-C8A79FFD1570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pPlane4_translateZ";
	rename -uid "E9A3A8DE-004E-548E-4879-BD8C758C3E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pPlane4_rotateX";
	rename -uid "7F7AAF1C-4E47-5486-A8B4-0E997B2F3D90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pPlane4_rotateY";
	rename -uid "C6D479CE-2740-E373-C8BB-D8B4F69EA3C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pPlane4_rotateZ";
	rename -uid "0EE53B41-8E40-64FA-4569-9A9AEC8C103F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pPlane5_visibility";
	rename -uid "2F6EBB56-774F-B92F-A0FD-32ADF4255D8C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane5_translateX";
	rename -uid "530286EE-2A4F-0687-177D-8993699BB939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.49132959288080774;
createNode animCurveTL -n "pPlane5_translateY";
	rename -uid "7D3DA81A-4C49-9337-FAC1-C199A20556DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.0907028530872092;
createNode animCurveTL -n "pPlane5_translateZ";
	rename -uid "535ACD33-0943-34B4-45C7-059D63EE96E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.59466999197208992;
createNode animCurveTA -n "pPlane5_rotateX";
	rename -uid "D656E651-114D-1722-34C2-A28060126CE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 112.20765429859631;
createNode animCurveTA -n "pPlane5_rotateY";
	rename -uid "BF8DB958-F348-4A05-B740-10BCF339F055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -20.704811054635424;
createNode animCurveTA -n "pPlane5_rotateZ";
	rename -uid "FEB2E3BF-A744-4779-CCE7-92A42DAB210C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -49.106605350869138;
createNode animCurveTU -n "pPlane6_visibility";
	rename -uid "BB05BFEE-444E-5D69-62A9-AFAC8A17CF89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane6_translateX";
	rename -uid "913ED504-9748-4AE8-1E71-788972927BAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.49248307627181809;
createNode animCurveTL -n "pPlane6_translateY";
	rename -uid "65D7FF3F-9447-CE07-0600-3AB960DDFD9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.0907028530872092;
createNode animCurveTL -n "pPlane6_translateZ";
	rename -uid "41E571D7-5A4B-0893-6B09-80B74BBA8409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.59466999197208992;
createNode animCurveTA -n "pPlane6_rotateX";
	rename -uid "CA4BB972-414C-6799-2FC8-B8AC8D05D75C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 63.060422564120096;
createNode animCurveTA -n "pPlane6_rotateY";
	rename -uid "F0701A77-BA4D-53A0-04FA-A5BFFF76DB9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 24.37293264123975;
createNode animCurveTA -n "pPlane6_rotateZ";
	rename -uid "4B6B7A3B-FE49-7025-37D0-43A4C6903390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -50.922209384668086;
createNode groupId -n "groupId14";
	rename -uid "C56AE1FD-9C45-1E57-BF46-3A895CA3E624";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "B5266632-CF4F-1955-C75B-A1A16E0AC4C7";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "BDAC1147-C34D-C87C-F5AD-B499DE2BC0B2";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.5085062672352008 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8150378 6.7055225e-08 ;
	setAttr ".rs" 614744473;
	setAttr ".lt" -type "double3" 5.5511151231257827e-17 -2.7560871355596904e-17 0.26767624533275336 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4369282722473145 1.7896079708789996 -0.075797408819198608 ;
	setAttr ".cbx" -type "double3" 1.4369282722473145 1.840467660591524 0.075797542929649353 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "56A0982E-4445-9F09-D103-41AD4159123F";
	setAttr ".ics" -type "componentList" 1 "f[43:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.5085062672352008 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.7051622 6.7055225e-08 ;
	setAttr ".rs" 1431174583;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5897678136825562 1.569856612846773 -0.075797408819198608 ;
	setAttr ".cbx" -type "double3" 1.5897678136825562 1.840467660591524 0.075797542929649353 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "3701671E-C74E-BE4E-86A2-878DD49DF728";
	setAttr ".ics" -type "componentList" 1 "f[43:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.5085062672352008 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.7051622 6.7055225e-08 ;
	setAttr ".rs" 1358255390;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5897676944732666 1.569856612846773 -0.075797408819198608 ;
	setAttr ".cbx" -type "double3" 1.5897676944732666 1.840467660591524 0.075797542929649353 ;
createNode polyUnite -n "polyUnite1";
	rename -uid "ADE54C53-C44B-69E7-B88F-DFB262E09B03";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId16";
	rename -uid "3AF5B7C2-8A4B-3143-7E8A-88B3C44444F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "6EAE3EAE-A14C-BC4D-FE13-D49BCBCB90C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "F8DB3EBE-A643-6E5A-CADA-ACBEC5BE37CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "2A46B9E1-7544-73EB-7510-ABB34185740C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:72]";
createNode groupId -n "groupId19";
	rename -uid "4765119E-2847-541D-D496-F8994E23EF0C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "F029AFC1-9D44-4D5D-F318-3D8B471DA95E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "8C8A8719-604F-7806-2300-C091633D0285";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "1D3F872B-D64D-4443-E191-F9948F24A25C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "634D746F-A342-1EB3-1A65-2B8F53691E39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "9C22AA6D-C241-DE9A-DCFF-20A52830427E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B5E987C5-0244-5A37-3081-E498E4162015";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[0:1]" "f[8:24]" "f[32]" "f[44]" "f[49]" "f[54]" "f[66]" "f[73:77]" "f[79:85]" "f[87:89]" "f[91:96]" "f[98]" "f[101:102]" "f[105]" "f[110]" "f[113]" "f[115]" "f[118]";
	setAttr ".irc" -type "componentList" 18 "f[2:7]" "f[25:31]" "f[33:43]" "f[45:48]" "f[50:53]" "f[55:65]" "f[67:72]" "f[78]" "f[86]" "f[90]" "f[97]" "f[99:100]" "f[103:104]" "f[106:109]" "f[111:112]" "f[114]" "f[116:117]" "f[119:132]";
createNode skinCluster -n "skinCluster1";
	rename -uid "A12CEAB9-574E-A890-40FD-6BA5D916D0C0";
	setAttr ".skm" 1;
	setAttr -s 146 ".wl";
	setAttr -s 4 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.98825119046800147;
	setAttr ".wl[0].w[6]" 0.0094849743729936171;
	setAttr ".wl[0].w[9]" 0.0017158489931725493;
	setAttr ".wl[0].w[12]" 0.00054798616583235304;
	setAttr -s 4 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99698081920321391;
	setAttr ".wl[1].w[6]" 0.0014616877639162657;
	setAttr ".wl[1].w[9]" 0.001337093565468533;
	setAttr ".wl[1].w[12]" 0.00022039946740130194;
	setAttr -s 4 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99016386198141504;
	setAttr ".wl[2].w[6]" 0.0016795633695102063;
	setAttr ".wl[2].w[9]" 0.0076831514865994665;
	setAttr ".wl[2].w[12]" 0.00047342316247522831;
	setAttr -s 4 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.98561275541704796;
	setAttr ".wl[3].w[6]" 0.0016224945065818424;
	setAttr ".wl[3].w[9]" 0.012627986927894838;
	setAttr ".wl[3].w[12]" 0.00013676314847543836;
	setAttr -s 4 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99041203508798104;
	setAttr ".wl[4].w[6]" 0.0016799843326205459;
	setAttr ".wl[4].w[9]" 0.0076850771795537922;
	setAttr ".wl[4].w[12]" 0.0002229033998446539;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99698081577238074;
	setAttr ".wl[5].w[6]" 0.0014616894206679336;
	setAttr ".wl[5].w[9]" 0.0013370950836357023;
	setAttr ".wl[5].w[12]" 0.00022039972331574552;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.98825119046800147;
	setAttr ".wl[6].w[6]" 0.0094849743729936171;
	setAttr ".wl[6].w[9]" 0.0017158489931725493;
	setAttr ".wl[6].w[12]" 0.00054798616583235304;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.98695056638637313;
	setAttr ".wl[7].w[6]" 0.011401978430798468;
	setAttr ".wl[7].w[9]" 0.0011992920699721271;
	setAttr ".wl[7].w[12]" 0.00044816311285626026;
	setAttr -s 4 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.86230208133447761;
	setAttr ".wl[8].w[6]" 0.056076312578401691;
	setAttr ".wl[8].w[9]" 0.013106075351134214;
	setAttr ".wl[8].w[12]" 0.068515530735986513;
	setAttr -s 4 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.82150926423638493;
	setAttr ".wl[9].w[6]" 0.040138865582241785;
	setAttr ".wl[9].w[9]" 0.0363398927818556;
	setAttr ".wl[9].w[12]" 0.10201197739951781;
	setAttr -s 4 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.5044769422739166;
	setAttr ".wl[10].w[6]" 0.0077529567558069761;
	setAttr ".wl[10].w[9]" 0.026450326581009435;
	setAttr ".wl[10].w[12]" 0.46131977438926697;
	setAttr -s 4 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.49191349470901979;
	setAttr ".wl[11].w[6]" 0.0037140390600651123;
	setAttr ".wl[11].w[9]" 0.038791436577365897;
	setAttr ".wl[11].w[12]" 0.46558102965354919;
	setAttr -s 4 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.87402463680151166;
	setAttr ".wl[12].w[6]" 0.013432279346778736;
	setAttr ".wl[12].w[9]" 0.04582615209139846;
	setAttr ".wl[12].w[12]" 0.066716931760311127;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.82150933804422643;
	setAttr ".wl[13].w[6]" 0.040138846898842624;
	setAttr ".wl[13].w[9]" 0.036339875589034711;
	setAttr ".wl[13].w[12]" 0.10201193946789619;
	setAttr -s 4 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.86230208042472267;
	setAttr ".wl[14].w[6]" 0.056076312519239467;
	setAttr ".wl[14].w[9]" 0.013106075337306905;
	setAttr ".wl[14].w[12]" 0.068515531718730927;
	setAttr -s 4 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.84712897638660112;
	setAttr ".wl[15].w[6]" 0.094960101592234919;
	setAttr ".wl[15].w[9]" 0.0069016856122672953;
	setAttr ".wl[15].w[12]" 0.051009236408896673;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.99999999963012254;
	setAttr ".wl[16].w[6]" 1.9349144394899574e-10;
	setAttr ".wl[16].w[9]" 1.7638598886595114e-10;
	setAttr -s 4 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.9999999745345266;
	setAttr ".wl[17].w[6]" 4.582273373968806e-09;
	setAttr ".wl[17].w[9]" 4.03673994867618e-09;
	setAttr ".wl[17].w[12]" 1.6846460016732631e-08;
	setAttr -s 4 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.47969303413362824;
	setAttr ".wl[18].w[1]" 0.49329190582298788;
	setAttr ".wl[18].w[4]" 0.015120511466839012;
	setAttr ".wl[18].w[11]" 0.011894548576544914;
	setAttr -s 4 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.47848492100495593;
	setAttr ".wl[19].w[1]" 0.49550972644421232;
	setAttr ".wl[19].w[2]" 0.014571237168920401;
	setAttr ".wl[19].w[8]" 0.011434115381911417;
	setAttr -s 4 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.81904053663550203;
	setAttr ".wl[20].w[1]" 0.023234193570721817;
	setAttr ".wl[20].w[6]" 0.080451470351758023;
	setAttr ".wl[20].w[9]" 0.077273799442018107;
	setAttr ".wl[21].w[9]"  1;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.55695269454134844;
	setAttr ".wl[22].w[1]" 0.0039505270074405956;
	setAttr ".wl[22].w[6]" 0.43667517177499943;
	setAttr ".wl[22].w[9]" 0.0024216066762115583;
	setAttr -s 4 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.37114312427635598;
	setAttr ".wl[23].w[1]" 0.61565413603023444;
	setAttr ".wl[23].w[4]" 0.0085150840446648352;
	setAttr ".wl[23].w[11]" 0.0046876556487446992;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.36550393709602363;
	setAttr ".wl[24].w[1]" 0.62203338303547073;
	setAttr ".wl[24].w[2]" 0.0080472528790710533;
	setAttr ".wl[24].w[8]" 0.0044154269894347183;
	setAttr ".wl[25].w[6]"  1;
	setAttr -s 4 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.99999851681091456;
	setAttr ".wl[26].w[6]" 6.1332973277506901e-07;
	setAttr ".wl[26].w[9]" 5.4049586904818008e-07;
	setAttr ".wl[26].w[12]" 3.293634836332644e-07;
	setAttr ".wl[27].w[9]"  1;
	setAttr ".wl[28].w[7]"  1;
	setAttr ".wl[29].w[7]"  1;
	setAttr ".wl[30].w[7]"  1;
	setAttr ".wl[31].w[10]"  1;
	setAttr ".wl[32].w[10]"  1;
	setAttr ".wl[33].w[10]"  1;
	setAttr ".wl[34].w[8]"  1;
	setAttr ".wl[35].w[8]"  1;
	setAttr -s 4 ".wl[36].w";
	setAttr ".wl[36].w[0]" 2.3569462544952815e-06;
	setAttr ".wl[36].w[6]" 3.5534768194018077e-05;
	setAttr ".wl[36].w[7]" 0.99829469158147721;
	setAttr ".wl[36].w[8]" 0.0016674167040741663;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[0]" 4.5994347955010679e-06;
	setAttr ".wl[37].w[9]" 6.9457234911364066e-05;
	setAttr ".wl[37].w[10]" 0.50425383658743428;
	setAttr ".wl[37].w[11]" 0.49567210674285889;
	setAttr ".wl[38].w[11]"  1;
	setAttr ".wl[39].w[11]"  1;
	setAttr -s 4 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.48157191968253121;
	setAttr ".wl[40].w[1]" 0.51788555991054275;
	setAttr ".wl[40].w[2]" 0.00026282095170071962;
	setAttr ".wl[40].w[4]" 0.00027969945522532869;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.65142463629039538;
	setAttr ".wl[41].w[1]" 0.23686444741715781;
	setAttr ".wl[41].w[6]" 0.055604928782151196;
	setAttr ".wl[41].w[9]" 0.056105987510295642;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.38253962057309332;
	setAttr ".wl[42].w[1]" 0.61347089553594913;
	setAttr ".wl[42].w[2]" 0.0019274249239025956;
	setAttr ".wl[42].w[4]" 0.0020620589670549364;
	setAttr ".wl[43].w[4]"  1;
	setAttr ".wl[44].w[2]"  1;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[1]" 0.075493086145480198;
	setAttr ".wl[45].w[2]" 0.00028017826635173728;
	setAttr ".wl[45].w[4]" 0.92420041561126709;
	setAttr ".wl[45].w[5]" 2.6319976900967441e-05;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.067392984229771219;
	setAttr ".wl[46].w[2]" 2.4564558022753121e-05;
	setAttr ".wl[46].w[4]" 0.93257486820220947;
	setAttr ".wl[46].w[11]" 7.583009996551999e-06;
	setAttr ".wl[47].w[2]"  1;
	setAttr ".wl[48].w[2]"  1;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.48254154163186203;
	setAttr ".wl[49].w[1]" 0.50727300662841746;
	setAttr ".wl[49].w[2]" 0.0049424822619937546;
	setAttr ".wl[49].w[4]" 0.0052429694777267246;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.90495305090758305;
	setAttr ".wl[50].w[1]" 0.0079981733874009767;
	setAttr ".wl[50].w[6]" 0.044872076071929383;
	setAttr ".wl[50].w[9]" 0.04217669963308672;
	setAttr -s 4 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.030487385602581709;
	setAttr ".wl[51].w[1]" 0.95218139795532253;
	setAttr ".wl[51].w[2]" 0.0045771334747767385;
	setAttr ".wl[51].w[4]" 0.0127540829673191;
	setAttr -s 4 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.031260361700299048;
	setAttr ".wl[52].w[1]" 0.95110378525072725;
	setAttr ".wl[52].w[2]" 0.012337410042989229;
	setAttr ".wl[52].w[4]" 0.0052984430059845331;
	setAttr -s 4 ".wl[53].w[2:5]"  0.082711800866285295 0.91718339920043945 
		5.2399966637631393e-05 5.2399966637631393e-05;
	setAttr -s 4 ".wl[54].w[2:5]"  0.082934266938043483 0.91684973239898682 
		0.00010800033148484516 0.00010800033148484516;
	setAttr -s 4 ".wl[55].w[2:5]"  0.49997265729039198 0.4999726572903922 
		2.7342709607881559e-05 2.7342709607881559e-05;
	setAttr -s 4 ".wl[56].w[2:5]"  3.1335013464940498e-05 3.1335013464940498e-05 
		0.082626913274614314 0.91731041669845581;
	setAttr -s 4 ".wl[57].w[2:5]"  1.7654892890427263e-06 1.7654892890427263e-06 
		0.082507178783995161 0.91748929023742676;
	setAttr -s 4 ".wl[58].w[2:5]"  8.9726275947580339e-05 8.9726275947580339e-05 
		0.082861380921310401 0.91695916652679443;
	setAttr ".wl[59].w[6]"  1;
	setAttr ".wl[60].w[9]"  1;
	setAttr ".wl[61].w[8]"  1;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[0]" 6.557318173322087e-05;
	setAttr ".wl[62].w[6]" 0.00030156874925550659;
	setAttr ".wl[62].w[7]" 0.49981642903450563;
	setAttr ".wl[62].w[8]" 0.49981642903450563;
	setAttr ".wl[63].w[8]"  1;
	setAttr ".wl[64].w[11]"  1;
	setAttr ".wl[65].w[11]"  1;
	setAttr ".wl[66].w[11]"  1;
	setAttr ".wl[67].w[8]"  1;
	setAttr ".wl[68].w[8]"  1;
	setAttr ".wl[69].w[8]"  1;
	setAttr ".wl[70].w[8]"  1;
	setAttr ".wl[71].w[8]"  1;
	setAttr ".wl[72].w[8]"  1;
	setAttr -s 4 ".wl[73].w";
	setAttr ".wl[73].w[0]" 4.5994347955010679e-06;
	setAttr ".wl[73].w[9]" 6.9457234911364066e-05;
	setAttr ".wl[73].w[10]" 0.50425383658743428;
	setAttr ".wl[73].w[11]" 0.49567210674285889;
	setAttr ".wl[74].w[11]"  1;
	setAttr ".wl[75].w[11]"  1;
	setAttr ".wl[76].w[11]"  1;
	setAttr ".wl[77].w[11]"  1;
	setAttr ".wl[78].w[11]"  1;
	setAttr ".wl[79].w[8]"  1;
	setAttr ".wl[80].w[8]"  1;
	setAttr ".wl[81].w[8]"  1;
	setAttr ".wl[82].w[8]"  1;
	setAttr ".wl[83].w[8]"  1;
	setAttr ".wl[84].w[8]"  1;
	setAttr -s 4 ".wl[85].w";
	setAttr ".wl[85].w[0]" 4.5994347955010679e-06;
	setAttr ".wl[85].w[9]" 6.9457234911364066e-05;
	setAttr ".wl[85].w[10]" 0.50425383658743428;
	setAttr ".wl[85].w[11]" 0.49567210674285889;
	setAttr ".wl[86].w[11]"  1;
	setAttr ".wl[87].w[11]"  1;
	setAttr ".wl[88].w[11]"  1;
	setAttr ".wl[89].w[11]"  1;
	setAttr ".wl[90].w[11]"  1;
	setAttr ".wl[91].w[12]"  1;
	setAttr ".wl[92].w[12]"  1;
	setAttr ".wl[93].w[12]"  1;
	setAttr ".wl[94].w[12]"  1;
	setAttr ".wl[95].w[12]"  1;
	setAttr ".wl[96].w[12]"  1;
	setAttr ".wl[97].w[12]"  1;
	setAttr ".wl[98].w[12]"  1;
	setAttr ".wl[99].w[12]"  1;
	setAttr ".wl[100].w[12]"  1;
	setAttr ".wl[101].w[12]"  1;
	setAttr ".wl[102].w[12]"  1;
	setAttr ".wl[103].w[12]"  1;
	setAttr ".wl[104].w[12]"  1;
	setAttr ".wl[105].w[12]"  1;
	setAttr ".wl[106].w[12]"  1;
	setAttr ".wl[107].w[12]"  1;
	setAttr ".wl[108].w[12]"  1;
	setAttr ".wl[109].w[12]"  1;
	setAttr ".wl[110].w[12]"  1;
	setAttr ".wl[111].w[12]"  1;
	setAttr ".wl[112].w[12]"  1;
	setAttr ".wl[113].w[12]"  1;
	setAttr ".wl[114].w[12]"  1;
	setAttr ".wl[115].w[12]"  1;
	setAttr ".wl[116].w[12]"  1;
	setAttr ".wl[117].w[12]"  1;
	setAttr ".wl[118].w[12]"  1;
	setAttr ".wl[119].w[12]"  1;
	setAttr ".wl[120].w[12]"  1;
	setAttr ".wl[121].w[12]"  1;
	setAttr ".wl[122].w[12]"  1;
	setAttr ".wl[123].w[12]"  1;
	setAttr ".wl[124].w[12]"  1;
	setAttr ".wl[125].w[12]"  1;
	setAttr ".wl[126].w[12]"  1;
	setAttr ".wl[127].w[12]"  1;
	setAttr ".wl[128].w[12]"  1;
	setAttr ".wl[129].w[12]"  1;
	setAttr ".wl[130].w[12]"  1;
	setAttr ".wl[131].w[12]"  1;
	setAttr ".wl[132].w[12]"  1;
	setAttr ".wl[133].w[12]"  1;
	setAttr -s 4 ".wl[134].w";
	setAttr ".wl[134].w[0]" 0.068855293148122929;
	setAttr ".wl[134].w[6]" 0.0089988475552821891;
	setAttr ".wl[134].w[9]" 0.002809182698999671;
	setAttr ".wl[134].w[12]" 0.91933667659759521;
	setAttr -s 4 ".wl[135].w";
	setAttr ".wl[135].w[0]" 0.18222581065439256;
	setAttr ".wl[135].w[6]" 0.039595654508358835;
	setAttr ".wl[135].w[9]" 0.0088207939581897727;
	setAttr ".wl[135].w[12]" 0.76935774087905884;
	setAttr ".wl[136].w[12]"  1;
	setAttr ".wl[137].w[12]"  1;
	setAttr ".wl[138].w[12]"  1;
	setAttr ".wl[139].w[12]"  1;
	setAttr ".wl[140].w[12]"  1;
	setAttr ".wl[141].w[12]"  1;
	setAttr ".wl[142].w[12]"  1;
	setAttr ".wl[143].w[12]"  1;
	setAttr ".wl[144].w[12]"  1;
	setAttr ".wl[145].w[12]"  1;
	setAttr -s 13 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 0.99999999999999978 0 -0 -0.99999999999999978 2.2204460492503121e-16 -0 0
		 0 -0 1 -0 2.8508393465191202 0.00034187308612890736 -0 1;
	setAttr ".pm[1]" -type "matrix" 0.33849962412708318 0.94096652675099068 0 -0 -0.94096652675099068 0.33849962412708318 -0 0
		 0 -0 1 -0 2.0099395895121961 -0.72268449849103711 -0 1;
	setAttr ".pm[2]" -type "matrix" -0.020729272663986321 -0.99978512554189447 -1.2243836538300158e-16 0
		 -0.99978512554189447 0.020729272663986321 2.5386037416603545e-18 0 -3.85185988877447e-34 1.2246467991473532e-16 -1 -0
		 0.99681734351539752 0.39185244302969263 4.7988084009438366e-17 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999978 -1.7347234759768064e-16 -2.6314531733714665e-20 -0
		 2.8449465006019622e-16 0.99999999999999978 -2.5386037416603888e-18 0 2.6314531733740479e-20 2.5386037416603773e-18 1 -0
		 -0.38544988767179644 0.30006480504675515 -7.5160270353139959e-19 1;
	setAttr ".pm[4]" -type "matrix" 0.0084742719721410103 0.99996409271260434 0 -0 -0.99996409271260434 0.0084742719721410103 -0 0
		 0 -0 1 -0 1.0043780288145909 0.38386139387933843 -0 1;
	setAttr ".pm[5]" -type "matrix" 0.32409591722790271 0.94602422613599291 0 -0 -0.94602422613599291 0.32409591722790271 -0 0
		 0 -0 1 -0 -0.19888571376764624 0.46554826341950978 -0 1;
	setAttr ".pm[6]" -type "matrix" 0.62331200257645358 0.78197323959591503 0 -0 -0.78197323959591503 0.62331200257645358 -0 0
		 0 -0 1 -0 2.0453860830889825 -2.2765217450422739 -0 1;
	setAttr ".pm[7]" -type "matrix" 0.55470019622522948 0.83205029433784328 0 -0 -0.83205029433784328 0.55470019622522948 -0 0
		 0 -0 1 -0 1.4767180148123031 -2.1589871211965552 -0 1;
	setAttr ".pm[8]" -type "matrix" 2.7755575615628889e-16 0.99999999999999956 0 -0 -0.99999999999999956 2.7755575615628889e-16 -0 0
		 0 -0 1 -0 1.5767217631948507 -1.5436317473836207 -0 1;
	setAttr ".pm[9]" -type "matrix" -0.63004085686759748 -0.77656198637168905 -9.5101415094959956e-17 0
		 -0.77656198637168894 0.63004085686759748 7.7157751869495899e-17 0 0 1.2246467991473532e-16 -1 -0
		 2.0040582470399757 -2.2911375779255265 -2.8058343012127158e-16 1;
	setAttr ".pm[10]" -type "matrix" -0.5279341211256221 -0.84928532528904377 -9.5101415094959968e-17 -0
		 -0.84928532528904366 0.5279341211256221 7.7157751869495911e-17 0 -1.5321664399095492e-17 1.215024461756226e-16 -1 -0
		 1.510334809694819 -2.1188263704974464 -2.8058343012127158e-16 1;
	setAttr ".pm[11]" -type "matrix" 2.7755575615628904e-16 0.99999999999999978 -2.7363264819775374e-17 -0
		 -0.99999999999999978 2.7755575615628904e-16 -7.7157751869495924e-17 0 -7.7157751869495911e-17 2.7363264819775392e-17 1 -0
		 1.5656926109729898 1.521566168037509 7.9170303984535947e-17 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503121e-16 0.99999999999999978 0 -0
		 -0.99999999999999978 2.2204460492503121e-16 -0 0 0 -0 1 -0 3.8442371433422604 0.0092127276022309391 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 13 ".ma";
	setAttr -s 13 ".dpf[0:12]"  4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 13 ".lw";
	setAttr -s 13 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 13 ".ifcl";
	setAttr -s 13 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "D02D99FB-2D41-3071-DBB8-6593D4554102";
	setAttr -s 75 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[2]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[3]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[4]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[6]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[7]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[8]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[9]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[10]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[11]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[12]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[91]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[92]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[93]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[94]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[95]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[96]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[97]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[98]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[99]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[100]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[101]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[102]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[103]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[104]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[105]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[106]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[107]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[108]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[109]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[110]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[111]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[112]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[113]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[114]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[115]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[116]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[117]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[118]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[119]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[120]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[121]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[122]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[123]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[124]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[125]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[126]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[127]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[128]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[129]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[130]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[131]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[132]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[133]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[134]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[135]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[136]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[137]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[138]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[139]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[140]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[141]" -type "float3" -2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[142]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[143]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[144]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
	setAttr ".vl[0].vt[145]" -type "float3" 2.9802322e-08 -8.9406967e-08 0 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "73D00390-2F4C-3663-2836-BEB74E3BE190";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "93E779BE-A142-68A6-6D52-9FB0E551632E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "43893F6C-824B-DF39-7BB5-9F9A7D60875D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "FD353B50-5B4C-1E65-EF83-A4A3E5940602";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "61DAFBA0-F845-8EAC-CD73-F1A6926FE96A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "D7334BB1-F543-C8FA-B56F-26BB77137526";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "61D85572-0240-19DB-BB1F-08AC57382432";
	setAttr -s 13 ".wm";
	setAttr -s 13 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.00034187308612954048
		 2.8508393465191211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.714925040894831 -1.0323409702524674e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.17180435566220226 0.98513108943708372 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2194206023384595 -3.4694469519536142e-18
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98329738280778334 -0.1820062003431849 -1.1144665533762664e-17 6.0209599623276079e-17 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2888275764799202 0.00026525353295623022
		 3.2484189009733431e-20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69973949700442573 0.71439809373485397 4.2846686762172443e-17 4.3744266940467985e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.93513496455046663 -0.75301291152811634
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.16762864153717033 0.98585021100388415 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3402128466743468 0.0050399480412073854
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.16009882273166201 0.98710099126681861 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.16758116290951452 0.5056072615751801
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.33017174349426431 0.94392087581425899 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.75722063210317869 -1.6653345369377348e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.042471435643276621 0.99909768148785083 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0210590408303317 -1.6653345369377348e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28978414868843017 0.95709202648905278 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.14894638940455929 -0.51622990030089599
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.942486601064357 -0.33424393309999739 -2.0466538140266693e-17 5.7710659961636656e-17 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.770678733382959 -5.5511151231257827e-16
		 -6.1629758220391547e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.06267868359173244 0.99803375825831031 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.98390174893933491 -3.8857805861880479e-16
		 -1.5075012398931647e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.96158341429359206 0.27451290926926947 -1.6809067783061933e-17 5.8880002521391536e-17 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.99339779682313978
		 -0.0088708545161020318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 13 ".m";
	setAttr -s 13 ".p";
	setAttr ".bp" yes;
createNode lambert -n "lambert2";
	rename -uid "A4B261F3-CF44-0057-184D-528DCEACB5B7";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "ECD9E7B2-7649-68F0-6F28-698D47276BA7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EC3BE72A-AD41-0F0C-A327-9B931AFC42F4";
createNode groupId -n "groupId27";
	rename -uid "0993E0F7-A24B-20DD-A197-08B07605199E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "F01702F8-E24F-91A8-0653-D28C1143965A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[25:31]" "f[33:43]" "f[45:48]" "f[50:53]" "f[55:65]" "f[67:72]" "f[78]" "f[86]" "f[90]" "f[97]" "f[129:130]";
createNode lambert -n "lambert3";
	rename -uid "CC665AE5-C244-B17F-57AF-5690D7D36BC7";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "61209ACD-7041-7B35-1A02-A29AF81A9707";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CBFE8763-594A-AF97-079F-85B832271106";
createNode groupId -n "groupId28";
	rename -uid "CBC878C5-9F43-86B9-500D-7CA8D8E7C55A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "5986BE0B-8D49-E2A4-81F2-009685B704E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[119:120]";
	setAttr ".irc" -type "componentList" 10 "f[25:31]" "f[33:43]" "f[45:48]" "f[50:53]" "f[55:65]" "f[67:72]" "f[78]" "f[86]" "f[90]" "f[97]";
createNode lambert -n "lambert4";
	rename -uid "CED96AEE-4247-31B8-5D91-AA81FFBFBAE3";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "35682E55-B84F-98B0-F450-8698AC2509B8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "4CA5DA86-9449-6520-466B-D9960735667F";
createNode groupId -n "groupId29";
	rename -uid "CC521777-EE41-E77D-AF45-7EAC35EFDC1F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "BDFD9BE3-8E45-E72F-44CF-BD9A94488505";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[131:132]";
createNode lambert -n "lambert5";
	rename -uid "C4CAA131-5347-E9E0-093D-00AB6112494B";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "EBD1535D-9443-385E-5462-1EB28762D8A9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "0D7879E6-474F-B0DE-01AC-B1A7A5EB6F74";
createNode groupId -n "groupId30";
	rename -uid "D860F1B9-5A4B-82C3-4F57-83AA470C9330";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "F6711E67-5740-074B-E1FC-BCA45718F8B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[114]" "f[116:117]";
createNode lambert -n "lambert6";
	rename -uid "5BA2B1F3-0541-6E75-7754-C2A32288BB89";
	setAttr ".c" -type "float3" 0.7058 0.81129998 1 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "183FA7D2-464A-CC8E-A1E7-64AC7E7FFAA8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "AEE022C4-D54A-BDCA-079C-13BFE9F9494E";
createNode groupId -n "groupId31";
	rename -uid "27AD45AF-0541-CF6C-5B3C-02B55FAC46C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "B31801E0-1548-AD2F-8028-6D8C08F8EA6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[2:7]" "f[99:100]" "f[103:104]" "f[106:109]" "f[111:112]" "f[121:128]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId16.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId17.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId18.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId19.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "pPlane4_scaleX.o" "pPlane4.sx";
connectAttr "pPlane4_scaleY.o" "pPlane4.sy";
connectAttr "pPlane4_scaleZ.o" "pPlane4.sz";
connectAttr "pPlane4_visibility.o" "pPlane4.v";
connectAttr "pPlane4_translateX.o" "pPlane4.tx";
connectAttr "pPlane4_translateY.o" "pPlane4.ty";
connectAttr "pPlane4_translateZ.o" "pPlane4.tz";
connectAttr "pPlane4_rotateX.o" "pPlane4.rx";
connectAttr "pPlane4_rotateY.o" "pPlane4.ry";
connectAttr "pPlane4_rotateZ.o" "pPlane4.rz";
connectAttr "groupId14.id" "pPlane4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlane4Shape.iog.og[0].gco";
connectAttr "pPlane5_scaleX.o" "pPlane5.sx";
connectAttr "pPlane5_scaleY.o" "pPlane5.sy";
connectAttr "pPlane5_scaleZ.o" "pPlane5.sz";
connectAttr "pPlane5_visibility.o" "pPlane5.v";
connectAttr "pPlane5_translateX.o" "pPlane5.tx";
connectAttr "pPlane5_translateY.o" "pPlane5.ty";
connectAttr "pPlane5_translateZ.o" "pPlane5.tz";
connectAttr "pPlane5_rotateX.o" "pPlane5.rx";
connectAttr "pPlane5_rotateY.o" "pPlane5.ry";
connectAttr "pPlane5_rotateZ.o" "pPlane5.rz";
connectAttr "groupId20.id" "pPlaneShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape3.iog.og[0].gco";
connectAttr "groupId21.id" "pPlaneShape3.ciog.cog[0].cgid";
connectAttr "pPlane6_scaleX.o" "pPlane6.sx";
connectAttr "pPlane6_scaleY.o" "pPlane6.sy";
connectAttr "pPlane6_scaleZ.o" "pPlane6.sz";
connectAttr "pPlane6_visibility.o" "pPlane6.v";
connectAttr "pPlane6_translateX.o" "pPlane6.tx";
connectAttr "pPlane6_translateY.o" "pPlane6.ty";
connectAttr "pPlane6_translateZ.o" "pPlane6.tz";
connectAttr "pPlane6_rotateX.o" "pPlane6.rx";
connectAttr "pPlane6_rotateY.o" "pPlane6.ry";
connectAttr "pPlane6_rotateZ.o" "pPlane6.rz";
connectAttr "groupId22.id" "pPlaneShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape6.iog.og[0].gco";
connectAttr "groupId23.id" "pPlaneShape6.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pPlane8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlane8Shape.iog.og[0].gco";
connectAttr "groupParts9.og" "group4Shape.i";
connectAttr "groupId24.id" "group4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group4Shape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "group4Shape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "group4Shape.iog.og[1].gco";
connectAttr "groupId26.id" "group4Shape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "group4Shape.iog.og[2].gco";
connectAttr "groupId27.id" "group4Shape.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "group4Shape.iog.og[3].gco";
connectAttr "groupId28.id" "group4Shape.iog.og[4].gid";
connectAttr "lambert3SG.mwc" "group4Shape.iog.og[4].gco";
connectAttr "groupId29.id" "group4Shape.iog.og[5].gid";
connectAttr "lambert4SG.mwc" "group4Shape.iog.og[5].gco";
connectAttr "groupId30.id" "group4Shape.iog.og[6].gid";
connectAttr "lambert5SG.mwc" "group4Shape.iog.og[6].gco";
connectAttr "groupId31.id" "group4Shape.iog.og[7].gid";
connectAttr "lambert6SG.mwc" "group4Shape.iog.og[7].gco";
connectAttr "tweak1.vl[0].vt[0]" "group4Shape.twl";
connectAttr "groupParts2.og" "group4ShapeOrig.i";
connectAttr "joint1.s" "hips.is";
connectAttr "hips.s" "leftKnee.is";
connectAttr "leftKnee.s" "leftFoot.is";
connectAttr "hips.s" "rightKnee.is";
connectAttr "rightKnee.s" "rightFoot.is";
connectAttr "joint1.s" "leftShoulder.is";
connectAttr "leftShoulder.s" "leftElbow.is";
connectAttr "leftElbow.s" "leftHand.is";
connectAttr "joint1.s" "rightShoulder.is";
connectAttr "rightShoulder.s" "rightElbow.is";
connectAttr "rightElbow.s" "rightHand.is";
connectAttr "joint1.s" "head.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pPlane4Shape.o" "polyUnite1.ip[2]";
connectAttr "pPlaneShape3.o" "polyUnite1.ip[3]";
connectAttr "pPlaneShape6.o" "polyUnite1.ip[4]";
connectAttr "pPlane8Shape.o" "polyUnite1.ip[5]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "pPlane4Shape.wm" "polyUnite1.im[2]";
connectAttr "pPlaneShape3.wm" "polyUnite1.im[3]";
connectAttr "pPlaneShape6.wm" "polyUnite1.im[4]";
connectAttr "pPlane8Shape.wm" "polyUnite1.im[5]";
connectAttr "polyExtrudeFace3.out" "groupParts1.ig";
connectAttr "groupId18.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId24.id" "groupParts2.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "hips.wm" "skinCluster1.ma[1]";
connectAttr "leftKnee.wm" "skinCluster1.ma[2]";
connectAttr "leftFoot.wm" "skinCluster1.ma[3]";
connectAttr "rightKnee.wm" "skinCluster1.ma[4]";
connectAttr "rightFoot.wm" "skinCluster1.ma[5]";
connectAttr "leftShoulder.wm" "skinCluster1.ma[6]";
connectAttr "leftElbow.wm" "skinCluster1.ma[7]";
connectAttr "leftHand.wm" "skinCluster1.ma[8]";
connectAttr "rightShoulder.wm" "skinCluster1.ma[9]";
connectAttr "rightElbow.wm" "skinCluster1.ma[10]";
connectAttr "rightHand.wm" "skinCluster1.ma[11]";
connectAttr "head.wm" "skinCluster1.ma[12]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "hips.liw" "skinCluster1.lw[1]";
connectAttr "leftKnee.liw" "skinCluster1.lw[2]";
connectAttr "leftFoot.liw" "skinCluster1.lw[3]";
connectAttr "rightKnee.liw" "skinCluster1.lw[4]";
connectAttr "rightFoot.liw" "skinCluster1.lw[5]";
connectAttr "leftShoulder.liw" "skinCluster1.lw[6]";
connectAttr "leftElbow.liw" "skinCluster1.lw[7]";
connectAttr "leftHand.liw" "skinCluster1.lw[8]";
connectAttr "rightShoulder.liw" "skinCluster1.lw[9]";
connectAttr "rightElbow.liw" "skinCluster1.lw[10]";
connectAttr "rightHand.liw" "skinCluster1.lw[11]";
connectAttr "head.liw" "skinCluster1.lw[12]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "hips.obcc" "skinCluster1.ifcl[1]";
connectAttr "leftKnee.obcc" "skinCluster1.ifcl[2]";
connectAttr "leftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "rightKnee.obcc" "skinCluster1.ifcl[4]";
connectAttr "rightFoot.obcc" "skinCluster1.ifcl[5]";
connectAttr "leftShoulder.obcc" "skinCluster1.ifcl[6]";
connectAttr "leftElbow.obcc" "skinCluster1.ifcl[7]";
connectAttr "leftHand.obcc" "skinCluster1.ifcl[8]";
connectAttr "rightShoulder.obcc" "skinCluster1.ifcl[9]";
connectAttr "rightElbow.obcc" "skinCluster1.ifcl[10]";
connectAttr "rightHand.obcc" "skinCluster1.ifcl[11]";
connectAttr "head.obcc" "skinCluster1.ifcl[12]";
connectAttr "head.msg" "skinCluster1.ptt";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId26.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "group4Shape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet1.gn" -na;
connectAttr "group4Shape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "group4ShapeOrig.w" "groupParts4.ig";
connectAttr "groupId26.id" "groupParts4.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "hips.msg" "bindPose1.m[1]";
connectAttr "leftKnee.msg" "bindPose1.m[2]";
connectAttr "leftFoot.msg" "bindPose1.m[3]";
connectAttr "rightKnee.msg" "bindPose1.m[4]";
connectAttr "rightFoot.msg" "bindPose1.m[5]";
connectAttr "leftShoulder.msg" "bindPose1.m[6]";
connectAttr "leftElbow.msg" "bindPose1.m[7]";
connectAttr "leftHand.msg" "bindPose1.m[8]";
connectAttr "rightShoulder.msg" "bindPose1.m[9]";
connectAttr "rightElbow.msg" "bindPose1.m[10]";
connectAttr "rightHand.msg" "bindPose1.m[11]";
connectAttr "head.msg" "bindPose1.m[12]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[1]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[0]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[0]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[0]" "bindPose1.p[12]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "hips.bps" "bindPose1.wm[1]";
connectAttr "leftKnee.bps" "bindPose1.wm[2]";
connectAttr "leftFoot.bps" "bindPose1.wm[3]";
connectAttr "rightKnee.bps" "bindPose1.wm[4]";
connectAttr "rightFoot.bps" "bindPose1.wm[5]";
connectAttr "leftShoulder.bps" "bindPose1.wm[6]";
connectAttr "leftElbow.bps" "bindPose1.wm[7]";
connectAttr "leftHand.bps" "bindPose1.wm[8]";
connectAttr "rightShoulder.bps" "bindPose1.wm[9]";
connectAttr "rightElbow.bps" "bindPose1.wm[10]";
connectAttr "rightHand.bps" "bindPose1.wm[11]";
connectAttr "head.bps" "bindPose1.wm[12]";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "groupId27.msg" "lambert2SG.gn" -na;
connectAttr "group4Shape.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "skinCluster1.og[0]" "groupParts5.ig";
connectAttr "groupId27.id" "groupParts5.gi";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "groupId28.msg" "lambert3SG.gn" -na;
connectAttr "group4Shape.iog.og[4]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId28.id" "groupParts6.gi";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "groupId29.msg" "lambert4SG.gn" -na;
connectAttr "group4Shape.iog.og[5]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId29.id" "groupParts7.gi";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "groupId30.msg" "lambert5SG.gn" -na;
connectAttr "group4Shape.iog.og[6]" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId30.id" "groupParts8.gi";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "groupId31.msg" "lambert6SG.gn" -na;
connectAttr "group4Shape.iog.og[7]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId31.id" "groupParts9.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlane4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlane8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "group4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
// End of me.ma

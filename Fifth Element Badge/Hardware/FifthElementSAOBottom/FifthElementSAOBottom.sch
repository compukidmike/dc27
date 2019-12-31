EESchema Schematic File Version 4
LIBS:FifthElementSAOBottom-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L badgelife_shitty_addon_v169bis:Badgelife_sao_connector_v169bis X1
U 1 1 5CC14CB9
P 5500 2900
F 0 "X1" V 5035 2900 50  0000 C CNN
F 1 "Badgelife_sao_connector_v169bis" V 5126 2900 50  0000 C CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-SAO-2x3" H 5500 3100 50  0001 C CNN
F 3 "" H 5500 3100 50  0001 C CNN
	1    5500 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5CC158E9
P 6450 2950
F 0 "R2" H 6518 2996 50  0000 L CNN
F 1 "R_US" H 6518 2905 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6490 2940 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5CC16972
P 6450 3400
F 0 "R3" H 6518 3446 50  0000 L CNN
F 1 "R_US" H 6518 3355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6490 3390 50  0001 C CNN
F 3 "~" H 6450 3400 50  0001 C CNN
	1    6450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5CC1701B
P 7200 2900
F 0 "BT1" H 7318 2996 50  0000 L CNN
F 1 "Battery_Cell" H 7318 2905 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 7200 2960 50  0001 C CNN
F 3 "~" V 7200 2960 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 5CC17D10
P 8000 2900
F 0 "BT2" H 8118 2996 50  0000 L CNN
F 1 "Battery_Cell" H 8118 2905 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 8000 2960 50  0001 C CNN
F 3 "~" V 8000 2960 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 5CC17F2D
P 8750 2900
F 0 "BT3" H 8868 2996 50  0000 L CNN
F 1 "Battery_Cell" H 8868 2905 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 8750 2960 50  0001 C CNN
F 3 "~" V 8750 2960 50  0001 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2700 6450 2700
Wire Wire Line
	7200 2700 8000 2700
Wire Wire Line
	8000 2700 8750 2700
Connection ~ 8000 2700
Wire Wire Line
	6450 2700 6450 2800
Wire Wire Line
	6050 3100 6450 3100
Wire Wire Line
	6450 3100 6450 3250
Connection ~ 6450 3100
Wire Wire Line
	6450 3550 4700 3550
Wire Wire Line
	4700 3550 4700 2700
Wire Wire Line
	4700 2700 4950 2700
Wire Wire Line
	6450 3550 7200 3550
Wire Wire Line
	7200 3550 7200 3000
Connection ~ 6450 3550
Wire Wire Line
	7200 3550 8000 3550
Wire Wire Line
	8000 3550 8000 3000
Connection ~ 7200 3550
Wire Wire Line
	8000 3550 8750 3550
Wire Wire Line
	8750 3550 8750 3000
Connection ~ 8000 3550
$Comp
L Device:R_US R1
U 1 1 5CC481AC
P 6850 2700
F 0 "R1" H 6918 2746 50  0000 L CNN
F 1 "R_US" H 6918 2655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6890 2690 50  0001 C CNN
F 3 "~" H 6850 2700 50  0001 C CNN
	1    6850 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2700 6700 2700
Connection ~ 6450 2700
Wire Wire Line
	7000 2700 7200 2700
Connection ~ 7200 2700
$EndSCHEMATC

EESchema Schematic File Version 4
LIBS:FifthElementFireSAO-cache
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
L Device:LED D1
U 1 1 5CBD03EA
P 2800 2700
F 0 "D1" H 2793 2916 50  0000 C CNN
F 1 "LED" H 2793 2825 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 2800 2700 50  0001 C CNN
F 3 "~" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 5CBD2690
P 5300 3400
F 0 "BT3" H 5418 3496 50  0000 L CNN
F 1 "Battery_Cell" H 5418 3405 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 5300 3460 50  0001 C CNN
F 3 "~" V 5300 3460 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5CBD297B
P 2800 3200
F 0 "D2" H 2793 3416 50  0000 C CNN
F 1 "LED" H 2793 3325 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5CBD307E
P 2800 3750
F 0 "D3" H 2793 3966 50  0000 C CNN
F 1 "LED" H 2793 3875 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5CBD3445
P 4250 3400
F 0 "BT1" H 4368 3496 50  0000 L CNN
F 1 "Battery_Cell" H 4368 3405 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 4250 3460 50  0001 C CNN
F 3 "~" V 4250 3460 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 5CBD36BE
P 4850 3400
F 0 "BT2" H 4968 3496 50  0000 L CNN
F 1 "Battery_Cell" H 4968 3405 50  0000 L CNN
F 2 "FifthElementB2BConnector:FifthElementB2BBottomConnector" V 4850 3460 50  0001 C CNN
F 3 "~" V 4850 3460 50  0001 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2700 2950 3200
Connection ~ 2950 3200
Wire Wire Line
	2950 3750 2950 3200
Wire Wire Line
	4250 3200 4850 3200
Connection ~ 4250 3200
Wire Wire Line
	5300 3200 4850 3200
Connection ~ 4850 3200
Wire Wire Line
	5300 3500 4850 3500
Wire Wire Line
	4850 3500 4250 3500
Connection ~ 4850 3500
Wire Wire Line
	4250 3500 4250 4000
Wire Wire Line
	4250 4000 2650 4000
Wire Wire Line
	2650 4000 2650 3750
Connection ~ 4250 3500
Wire Wire Line
	2650 3200 2650 3750
Connection ~ 2650 3750
Wire Wire Line
	2650 2700 2650 3200
Connection ~ 2650 3200
Wire Wire Line
	2950 3200 4250 3200
$EndSCHEMATC

EESchema Schematic File Version 4
LIBS:ScrewdriverBadge-cache
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
L atmel:ATTINY84A-SSU U1
U 1 1 5A923501
P 4450 3350
F 0 "U1" H 3600 4100 50  0000 C CNN
F 1 "ATTINY84A-SSU" H 5100 2600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4450 3150 50  0001 C CIN
F 3 "" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5A9240C2
P 6500 3150
F 0 "R2" V 6580 3150 50  0000 C CNN
F 1 "10k" V 6500 3150 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 6430 3150 50  0001 C CNN
F 3 "" H 6500 3150 50  0001 C CNN
	1    6500 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5A924165
P 6750 3250
F 0 "R3" V 6830 3250 50  0000 C CNN
F 1 "10k" V 6750 3250 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 6680 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5A92419E
P 7000 3350
F 0 "R4" V 7080 3350 50  0000 C CNN
F 1 "10k" V 7000 3350 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 6930 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    7000 3350
	0    1    1    0   
$EndComp
$Comp
L ScrewdriverBadge-rescue:TEST TP1
U 1 1 5A9241C1
P 6750 3150
F 0 "TP1" H 6750 3450 50  0000 C BNN
F 1 "SLIDER1" H 6750 3400 50  0000 C CNN
F 2 "ScrewdriverBadge:TestPad-SMD-1mm-Tented" H 6750 3150 50  0001 C CNN
F 3 "" H 6750 3150 50  0001 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
$Comp
L ScrewdriverBadge-rescue:TEST TP2
U 1 1 5A924210
P 7000 3250
F 0 "TP2" H 7000 3550 50  0000 C BNN
F 1 "SLIDER2" H 7000 3500 50  0000 C CNN
F 2 "ScrewdriverBadge:TestPad-SMD-1mm-Tented" H 7000 3250 50  0001 C CNN
F 3 "" H 7000 3250 50  0001 C CNN
	1    7000 3250
	1    0    0    -1  
$EndComp
$Comp
L ScrewdriverBadge-rescue:TEST TP3
U 1 1 5A92425B
P 7250 3350
F 0 "TP3" H 7250 3650 50  0000 C BNN
F 1 "SLIDER3" H 7250 3600 50  0000 C CNN
F 2 "ScrewdriverBadge:TestPad-SMD-1mm-Tented" H 7250 3350 50  0001 C CNN
F 3 "" H 7250 3350 50  0001 C CNN
	1    7250 3350
	1    0    0    -1  
$EndComp
$Comp
L atmel:AVR-ISP-6 CON1
U 1 1 5A9242A2
P 4800 4750
F 0 "CON1" H 4695 4990 50  0000 C CNN
F 1 "AVR-ISP-6" H 4535 4520 50  0000 L BNN
F 2 "ScrewdriverBadge:ISP-AVR-6Pin-SMD" V 4280 4790 50  0001 C CNN
F 3 "" H 4775 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5A9245CD
P 8600 3200
F 0 "D4" H 8600 3300 50  0000 C CNN
F 1 "LED" H 8600 3100 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5A9247D2
P 8600 3500
F 0 "D5" H 8600 3600 50  0000 C CNN
F 1 "LED" H 8600 3400 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 3500 50  0001 C CNN
F 3 "" H 8600 3500 50  0001 C CNN
	1    8600 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 5A924828
P 8600 3800
F 0 "D6" H 8600 3900 50  0000 C CNN
F 1 "LED" H 8600 3700 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 3800 50  0001 C CNN
F 3 "" H 8600 3800 50  0001 C CNN
	1    8600 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5A9248B5
P 8600 4100
F 0 "D7" H 8600 4200 50  0000 C CNN
F 1 "LED" H 8600 4000 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 4100 50  0001 C CNN
F 3 "" H 8600 4100 50  0001 C CNN
	1    8600 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5A9248F1
P 8600 4400
F 0 "D8" H 8600 4500 50  0000 C CNN
F 1 "LED" H 8600 4300 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 4400 50  0001 C CNN
F 3 "" H 8600 4400 50  0001 C CNN
	1    8600 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 5A924934
P 8600 4700
F 0 "D9" H 8600 4800 50  0000 C CNN
F 1 "LED" H 8600 4600 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8600 4700 50  0001 C CNN
F 3 "" H 8600 4700 50  0001 C CNN
	1    8600 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5A924C3C
P 5200 5750
F 0 "BZ1" H 5350 5800 50  0000 L CNN
F 1 "Buzzer" H 5350 5700 50  0000 L CNN
F 2 "ScrewdriverBadge:Buzzer-12.6mm-Murata-PKM13EPYH4000" V 5175 5850 50  0001 C CNN
F 3 "" V 5175 5850 50  0001 C CNN
	1    5200 5750
	1    0    0    -1  
$EndComp
Text GLabel 6250 3000 1    60   Input ~ 0
MOSI
Text GLabel 6150 3000 1    60   Input ~ 0
MISO
Text GLabel 5600 3950 2    60   Input ~ 0
RST
Text GLabel 6050 3000 1    60   Input ~ 0
SCK
$Comp
L Device:Battery BT1
U 1 1 5A925C83
P 6100 4950
F 0 "BT1" H 6200 5050 50  0000 L CNN
F 1 "Battery" H 6200 4950 50  0000 L CNN
F 2 "ScrewdriverBadge:Battery-2AA-BC12AAPC" V 6100 5010 50  0001 C CNN
F 3 "" V 6100 5010 50  0001 C CNN
	1    6100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5A925FD2
P 3300 4100
F 0 "#PWR01" H 3300 3850 50  0001 C CNN
F 1 "GND" H 3300 3950 50  0000 C CNN
F 2 "" H 3300 4100 50  0001 C CNN
F 3 "" H 3300 4100 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A92600A
P 6100 5300
F 0 "#PWR02" H 6100 5050 50  0001 C CNN
F 1 "GND" H 6100 5150 50  0000 C CNN
F 2 "" H 6100 5300 50  0001 C CNN
F 3 "" H 6100 5300 50  0001 C CNN
	1    6100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5A926042
P 5050 5000
F 0 "#PWR03" H 5050 4750 50  0001 C CNN
F 1 "GND" H 5050 4850 50  0000 C CNN
F 2 "" H 5050 5000 50  0001 C CNN
F 3 "" H 5050 5000 50  0001 C CNN
	1    5050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5A92607A
P 8900 4850
F 0 "#PWR04" H 8900 4600 50  0001 C CNN
F 1 "GND" H 8900 4700 50  0000 C CNN
F 2 "" H 8900 4850 50  0001 C CNN
F 3 "" H 8900 4850 50  0001 C CNN
	1    8900 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5A9260B2
P 5000 6000
F 0 "#PWR05" H 5000 5750 50  0001 C CNN
F 1 "GND" H 5000 5850 50  0000 C CNN
F 2 "" H 5000 6000 50  0001 C CNN
F 3 "" H 5000 6000 50  0001 C CNN
	1    5000 6000
	1    0    0    -1  
$EndComp
Text GLabel 4350 4650 0    60   Input ~ 0
MISO
Text GLabel 4300 4750 0    60   Input ~ 0
SCK
Text GLabel 4350 4850 0    60   Input ~ 0
RST
Text GLabel 5250 4750 2    60   Input ~ 0
MOSI
$Comp
L power:+BATT #PWR06
U 1 1 5A926391
P 5200 4550
F 0 "#PWR06" H 5200 4400 50  0001 C CNN
F 1 "+BATT" H 5200 4690 50  0000 C CNN
F 2 "" H 5200 4550 50  0001 C CNN
F 3 "" H 5200 4550 50  0001 C CNN
	1    5200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR07
U 1 1 5A9263C9
P 6100 4250
F 0 "#PWR07" H 6100 4100 50  0001 C CNN
F 1 "+BATT" H 6100 4390 50  0000 C CNN
F 2 "" H 6100 4250 50  0001 C CNN
F 3 "" H 6100 4250 50  0001 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR08
U 1 1 5A92646D
P 3300 2700
F 0 "#PWR08" H 3300 2550 50  0001 C CNN
F 1 "+BATT" H 3300 2840 50  0000 C CNN
F 2 "" H 3300 2700 50  0001 C CNN
F 3 "" H 3300 2700 50  0001 C CNN
	1    3300 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5A92671D
P 8200 3200
F 0 "R10" V 8280 3200 50  0000 C CNN
F 1 "100" V 8200 3200 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5A926792
P 8200 3500
F 0 "R11" V 8280 3500 50  0000 C CNN
F 1 "100" V 8200 3500 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 3500 50  0001 C CNN
F 3 "" H 8200 3500 50  0001 C CNN
	1    8200 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5A9267E6
P 8200 3800
F 0 "R12" V 8280 3800 50  0000 C CNN
F 1 "100" V 8200 3800 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 3800 50  0001 C CNN
F 3 "" H 8200 3800 50  0001 C CNN
	1    8200 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5A926841
P 8200 4100
F 0 "R13" V 8280 4100 50  0000 C CNN
F 1 "100" V 8200 4100 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 4100 50  0001 C CNN
F 3 "" H 8200 4100 50  0001 C CNN
	1    8200 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5A92689B
P 8200 4400
F 0 "R14" V 8280 4400 50  0000 C CNN
F 1 "100" V 8200 4400 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 4400 50  0001 C CNN
F 3 "" H 8200 4400 50  0001 C CNN
	1    8200 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5A9268F8
P 8200 4700
F 0 "R15" V 8280 4700 50  0000 C CNN
F 1 "100" V 8200 4700 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8130 4700 50  0001 C CNN
F 3 "" H 8200 4700 50  0001 C CNN
	1    8200 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5A926AEC
P 4850 5650
F 0 "R1" V 4930 5650 50  0000 C CNN
F 1 "10" V 4850 5650 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 4780 5650 50  0001 C CNN
F 3 "" H 4850 5650 50  0001 C CNN
	1    4850 5650
	0    1    1    0   
$EndComp
Text GLabel 5600 2750 2    60   Input ~ 0
IRLED
Text GLabel 5600 2850 2    60   Input ~ 0
LED1
Text GLabel 5600 2950 2    60   Input ~ 0
LED2
Text GLabel 5600 3050 2    60   Input ~ 0
LED3
Text GLabel 5600 3850 2    60   Input ~ 0
BUZZ
Text GLabel 7900 3200 0    60   Input ~ 0
LED1
Text GLabel 7900 3800 0    60   Input ~ 0
LED2
Text GLabel 7900 4400 0    60   Input ~ 0
LED3
Text GLabel 4500 5650 0    60   Input ~ 0
BUZZ
$Comp
L Device:LED D1
U 1 1 5A9297B4
P 7550 1200
F 0 "D1" H 7550 1300 50  0000 C CNN
F 1 "LED" H 7550 1100 50  0000 C CNN
F 2 "ScrewdriverBadge:LED-IR-RA-OSRAM-SFH-4045N" H 7550 1200 50  0001 C CNN
F 3 "" H 7550 1200 50  0001 C CNN
	1    7550 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5A929820
P 7550 1600
F 0 "R7" V 7630 1600 50  0000 C CNN
F 1 "10" V 7550 1600 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 7480 1600 50  0001 C CNN
F 3 "" H 7550 1600 50  0001 C CNN
	1    7550 1600
	-1   0    0    1   
$EndComp
Text GLabel 6650 2050 0    60   Input ~ 0
IRLED
$Comp
L Device:R R6
U 1 1 5A9298E8
P 6950 2050
F 0 "R6" V 7030 2050 50  0000 C CNN
F 1 "100" V 6950 2050 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 6880 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	0    1    1    0   
$EndComp
$Comp
L transistors:BC817 Q1
U 1 1 5A929950
P 7450 2050
F 0 "Q1" H 7650 2125 50  0000 L CNN
F 1 "BC817" H 7650 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7650 1975 50  0001 L CIN
F 3 "" H 7450 2050 50  0001 L CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5A934D06
P 7850 1200
F 0 "D2" H 7850 1300 50  0000 C CNN
F 1 "LED" H 7850 1100 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 7850 1200 50  0001 C CNN
F 3 "" H 7850 1200 50  0001 C CNN
	1    7850 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5A934D82
P 8150 1200
F 0 "D3" H 8150 1300 50  0000 C CNN
F 1 "LED" H 8150 1100 50  0000 C CNN
F 2 "libraries:LTST-S220-LED-RA" H 8150 1200 50  0001 C CNN
F 3 "" H 8150 1200 50  0001 C CNN
	1    8150 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5A934DFD
P 7850 1600
F 0 "R8" V 7930 1600 50  0000 C CNN
F 1 "100" V 7850 1600 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 7780 1600 50  0001 C CNN
F 3 "" H 7850 1600 50  0001 C CNN
	1    7850 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5A934E7B
P 8150 1600
F 0 "R9" V 8230 1600 50  0000 C CNN
F 1 "100" V 8150 1600 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 8080 1600 50  0001 C CNN
F 3 "" H 8150 1600 50  0001 C CNN
	1    8150 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5A935716
P 7300 3450
F 0 "R5" V 7380 3450 50  0000 C CNN
F 1 "10k" V 7300 3450 50  0000 C CNN
F 2 "ScrewdriverBadge:R_0603_Mid" V 7230 3450 50  0001 C CNN
F 3 "" H 7300 3450 50  0001 C CNN
	1    7300 3450
	0    1    1    0   
$EndComp
$Comp
L ScrewdriverBadge-rescue:TEST TP4
U 1 1 5A9358C0
P 7500 3450
F 0 "TP4" H 7500 3750 50  0000 C BNN
F 1 "FUNC" H 7500 3700 50  0000 C CNN
F 2 "ScrewdriverBadge:TestPad-SMD-1mm-Tented" H 7500 3450 50  0001 C CNN
F 3 "" H 7500 3450 50  0001 C CNN
	1    7500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator Y1
U 1 1 5A93663B
P 6250 3750
F 0 "Y1" H 6250 3975 50  0000 C CNN
F 1 "Resonator" H 6250 3900 50  0000 C CNN
F 2 "ScrewdriverBadge:Resonator-AWSCR-3.7x3.1mm" H 6225 3750 50  0001 C CNN
F 3 "" H 6225 3750 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5A936888
P 6250 4000
F 0 "#PWR09" H 6250 3750 50  0001 C CNN
F 1 "GND" H 6250 3850 50  0000 C CNN
F 2 "" H 6250 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR010
U 1 1 5A939FB0
P 7550 850
F 0 "#PWR010" H 7550 700 50  0001 C CNN
F 1 "+BATT" H 7550 990 50  0000 C CNN
F 2 "" H 7550 850 50  0001 C CNN
F 3 "" H 7550 850 50  0001 C CNN
	1    7550 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A93A021
P 7550 2350
F 0 "#PWR011" H 7550 2100 50  0001 C CNN
F 1 "GND" H 7550 2200 50  0000 C CNN
F 2 "" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5A938ACB
P 3300 3350
F 0 "C1" H 3325 3450 50  0000 L CNN
F 1 "0.1uF" H 3325 3250 50  0000 L CNN
F 2 "ScrewdriverBadge:R_0603_Mid" H 3338 3200 50  0001 C CNN
F 3 "" H 3300 3350 50  0001 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_SPST SW1
U 1 1 5AD83C90
P 6100 4500
F 0 "SW1" H 6100 4625 50  0000 C CNN
F 1 "SW_SPST" H 6100 4400 50  0000 C CNN
F 2 "switches:JS202011JCQN" H 6100 4500 50  0001 C CNN
F 3 "" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2750 5600 2750
Wire Wire Line
	5600 2850 5500 2850
Wire Wire Line
	5500 2950 5600 2950
Wire Wire Line
	5600 3050 5500 3050
Wire Wire Line
	5500 3150 6050 3150
Wire Wire Line
	5500 3250 6150 3250
Wire Wire Line
	6850 3350 6250 3350
Wire Wire Line
	5500 3450 7150 3450
Wire Wire Line
	7450 3450 7500 3450
Wire Wire Line
	5500 3750 6100 3750
Wire Wire Line
	5500 3650 6450 3650
Wire Wire Line
	6450 3650 6450 3750
Wire Wire Line
	6450 3750 6400 3750
Wire Wire Line
	5600 3850 5500 3850
Wire Wire Line
	5500 3950 5600 3950
Wire Wire Line
	5250 4750 4900 4750
Wire Wire Line
	4900 4650 5200 4650
Wire Wire Line
	5200 4650 5200 4550
Wire Wire Line
	4900 4850 5050 4850
Wire Wire Line
	5050 4850 5050 5000
Wire Wire Line
	4650 4850 4350 4850
Wire Wire Line
	4650 4750 4300 4750
Wire Wire Line
	4650 4650 4350 4650
Wire Wire Line
	3400 3950 3300 3950
Wire Wire Line
	3300 3500 3300 3950
Wire Wire Line
	3300 2700 3300 2750
Wire Wire Line
	3300 2750 3400 2750
Wire Wire Line
	7900 3200 8000 3200
Wire Wire Line
	8350 3200 8450 3200
Wire Wire Line
	8450 3500 8350 3500
Wire Wire Line
	8050 3500 8000 3500
Wire Wire Line
	8000 3500 8000 3200
Connection ~ 8000 3200
Wire Wire Line
	8350 3800 8450 3800
Wire Wire Line
	7900 3800 8000 3800
Wire Wire Line
	8050 4100 8000 4100
Wire Wire Line
	8000 4100 8000 3800
Connection ~ 8000 3800
Wire Wire Line
	8350 4100 8450 4100
Wire Wire Line
	8450 4400 8350 4400
Wire Wire Line
	8450 4700 8350 4700
Wire Wire Line
	8050 4700 8000 4700
Wire Wire Line
	8000 4700 8000 4400
Wire Wire Line
	7900 4400 8000 4400
Connection ~ 8000 4400
Wire Wire Line
	8900 4700 8750 4700
Wire Wire Line
	8900 3200 8900 3500
Wire Wire Line
	8750 4400 8900 4400
Connection ~ 8900 4700
Wire Wire Line
	8900 4100 8750 4100
Connection ~ 8900 4400
Wire Wire Line
	8900 3800 8750 3800
Connection ~ 8900 4100
Wire Wire Line
	8900 3500 8750 3500
Connection ~ 8900 3800
Wire Wire Line
	8900 3200 8750 3200
Connection ~ 8900 3500
Wire Wire Line
	6100 5300 6100 5150
Wire Wire Line
	4500 5650 4700 5650
Wire Wire Line
	5000 5650 5100 5650
Wire Wire Line
	5100 5850 5000 5850
Wire Wire Line
	5000 5850 5000 6000
Wire Wire Line
	6650 2050 6800 2050
Wire Wire Line
	7100 2050 7250 2050
Wire Wire Line
	7550 1750 7550 1800
Wire Wire Line
	7550 1450 7550 1350
Wire Wire Line
	7850 1450 7850 1350
Wire Wire Line
	8150 1450 8150 1350
Wire Wire Line
	7850 1750 7850 1800
Wire Wire Line
	7550 1800 7850 1800
Connection ~ 7550 1800
Wire Wire Line
	8150 1800 8150 1750
Connection ~ 7850 1800
Wire Wire Line
	6250 4000 6250 3950
Wire Wire Line
	7550 2250 7550 2350
Wire Wire Line
	7550 850  7550 1000
Wire Wire Line
	7850 1050 7850 1000
Wire Wire Line
	7550 1000 7850 1000
Connection ~ 7550 1000
Wire Wire Line
	8150 1000 8150 1050
Connection ~ 7850 1000
Connection ~ 3300 2750
Connection ~ 3300 3950
Wire Wire Line
	6250 3000 6250 3350
Connection ~ 6250 3350
Wire Wire Line
	6150 3000 6150 3250
Connection ~ 6150 3250
Wire Wire Line
	6050 3000 6050 3150
Connection ~ 6050 3150
Wire Wire Line
	6650 3150 6750 3150
Wire Wire Line
	6900 3250 7000 3250
Wire Wire Line
	7150 3350 7250 3350
Wire Wire Line
	6100 4700 6100 4750
Wire Wire Line
	6100 4250 6100 4300
Wire Wire Line
	8000 3200 8050 3200
Wire Wire Line
	8000 3800 8050 3800
Wire Wire Line
	8000 4400 8050 4400
Wire Wire Line
	8900 4700 8900 4850
Wire Wire Line
	8900 4400 8900 4700
Wire Wire Line
	8900 4100 8900 4400
Wire Wire Line
	8900 3800 8900 4100
Wire Wire Line
	8900 3500 8900 3800
Wire Wire Line
	7550 1800 7550 1850
Wire Wire Line
	7850 1800 8150 1800
Wire Wire Line
	7550 1000 7550 1050
Wire Wire Line
	7850 1000 8150 1000
Wire Wire Line
	3300 2750 3300 3200
Wire Wire Line
	3300 3950 3300 4100
Wire Wire Line
	6250 3350 5500 3350
Wire Wire Line
	6150 3250 6600 3250
Wire Wire Line
	6050 3150 6350 3150
$EndSCHEMATC

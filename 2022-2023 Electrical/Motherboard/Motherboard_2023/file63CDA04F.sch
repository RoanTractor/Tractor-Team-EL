EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
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
L Connector:Conn_01x02_Male J7
U 1 1 63CDA22B
P 3250 2550
F 0 "J7" H 3358 2731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3358 2640 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 3250 2550 50  0001 C CNN
F 3 "~" H 3250 2550 50  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 63CDA8EA
P 4450 2500
F 0 "D1" H 4450 2765 50  0000 C CNN
F 1 "DIODE" H 4450 2674 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P5.08mm_Vertical_KathodeUp" H 4450 2500 50  0001 C CNN
F 3 "~" H 4450 2500 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 63CDB3DE
P 5300 2500
F 0 "TH1" V 5058 2500 50  0000 C CNN
F 1 "Thermistor" V 5149 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P5.08mm_Vertical" H 5300 2500 50  0001 C CNN
F 3 "~" H 5300 2500 50  0001 C CNN
	1    5300 2500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 63CDC114
P 5700 2950
F 0 "D2" V 5654 3030 50  0000 L CNN
F 1 "D_Zener" V 5745 3030 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P5.08mm_Vertical_KathodeUp" H 5700 2950 50  0001 C CNN
F 3 "~" H 5700 2950 50  0001 C CNN
	1    5700 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 63CDCE35
P 7050 2500
F 0 "#PWR027" H 7050 2350 50  0001 C CNN
F 1 "+5V" H 7065 2673 50  0000 C CNN
F 2 "" H 7050 2500 50  0001 C CNN
F 3 "" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 63CDD644
P 4550 3500
F 0 "#PWR026" H 4550 3250 50  0001 C CNN
F 1 "GND" H 4555 3327 50  0000 C CNN
F 2 "" H 4550 3500 50  0001 C CNN
F 3 "" H 4550 3500 50  0001 C CNN
	1    4550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3500 5700 3500
Wire Wire Line
	5700 3500 5700 3100
Wire Wire Line
	3450 2650 3450 3500
Wire Wire Line
	3450 3500 4550 3500
Connection ~ 4550 3500
Wire Wire Line
	3450 2550 4250 2550
Wire Wire Line
	4250 2550 4250 2500
Wire Wire Line
	4650 2500 5100 2500
Wire Wire Line
	5500 2500 5700 2500
Wire Wire Line
	5700 2500 5700 2800
Wire Wire Line
	5700 2500 7050 2500
Connection ~ 5700 2500
Text Notes 2550 2600 0    50   ~ 0
Regulator IN\n
$EndSCHEMATC

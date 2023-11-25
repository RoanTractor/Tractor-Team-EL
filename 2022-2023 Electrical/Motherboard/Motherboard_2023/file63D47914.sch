EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
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
L 3568:3568 F2
U 1 1 63D4B8CB
P 3000 2150
F 0 "F2" H 3000 2331 50  0000 C CNN
F 1 "3568" H 3000 2240 50  0000 C CNN
F 2 "3568:FUSE_3568" H 3000 2150 50  0001 L BNN
F 3 "" H 3000 2150 50  0001 L BNN
F 4 "7.37" H 3000 2150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Keystone Electronics Corp." H 3000 2150 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 3000 2150 50  0001 L BNN "STANDARD"
F 7 "C" H 3000 2150 50  0001 L BNN "PARTREV"
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 63D4DD24
P 2650 1800
F 0 "R33" V 2443 1800 50  0000 C CNN
F 1 "1k" V 2534 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 1800 50  0001 C CNN
F 3 "~" H 2650 1800 50  0001 C CNN
	1    2650 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 63D4E256
P 3200 1800
F 0 "D4" H 3193 1545 50  0000 C CNN
F 1 "LED" H 3193 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3200 1800 50  0001 C CNN
F 3 "~" H 3200 1800 50  0001 C CNN
	1    3200 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J22
U 1 1 63D4F386
P 3000 1150
F 0 "J22" V 3062 1194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3153 1194 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 3000 1150 50  0001 C CNN
F 3 "~" H 3000 1150 50  0001 C CNN
	1    3000 1150
	0    1    1    0   
$EndComp
Text Notes 2850 1150 0    20   ~ 0
In\n
Text Notes 3000 1150 0    20   ~ 0
Out\n
Text Notes 2900 1100 0    20   ~ 4
Choke\n
Wire Wire Line
	2800 1800 3050 1800
Wire Wire Line
	3350 1800 3500 1800
Wire Wire Line
	3500 1800 3500 2150
Wire Wire Line
	3500 2150 3300 2150
Wire Wire Line
	2500 1800 2350 1800
Wire Wire Line
	2350 1800 2350 2150
Wire Wire Line
	2350 2150 2700 2150
Wire Wire Line
	3000 1350 3650 1350
Wire Wire Line
	3650 1350 3650 2150
Wire Wire Line
	3650 2150 3500 2150
Connection ~ 3500 2150
Wire Wire Line
	2900 1350 2150 1350
Wire Wire Line
	2150 1350 2150 2150
Wire Wire Line
	2150 2150 2350 2150
Connection ~ 2350 2150
$Comp
L 3568:3568 F4
U 1 1 63D57179
P 5100 2150
F 0 "F4" H 5100 2331 50  0000 C CNN
F 1 "3568" H 5100 2240 50  0000 C CNN
F 2 "3568:FUSE_3568" H 5100 2150 50  0001 L BNN
F 3 "" H 5100 2150 50  0001 L BNN
F 4 "7.37" H 5100 2150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Keystone Electronics Corp." H 5100 2150 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 5100 2150 50  0001 L BNN "STANDARD"
F 7 "C" H 5100 2150 50  0001 L BNN "PARTREV"
	1    5100 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 63D5717F
P 4750 1800
F 0 "R34" V 4543 1800 50  0000 C CNN
F 1 "1k" V 4634 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 1800 50  0001 C CNN
F 3 "~" H 4750 1800 50  0001 C CNN
	1    4750 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 63D57185
P 5300 1800
F 0 "D5" H 5293 1545 50  0000 C CNN
F 1 "LED" H 5293 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5300 1800 50  0001 C CNN
F 3 "~" H 5300 1800 50  0001 C CNN
	1    5300 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J23
U 1 1 63D5718B
P 5100 1150
F 0 "J23" V 5162 1194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 5253 1194 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5100 1150 50  0001 C CNN
F 3 "~" H 5100 1150 50  0001 C CNN
	1    5100 1150
	0    1    1    0   
$EndComp
Text Notes 4950 1150 0    20   ~ 0
In\n
Text Notes 5100 1150 0    20   ~ 0
Out\n
Wire Wire Line
	4900 1800 5150 1800
Wire Wire Line
	5450 1800 5600 1800
Wire Wire Line
	5600 1800 5600 2150
Wire Wire Line
	5600 2150 5400 2150
Wire Wire Line
	4600 1800 4450 1800
Wire Wire Line
	4450 1800 4450 2150
Wire Wire Line
	4450 2150 4800 2150
Wire Wire Line
	5100 1350 5750 1350
Wire Wire Line
	5750 1350 5750 2150
Wire Wire Line
	5750 2150 5600 2150
Connection ~ 5600 2150
Wire Wire Line
	5000 1350 4250 1350
Wire Wire Line
	4250 1350 4250 2150
Wire Wire Line
	4250 2150 4450 2150
Connection ~ 4450 2150
$Comp
L 3568:3568 F5
U 1 1 63D59178
P 6950 2150
F 0 "F5" H 6950 2331 50  0000 C CNN
F 1 "3568" H 6950 2240 50  0000 C CNN
F 2 "3568:FUSE_3568" H 6950 2150 50  0001 L BNN
F 3 "" H 6950 2150 50  0001 L BNN
F 4 "7.37" H 6950 2150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Keystone Electronics Corp." H 6950 2150 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 6950 2150 50  0001 L BNN "STANDARD"
F 7 "C" H 6950 2150 50  0001 L BNN "PARTREV"
	1    6950 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 63D5917E
P 6600 1800
F 0 "R35" V 6393 1800 50  0000 C CNN
F 1 "1k" V 6484 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 1800 50  0001 C CNN
F 3 "~" H 6600 1800 50  0001 C CNN
	1    6600 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 63D59184
P 7150 1800
F 0 "D6" H 7143 1545 50  0000 C CNN
F 1 "LED" H 7143 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7150 1800 50  0001 C CNN
F 3 "~" H 7150 1800 50  0001 C CNN
	1    7150 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J24
U 1 1 63D5918A
P 6950 1150
F 0 "J24" V 7012 1194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 7103 1194 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 6950 1150 50  0001 C CNN
F 3 "~" H 6950 1150 50  0001 C CNN
	1    6950 1150
	0    1    1    0   
$EndComp
Text Notes 6800 1150 0    20   ~ 0
In\n
Text Notes 6950 1150 0    20   ~ 0
Out\n
Wire Wire Line
	6750 1800 7000 1800
Wire Wire Line
	7300 1800 7450 1800
Wire Wire Line
	7450 1800 7450 2150
Wire Wire Line
	7450 2150 7250 2150
Wire Wire Line
	6450 1800 6300 1800
Wire Wire Line
	6300 1800 6300 2150
Wire Wire Line
	6300 2150 6650 2150
Wire Wire Line
	6950 1350 7600 1350
Wire Wire Line
	7600 1350 7600 2150
Wire Wire Line
	7600 2150 7450 2150
Connection ~ 7450 2150
Wire Wire Line
	6850 1350 6100 1350
Wire Wire Line
	6100 1350 6100 2150
Wire Wire Line
	6100 2150 6300 2150
Connection ~ 6300 2150
$Comp
L 3568:3568 F6
U 1 1 63D5A547
P 8750 2150
F 0 "F6" H 8750 2331 50  0000 C CNN
F 1 "3568" H 8750 2240 50  0000 C CNN
F 2 "3568:FUSE_3568" H 8750 2150 50  0001 L BNN
F 3 "" H 8750 2150 50  0001 L BNN
F 4 "7.37" H 8750 2150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Keystone Electronics Corp." H 8750 2150 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 8750 2150 50  0001 L BNN "STANDARD"
F 7 "C" H 8750 2150 50  0001 L BNN "PARTREV"
	1    8750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 63D5A54D
P 8400 1800
F 0 "R36" V 8193 1800 50  0000 C CNN
F 1 "1k" V 8284 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1800 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 63D5A553
P 8950 1800
F 0 "D7" H 8943 1545 50  0000 C CNN
F 1 "LED" H 8943 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8950 1800 50  0001 C CNN
F 3 "~" H 8950 1800 50  0001 C CNN
	1    8950 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J25
U 1 1 63D5A559
P 8750 1150
F 0 "J25" V 8812 1194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 8903 1194 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 8750 1150 50  0001 C CNN
F 3 "~" H 8750 1150 50  0001 C CNN
	1    8750 1150
	0    1    1    0   
$EndComp
Text Notes 8600 1150 0    20   ~ 0
In\n
Text Notes 8750 1150 0    20   ~ 0
Out\n
Wire Wire Line
	8550 1800 8800 1800
Wire Wire Line
	9100 1800 9250 1800
Wire Wire Line
	9250 1800 9250 2150
Wire Wire Line
	9250 2150 9050 2150
Wire Wire Line
	8250 1800 8100 1800
Wire Wire Line
	8100 1800 8100 2150
Wire Wire Line
	8100 2150 8450 2150
Wire Wire Line
	8750 1350 9400 1350
Wire Wire Line
	9400 1350 9400 2150
Wire Wire Line
	9400 2150 9250 2150
Connection ~ 9250 2150
Wire Wire Line
	8650 1350 7900 1350
Wire Wire Line
	7900 1350 7900 2150
Wire Wire Line
	7900 2150 8100 2150
Connection ~ 8100 2150
$Comp
L 3568:3568 F1
U 1 1 63D5C2A6
P 2900 4150
F 0 "F1" H 2900 4331 50  0000 C CNN
F 1 "3568" H 2900 4240 50  0000 C CNN
F 2 "3568:FUSE_3568" H 2900 4150 50  0001 L BNN
F 3 "" H 2900 4150 50  0001 L BNN
F 4 "7.37" H 2900 4150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Keystone Electronics Corp." H 2900 4150 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 2900 4150 50  0001 L BNN "STANDARD"
F 7 "C" H 2900 4150 50  0001 L BNN "PARTREV"
	1    2900 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 63D5C2AC
P 2550 3800
F 0 "R32" V 2343 3800 50  0000 C CNN
F 1 "1k" V 2434 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 3800 50  0001 C CNN
F 3 "~" H 2550 3800 50  0001 C CNN
	1    2550 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 63D5C2B2
P 3100 3800
F 0 "D3" H 3093 3545 50  0000 C CNN
F 1 "LED" H 3093 3636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3100 3800 50  0001 C CNN
F 3 "~" H 3100 3800 50  0001 C CNN
	1    3100 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J21
U 1 1 63D5C2B8
P 2900 3150
F 0 "J21" V 2962 3194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3053 3194 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2900 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2900 3150
	0    1    1    0   
$EndComp
Text Notes 2750 3150 0    20   ~ 0
In\n
Text Notes 2900 3150 0    20   ~ 0
Out\n
Wire Wire Line
	2700 3800 2950 3800
Wire Wire Line
	3250 3800 3400 3800
Wire Wire Line
	3400 3800 3400 4150
Wire Wire Line
	3400 4150 3200 4150
Wire Wire Line
	2400 3800 2250 3800
Wire Wire Line
	2250 3800 2250 4150
Wire Wire Line
	2250 4150 2600 4150
Wire Wire Line
	2900 3350 3550 3350
Wire Wire Line
	3550 3350 3550 4150
Wire Wire Line
	3550 4150 3400 4150
Connection ~ 3400 4150
Wire Wire Line
	2800 3350 2050 3350
Wire Wire Line
	2050 3350 2050 4150
Wire Wire Line
	2050 4150 2250 4150
Connection ~ 2250 4150
Text Notes 5050 1100 0    20   ~ 4
5V
Text Notes 6900 1100 0    20   ~ 4
7V\n
Text Notes 8650 1100 0    20   ~ 4
Bypass\n
Text Notes 2850 3100 0    20   ~ 4
DAQ\n
$Comp
L Device:Fuse F3
U 1 1 63D64FCB
P 4600 3650
F 0 "F3" H 4660 3696 50  0000 L CNN
F 1 "Fuse" H 4660 3605 50  0000 L CNN
F 2 "3568:FUSE_3568" V 4530 3650 50  0001 C CNN
F 3 "~" H 4600 3650 50  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
Text Notes 4500 3450 0    20   ~ 4
Spare Fuse Holder \n
$EndSCHEMATC

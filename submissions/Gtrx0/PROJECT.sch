EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
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
L PROJECT-rescue:ATmega32U4-atmel-PROJECT-rescue-PROJECT-rescue U2
U 1 1 5BBBA1E9
P 17225 13325
F 0 "U2" H 17200 15140 50  0000 C CNN
F 1 "ATmega32U4" H 17200 15049 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-44-1EP_7x7mm_P0.5mm_EP5.2x5.2mm_ThermalVias" H 18425 14425 50  0001 C CNN
F 3 "" H 18425 14425 50  0001 C CNN
	1    17225 13325
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:C-device C2
U 1 1 5BBBA2A8
P 14000 12025
F 0 "C2" H 14115 12071 50  0000 L CNN
F 1 "C" H 14115 11980 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14038 11875 50  0001 C CNN
F 3 "~" H 14000 12025 50  0001 C CNN
	1    14000 12025
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:C-device C3
U 1 1 5BBBA352
P 14300 12125
F 0 "C3" H 14415 12171 50  0000 L CNN
F 1 "C" H 14415 12080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14338 11975 50  0001 C CNN
F 3 "~" H 14300 12125 50  0001 C CNN
	1    14300 12125
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:C-device C4
U 1 1 5BBBA380
P 14575 12225
F 0 "C4" H 14690 12271 50  0000 L CNN
F 1 "C" H 14690 12180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14613 12075 50  0001 C CNN
F 3 "~" H 14575 12225 50  0001 C CNN
	1    14575 12225
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:C-device C5
U 1 1 5BBBA3B2
P 14825 12425
F 0 "C5" H 14940 12471 50  0000 L CNN
F 1 "C" H 14940 12380 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14863 12275 50  0001 C CNN
F 3 "~" H 14825 12425 50  0001 C CNN
	1    14825 12425
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:C-device C1
U 1 1 5BBBA3E4
P 13675 11925
F 0 "C1" H 13790 11971 50  0000 L CNN
F 1 "4.7uf" H 13790 11880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13713 11775 50  0001 C CNN
F 3 "~" H 13675 11925 50  0001 C CNN
	1    13675 11925
	1    0    0    -1  
$EndComp
Wire Wire Line
	14825 12575 14575 12575
Wire Wire Line
	14575 12575 14575 12375
Wire Wire Line
	14575 12375 14300 12375
Wire Wire Line
	14300 12375 14300 12275
Connection ~ 14575 12375
Wire Wire Line
	14000 12175 14000 12275
Wire Wire Line
	14000 12275 14300 12275
Connection ~ 14300 12275
Wire Wire Line
	13675 12075 13675 12175
Wire Wire Line
	13675 12175 14000 12175
Connection ~ 14000 12175
Wire Wire Line
	13675 11775 14000 11775
Wire Wire Line
	14000 11875 15975 11875
Wire Wire Line
	15975 11975 14300 11975
Wire Wire Line
	15975 12075 14575 12075
Wire Wire Line
	14825 12275 15975 12275
Wire Wire Line
	13675 12175 13425 12175
Connection ~ 13675 12175
Wire Wire Line
	13675 11775 13425 11775
Connection ~ 13675 11775
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0101
U 1 1 5BBBB017
P 13425 11775
F 0 "#PWR0101" H 13425 11745 20  0001 C CNN
F 1 "+5V" V 13425 11883 30  0000 L CNN
F 2 "" H 13425 11775 60  0000 C CNN
F 3 "" H 13425 11775 60  0000 C CNN
	1    13425 11775
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BBBB06C
P 13425 12175
F 0 "#PWR0102" H 13425 11925 50  0001 C CNN
F 1 "GND" V 13430 12047 50  0000 R CNN
F 2 "" H 13425 12175 50  0001 C CNN
F 3 "" H 13425 12175 50  0001 C CNN
	1    13425 12175
	0    1    1    0   
$EndComp
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0103
U 1 1 5BBBB0F4
P 15800 12475
F 0 "#PWR0103" H 15800 12445 20  0001 C CNN
F 1 "+5V" V 15800 12583 30  0000 L CNN
F 2 "" H 15800 12475 60  0000 C CNN
F 3 "" H 15800 12475 60  0000 C CNN
	1    15800 12475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15975 12475 15875 12475
Wire Wire Line
	15875 12475 15875 11775
Connection ~ 15875 12475
Wire Wire Line
	15875 12475 15800 12475
Connection ~ 15875 11775
Wire Wire Line
	15875 11775 15975 11775
Wire Wire Line
	15975 12575 15800 12575
Wire Wire Line
	15975 12675 15800 12675
Text GLabel 15800 12575 0    50   Input ~ 0
D+
Text GLabel 15800 12675 0    50   Input ~ 0
D-
Wire Wire Line
	15975 12775 15575 12775
$Comp
L PROJECT-rescue:C-device C6
U 1 1 5BBBBA91
P 15425 12775
F 0 "C6" V 15173 12775 50  0000 C CNN
F 1 "1uf" V 15264 12775 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15463 12625 50  0001 C CNN
F 3 "~" H 15425 12775 50  0001 C CNN
	1    15425 12775
	0    1    1    0   
$EndComp
Wire Wire Line
	15275 12775 15175 12775
$Comp
L power:GND #PWR0104
U 1 1 5BBBBDE7
P 15175 12775
F 0 "#PWR0104" H 15175 12525 50  0001 C CNN
F 1 "GND" V 15180 12647 50  0000 R CNN
F 2 "" H 15175 12775 50  0001 C CNN
F 3 "" H 15175 12775 50  0001 C CNN
	1    15175 12775
	0    1    1    0   
$EndComp
Wire Wire Line
	15800 12875 15975 12875
$Comp
L power:GND #PWR0105
U 1 1 5BBBC1B0
P 15800 12875
F 0 "#PWR0105" H 15800 12625 50  0001 C CNN
F 1 "GND" V 15805 12747 50  0000 R CNN
F 2 "" H 15800 12875 50  0001 C CNN
F 3 "" H 15800 12875 50  0001 C CNN
	1    15800 12875
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BBBC9E6
P 14400 13175
F 0 "#PWR0106" H 14400 12925 50  0001 C CNN
F 1 "GND" V 14405 13047 50  0000 R CNN
F 2 "" H 14400 13175 50  0001 C CNN
F 3 "" H 14400 13175 50  0001 C CNN
	1    14400 13175
	0    1    1    0   
$EndComp
Wire Wire Line
	15625 13175 15625 13325
Wire Wire Line
	15625 13325 15525 13325
Connection ~ 15625 13175
Wire Wire Line
	15625 13175 15525 13175
$Comp
L PROJECT-rescue:R_Small-device R1
U 1 1 5BBBCF61
P 15425 13325
F 0 "R1" V 15350 13325 50  0000 C CNN
F 1 "10k" V 15425 13325 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 15425 13325 50  0001 C CNN
F 3 "~" H 15425 13325 50  0001 C CNN
	1    15425 13325
	0    1    1    0   
$EndComp
$Comp
L PROJECT-rescue:XTAL_GND-keyboard_parts-PROJECT-rescue-PROJECT-rescue X1
U 1 1 5BBBD0FA
P 15300 13825
F 0 "X1" H 15300 14117 60  0000 C CNN
F 1 "XTAL_GND" H 15300 14011 60  0000 C CNN
F 2 "Mixed Lib:CSTCE" H 15300 13825 60  0001 C CNN
F 3 "" H 15300 13825 60  0000 C CNN
	1    15300 13825
	0    1    1    0   
$EndComp
Wire Wire Line
	15975 14375 15925 14375
Wire Wire Line
	15925 14375 15925 14475
Wire Wire Line
	15850 14675 15925 14675
Wire Wire Line
	15975 14675 15925 14675
Connection ~ 15925 14675
Wire Wire Line
	15975 14575 15925 14575
Connection ~ 15925 14575
Wire Wire Line
	15925 14575 15925 14675
Wire Wire Line
	15975 14475 15925 14475
Connection ~ 15925 14475
Wire Wire Line
	15925 14475 15925 14575
$Comp
L power:GND #PWR0108
U 1 1 5BBC282F
P 15850 14675
F 0 "#PWR0108" H 15850 14425 50  0001 C CNN
F 1 "GND" V 15855 14547 50  0000 R CNN
F 2 "" H 15850 14675 50  0001 C CNN
F 3 "" H 15850 14675 50  0001 C CNN
	1    15850 14675
	0    1    1    0   
$EndComp
$Comp
L PROJECT-rescue:R_Small-device R2
U 1 1 5BBC297A
P 18575 13975
F 0 "R2" V 18500 13975 50  0000 C CNN
F 1 "10k" V 18575 13975 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 18575 13975 50  0001 C CNN
F 3 "~" H 18575 13975 50  0001 C CNN
	1    18575 13975
	-1   0    0    1   
$EndComp
Wire Wire Line
	18575 14075 18575 14150
$Comp
L power:GND #PWR0109
U 1 1 5BBC3D9F
P 18575 14150
F 0 "#PWR0109" H 18575 13900 50  0001 C CNN
F 1 "GND" V 18580 14022 50  0000 R CNN
F 2 "" H 18575 14150 50  0001 C CNN
F 3 "" H 18575 14150 50  0001 C CNN
	1    18575 14150
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0110
U 1 1 5BBC3E78
P 15325 13325
F 0 "#PWR0110" H 15325 13295 20  0001 C CNN
F 1 "+5V" V 15325 13433 30  0000 L CNN
F 2 "" H 15325 13325 60  0000 C CNN
F 3 "" H 15325 13325 60  0000 C CNN
	1    15325 13325
	0    -1   -1   0   
$EndComp
Text GLabel 15525 13150 1    50   Input ~ 0
RST
Wire Wire Line
	15525 13150 15525 13175
Connection ~ 15525 13175
Wire Wire Line
	15625 13175 15975 13175
$Comp
L PROJECT-rescue:HRO-TYPE-C-31-M-12-Type-C USB1
U 1 1 5BBC6A9A
P 21100 13850
F 0 "USB1" H 20931 14647 60  0000 C CNN
F 1 "HRO-TYPE-C-31-M-12" H 20931 14541 60  0000 C CNN
F 2 "Type-C:HRO-TYPE-C-31-M-13" H 21100 13850 60  0001 C CNN
F 3 "" H 21100 13850 60  0001 C CNN
	1    21100 13850
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:PRTR5V0U2X-ai03-locallib U1
U 1 1 5BBC6BE9
P 22350 14150
F 0 "U1" H 22350 14447 60  0000 C CNN
F 1 "PRTR5V0U2X" H 22350 14341 60  0000 C CNN
F 2 "Mixed Lib:SOT143B" H 22350 14150 60  0001 C CNN
F 3 "" H 22350 14150 60  0001 C CNN
	1    22350 14150
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:R-device UR2
U 1 1 5BBC6C72
P 23125 13800
F 0 "UR2" V 23025 13725 50  0000 L CNN
F 1 "22" V 23125 13750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 23055 13800 50  0001 C CNN
F 3 "~" H 23125 13800 50  0001 C CNN
	1    23125 13800
	0    -1   -1   0   
$EndComp
$Comp
L PROJECT-rescue:R-device UR1
U 1 1 5BBC6EF2
P 23125 13700
F 0 "UR1" V 23200 13700 50  0000 C CNN
F 1 "22" V 23125 13700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 23055 13700 50  0001 C CNN
F 3 "~" H 23125 13700 50  0001 C CNN
	1    23125 13700
	0    -1   -1   0   
$EndComp
$Comp
L PROJECT-rescue:R-device UR4
U 1 1 5BBC6FF9
P 21975 14600
F 0 "UR4" V 21875 14600 50  0000 C CNN
F 1 "5.1k" V 21975 14600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 21905 14600 50  0001 C CNN
F 3 "~" H 21975 14600 50  0001 C CNN
	1    21975 14600
	0    -1   -1   0   
$EndComp
$Comp
L PROJECT-rescue:R-device UR3
U 1 1 5BBC6FFF
P 21975 14500
F 0 "UR3" V 22050 14500 50  0000 C CNN
F 1 "5.1k" V 21975 14500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 21905 14500 50  0001 C CNN
F 3 "~" H 21975 14500 50  0001 C CNN
	1    21975 14500
	0    -1   -1   0   
$EndComp
$Comp
L PROJECT-rescue:R-device UR5
U 1 1 5BBC7AE9
P 21450 14500
F 0 "UR5" V 21350 14500 50  0000 C CNN
F 1 "1M" V 21450 14500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 21380 14500 50  0001 C CNN
F 3 "~" H 21450 14500 50  0001 C CNN
	1    21450 14500
	0    -1   -1   0   
$EndComp
$Comp
L PROJECT-rescue:C_Small-device USBCap1
U 1 1 5BBC864C
P 21450 14700
F 0 "USBCap1" V 21550 14700 50  0000 C CNN
F 1 "4.7uF" V 21625 14700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 21450 14700 50  0001 C CNN
F 3 "~" H 21450 14700 50  0001 C CNN
	1    21450 14700
	0    1    1    0   
$EndComp
$Comp
L PROJECT-rescue:Polyfuse_Small-device F1
U 1 1 5BBC86E0
P 22375 13475
F 0 "F1" H 22443 13521 50  0000 L CNN
F 1 "Polyfuse_Small" H 22443 13430 50  0000 L CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 22425 13275 50  0001 L CNN
F 3 "~" H 22375 13475 50  0001 C CNN
	1    22375 13475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	21200 13300 21800 13300
Wire Wire Line
	21200 13400 21750 13400
Wire Wire Line
	21200 14500 21300 14500
Wire Wire Line
	21300 14500 21300 14700
Wire Wire Line
	21300 14700 21350 14700
Connection ~ 21300 14500
Wire Wire Line
	21550 14700 21600 14700
Wire Wire Line
	21600 14700 21600 14500
Wire Wire Line
	21750 13400 21750 13475
Wire Wire Line
	21750 14300 21200 14300
Wire Wire Line
	21800 14400 21800 14100
Wire Wire Line
	21800 14400 21200 14400
Wire Wire Line
	21750 13475 22075 13475
Connection ~ 21750 13475
Wire Wire Line
	21750 13475 21750 14300
Wire Wire Line
	22475 13475 22650 13475
Wire Wire Line
	22650 13475 22650 13425
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0111
U 1 1 5BBDEA6F
P 22650 13425
F 0 "#PWR0111" H 22650 13395 20  0001 C CNN
F 1 "+5V" H 22650 13563 30  0000 C CNN
F 2 "" H 22650 13425 60  0000 C CNN
F 3 "" H 22650 13425 60  0000 C CNN
	1    22650 13425
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BBDEAD2
P 22075 13425
F 0 "#PWR0112" H 22075 13275 50  0001 C CNN
F 1 "VCC" H 22092 13598 50  0000 C CNN
F 2 "" H 22075 13425 50  0001 C CNN
F 3 "" H 22075 13425 50  0001 C CNN
	1    22075 13425
	1    0    0    -1  
$EndComp
Wire Wire Line
	22075 13425 22075 13475
Connection ~ 22075 13475
Wire Wire Line
	22075 13475 22200 13475
Wire Wire Line
	21300 13900 21300 13700
Wire Wire Line
	21300 13700 21200 13700
Wire Wire Line
	21200 13900 21300 13900
Wire Wire Line
	21200 14000 21250 14000
Wire Wire Line
	21250 14000 21250 13800
Wire Wire Line
	21250 13800 21200 13800
Connection ~ 21250 13800
Connection ~ 21300 13700
Wire Wire Line
	21825 14500 21675 14500
Wire Wire Line
	21675 14500 21675 13600
Wire Wire Line
	21675 13600 21200 13600
Wire Wire Line
	21825 14600 21650 14600
Wire Wire Line
	21650 14600 21650 14200
Wire Wire Line
	21650 14200 21200 14200
Wire Wire Line
	22125 14600 22125 14500
Connection ~ 22125 14600
$Comp
L power:GND #PWR0113
U 1 1 5BC07ADE
P 22125 14775
F 0 "#PWR0113" H 22125 14525 50  0001 C CNN
F 1 "GND" H 22130 14602 50  0000 C CNN
F 2 "" H 22125 14775 50  0001 C CNN
F 3 "" H 22125 14775 50  0001 C CNN
	1    22125 14775
	1    0    0    -1  
$EndComp
Wire Wire Line
	22050 14200 21950 14200
Wire Wire Line
	22725 14200 22725 13800
Wire Wire Line
	22650 14200 22725 14200
Wire Wire Line
	22650 14100 22650 13575
Wire Wire Line
	22650 13575 22200 13575
Wire Wire Line
	22200 13575 22200 13475
Connection ~ 22200 13475
Wire Wire Line
	22200 13475 22275 13475
Wire Wire Line
	22050 14100 21900 14100
Connection ~ 21800 14100
Wire Wire Line
	21800 14100 21800 13300
Wire Wire Line
	21900 14100 21900 14325
Wire Wire Line
	21900 14325 22125 14325
Wire Wire Line
	22125 14325 22125 14500
Connection ~ 21900 14100
Wire Wire Line
	21900 14100 21800 14100
Connection ~ 22125 14500
Wire Wire Line
	23275 13700 23375 13700
Wire Wire Line
	23275 13800 23375 13800
Text GLabel 23375 13700 2    50   Input ~ 0
D-
Text GLabel 23375 13800 2    50   Input ~ 0
D+
Wire Wire Line
	22125 14600 22125 14725
Wire Wire Line
	21600 14700 21600 14725
Wire Wire Line
	21600 14725 22125 14725
Connection ~ 21600 14700
Connection ~ 22125 14725
Wire Wire Line
	22125 14725 22125 14775
Wire Wire Line
	14825 12275 14825 11775
Connection ~ 14825 12275
Connection ~ 14825 11775
Wire Wire Line
	14825 11775 15875 11775
Wire Wire Line
	14575 12075 14575 11775
Connection ~ 14575 12075
Connection ~ 14575 11775
Wire Wire Line
	14575 11775 14825 11775
Wire Wire Line
	14300 11975 14300 11775
Connection ~ 14300 11975
Connection ~ 14300 11775
Wire Wire Line
	14300 11775 14575 11775
Wire Wire Line
	14000 11875 14000 11775
Connection ~ 14000 11875
Connection ~ 14000 11775
Wire Wire Line
	14000 11775 14300 11775
Wire Wire Line
	15750 13525 15750 13775
Wire Wire Line
	15750 13775 15975 13775
Wire Wire Line
	15975 13875 15750 13875
Wire Wire Line
	15300 14125 15300 14175
$Comp
L power:GND #PWR0107
U 1 1 5BBBFFA0
P 15300 14175
F 0 "#PWR0107" H 15300 13925 50  0001 C CNN
F 1 "GND" H 15305 14002 50  0000 C CNN
F 2 "" H 15300 14175 50  0001 C CNN
F 3 "" H 15300 14175 50  0001 C CNN
	1    15300 14175
	1    0    0    -1  
$EndComp
Wire Wire Line
	15750 13875 15750 14075
Wire Wire Line
	15750 14075 15100 14075
Wire Wire Line
	15100 14075 15100 13825
Wire Wire Line
	15300 13525 15750 13525
$Comp
L PROJECT-rescue:M24LR04E-RMN6T_2-M24LR04E-RMN6T_2 IC1
U 1 1 5ED49326
P 21025 11825
F 0 "IC1" H 21775 12090 50  0000 C CNN
F 1 "M24LR04E-RMN6T_2" H 21775 11999 50  0000 C CNN
F 2 "Mixed Lib:SOIC127P600X175-8N" H 22375 11925 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/DM00038059.pdf" H 22375 11825 50  0001 L CNN
F 4 "" H 22375 11725 50  0001 L CNN "Description"
F 5 "1.75" H 22375 11625 50  0001 L CNN "Height"
F 6 "511-M24LR04E-RMN6T/2" H 22375 11525 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/M24LR04E-RMN6T-2?qs=pqHpkKcI5TSi3cbx9%2FVdFg%3D%3D" H 22375 11425 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 22375 11325 50  0001 L CNN "Manufacturer_Name"
F 9 "M24LR04E-RMN6T/2" H 22375 11225 50  0001 L CNN "Manufacturer_Part_Number"
	1    21025 11825
	1    0    0    -1  
$EndComp
Wire Wire Line
	22525 11825 22525 11600
Wire Wire Line
	21025 11825 21025 11600
Wire Wire Line
	21025 11600 22525 11600
Connection ~ 22525 11600
Wire Wire Line
	22525 11600 22525 11150
Wire Wire Line
	22525 11600 22825 11600
$Comp
L Device:C_Small C7
U 1 1 5ED57302
P 22825 11700
F 0 "C7" H 22917 11746 50  0000 L CNN
F 1 "10nF" H 22917 11655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 22825 11700 50  0001 C CNN
F 3 "~" H 22825 11700 50  0001 C CNN
	1    22825 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5ED58A43
P 23200 11700
F 0 "C8" H 23292 11746 50  0000 L CNN
F 1 "100nF" H 23292 11655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 23200 11700 50  0001 C CNN
F 3 "~" H 23200 11700 50  0001 C CNN
	1    23200 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5ED5CB0E
P 23600 11700
F 0 "C9" H 23692 11746 50  0000 L CNN
F 1 "4.7uF" H 23692 11655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 23600 11700 50  0001 C CNN
F 3 "~" H 23600 11700 50  0001 C CNN
	1    23600 11700
	1    0    0    -1  
$EndComp
Connection ~ 22825 11600
Wire Wire Line
	22825 11600 23200 11600
Connection ~ 23200 11600
Wire Wire Line
	23200 11600 23600 11600
Wire Wire Line
	23600 11800 23200 11800
Connection ~ 23200 11800
Wire Wire Line
	23200 11800 22825 11800
Wire Wire Line
	23600 11800 23600 11925
Connection ~ 23600 11800
$Comp
L power:GND #PWR0114
U 1 1 5ED772E2
P 23600 11925
F 0 "#PWR0114" H 23600 11675 50  0001 C CNN
F 1 "GND" H 23605 11752 50  0000 C CNN
F 2 "" H 23600 11925 50  0001 C CNN
F 3 "" H 23600 11925 50  0001 C CNN
	1    23600 11925
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D9
U 1 1 5ED7B680
P 22525 11050
F 0 "D9" V 22571 10980 50  0000 R CNN
F 1 "D_Small" V 22480 10980 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 22525 11050 50  0001 C CNN
F 3 "~" V 22525 11050 50  0001 C CNN
	1    22525 11050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	22525 11925 22650 11925
Text GLabel 22650 11925 2    50   Input ~ 0
BUSY
Text GLabel 22650 12025 2    50   Input ~ 0
SCL
Text GLabel 22650 12125 2    50   Input ~ 0
SDA
Wire Wire Line
	21025 12125 21025 12250
$Comp
L power:GND #PWR0115
U 1 1 5ED8A056
P 21025 12250
F 0 "#PWR0115" H 21025 12000 50  0001 C CNN
F 1 "GND" H 21030 12077 50  0000 C CNN
F 2 "" H 21025 12250 50  0001 C CNN
F 3 "" H 21025 12250 50  0001 C CNN
	1    21025 12250
	1    0    0    -1  
$EndComp
Wire Wire Line
	22525 12025 22650 12025
Wire Wire Line
	22525 12125 22650 12125
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0116
U 1 1 5EDA6E5C
P 22525 10850
F 0 "#PWR0116" H 22525 10820 20  0001 C CNN
F 1 "+5V" V 22525 10958 30  0000 L CNN
F 2 "" H 22525 10850 60  0000 C CNN
F 3 "" H 22525 10850 60  0000 C CNN
	1    22525 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	22525 10850 22525 10950
Wire Wire Line
	14400 13175 14675 13175
Wire Wire Line
	15275 13175 15525 13175
$Comp
L PROJECT-rescue:SW_PUSH-keyboard_parts-PROJECT-rescue-PROJECT-rescue SW2
U 1 1 5EDD5FC8
P 19550 13275
F 0 "SW2" H 19175 13400 50  0000 C CNN
F 1 "SW_PUSH" H 19175 13325 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 19550 13275 60  0001 C CNN
F 3 "" H 19550 13275 60  0000 C CNN
	1    19550 13275
	1    0    0    -1  
$EndComp
$Comp
L PROJECT-rescue:SW_PUSH-keyboard_parts-PROJECT-rescue-PROJECT-rescue SW3
U 1 1 5EDD6F4F
P 19550 13475
F 0 "SW3" H 19550 13279 50  0000 C CNN
F 1 "SW_PUSH" H 19550 13370 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 19550 13475 60  0001 C CNN
F 3 "" H 19550 13475 60  0000 C CNN
	1    19550 13475
	1    0    0    -1  
$EndComp
Wire Wire Line
	18425 13875 18575 13875
$Comp
L Device:C_Small C10
U 1 1 5EE13F9F
P 18750 13700
F 0 "C10" H 18842 13746 50  0000 L CNN
F 1 "10nF" H 18842 13655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 18750 13700 50  0001 C CNN
F 3 "~" H 18750 13700 50  0001 C CNN
	1    18750 13700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5EE18D25
P 19100 13700
F 0 "C11" H 19192 13746 50  0000 L CNN
F 1 "10nF" H 19192 13655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 19100 13700 50  0001 C CNN
F 3 "~" H 19100 13700 50  0001 C CNN
	1    19100 13700
	1    0    0    -1  
$EndComp
Wire Wire Line
	18425 13275 18750 13275
Wire Wire Line
	18425 13475 19100 13475
Wire Wire Line
	18750 13600 18750 13275
Connection ~ 18750 13275
Wire Wire Line
	18750 13275 19250 13275
Wire Wire Line
	19100 13600 19100 13475
Connection ~ 19100 13475
Wire Wire Line
	19100 13475 19250 13475
Wire Wire Line
	18750 13800 18950 13800
Wire Wire Line
	18950 13800 18950 13950
Connection ~ 18950 13800
Wire Wire Line
	18950 13800 19100 13800
$Comp
L power:GND #PWR0117
U 1 1 5EE46118
P 18950 13950
F 0 "#PWR0117" H 18950 13700 50  0001 C CNN
F 1 "GND" V 18955 13822 50  0000 R CNN
F 2 "" H 18950 13950 50  0001 C CNN
F 3 "" H 18950 13950 50  0001 C CNN
	1    18950 13950
	1    0    0    -1  
$EndComp
Wire Wire Line
	19850 13275 19850 13475
Wire Wire Line
	19850 13475 19850 13800
Connection ~ 19850 13475
$Comp
L power:GND #PWR0118
U 1 1 5EE56500
P 19850 13800
F 0 "#PWR0118" H 19850 13550 50  0001 C CNN
F 1 "GND" V 19855 13672 50  0000 R CNN
F 2 "" H 19850 13800 50  0001 C CNN
F 3 "" H 19850 13800 50  0001 C CNN
	1    19850 13800
	1    0    0    -1  
$EndComp
Text GLabel 18525 12075 2    50   Input ~ 0
MISO
Text GLabel 18525 11975 2    50   Input ~ 0
MOSI
Wire Wire Line
	18425 11975 18525 11975
Wire Wire Line
	18425 12075 18525 12075
Wire Wire Line
	18425 11875 18525 11875
Text GLabel 18525 11875 2    50   Input ~ 0
SCK
$Comp
L PROJECT-rescue:Antenna_Loop-device AE1
U 1 1 5EE81138
P 20400 12025
F 0 "AE1" V 20767 11993 50  0000 C CNN
F 1 "Antenna_Loop" V 20676 11993 50  0000 C CNN
F 2 "" H 20400 12025 50  0001 C CNN
F 3 "~" H 20400 12025 50  0001 C CNN
	1    20400 12025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	20600 11925 21025 11925
Wire Wire Line
	20600 12025 21025 12025
$Comp
L PROJECT-rescue:SW_PUSH-keyboard_parts-PROJECT-rescue-PROJECT-rescue SW1
U 1 1 5EEB9A7B
P 14975 13175
F 0 "SW1" H 14975 13430 50  0000 C CNN
F 1 "SW_PUSH" H 14975 13339 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 14975 13175 60  0001 C CNN
F 3 "" H 14975 13175 60  0000 C CNN
	1    14975 13175
	1    0    0    -1  
$EndComp
Text GLabel 18425 12675 2    50   Input ~ 0
BUSY
Text GLabel 20150 12975 2    50   Input ~ 0
SCL
Text GLabel 20150 13075 2    50   Input ~ 0
SDA
$Comp
L Device:R_Small R3
U 1 1 5ED4A302
P 19100 12775
F 0 "R3" H 19159 12821 50  0000 L CNN
F 1 "4k" H 19159 12730 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 19100 12775 50  0001 C CNN
F 3 "~" H 19100 12775 50  0001 C CNN
	1    19100 12775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5ED4B1FD
P 19525 12775
F 0 "R4" H 19584 12821 50  0000 L CNN
F 1 "4k" H 19584 12730 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 19525 12775 50  0001 C CNN
F 3 "~" H 19525 12775 50  0001 C CNN
	1    19525 12775
	1    0    0    -1  
$EndComp
Wire Wire Line
	20150 12975 19525 12975
Wire Wire Line
	18425 13075 19100 13075
$Comp
L Device:C_Small C12
U 1 1 5ED61F67
P 19975 13275
F 0 "C12" H 20067 13321 50  0000 L CNN
F 1 "30pF" H 20067 13230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 19975 13275 50  0001 C CNN
F 3 "~" H 19975 13275 50  0001 C CNN
	1    19975 13275
	1    0    0    -1  
$EndComp
Wire Wire Line
	19975 13175 19975 13075
Connection ~ 19975 13075
Wire Wire Line
	19975 13075 20150 13075
Wire Wire Line
	19975 13375 19975 13475
Wire Wire Line
	19975 13475 19850 13475
Wire Wire Line
	19525 12875 19525 12975
Connection ~ 19525 12975
Wire Wire Line
	19525 12975 18425 12975
Wire Wire Line
	19100 12875 19100 13075
Connection ~ 19100 13075
Wire Wire Line
	19100 13075 19975 13075
Wire Wire Line
	19100 12675 19325 12675
Wire Wire Line
	19325 12675 19325 12550
Connection ~ 19325 12675
Wire Wire Line
	19325 12675 19525 12675
$Comp
L PROJECT-rescue:+5V-keyboard_parts-PROJECT-rescue-PROJECT-rescue #PWR0119
U 1 1 5ED8911E
P 19325 12550
F 0 "#PWR0119" H 19325 12520 20  0001 C CNN
F 1 "+5V" V 19325 12658 30  0000 L CNN
F 2 "" H 19325 12550 60  0000 C CNN
F 3 "" H 19325 12550 60  0000 C CNN
	1    19325 12550
	1    0    0    -1  
$EndComp
Wire Wire Line
	21300 13700 21950 13700
Connection ~ 22725 13800
Wire Wire Line
	22725 13800 22975 13800
Wire Wire Line
	21250 13800 22725 13800
Wire Wire Line
	21950 14200 21950 13700
Connection ~ 21950 13700
Wire Wire Line
	21950 13700 22975 13700
$EndSCHEMATC
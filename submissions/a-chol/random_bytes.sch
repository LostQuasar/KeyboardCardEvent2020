EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:USB_C_Receptacle J1
U 1 1 5E8B387C
P 1075 1775
F 0 "J1" H 1182 3042 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1182 2951 50  0000 C CNN
F 2 "Project:USB-C_onboard_pins" H 1225 1775 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1225 1775 50  0001 C CNN
	1    1075 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 1475 1825 1475
Wire Wire Line
	1825 1475 1825 1575
Wire Wire Line
	1675 1575 1825 1575
Wire Wire Line
	1675 1275 1675 1375
$Comp
L power:+5V #PWR0101
U 1 1 5E8B9FAB
P 3450 775
F 0 "#PWR0101" H 3450 625 50  0001 C CNN
F 1 "+5V" H 3465 948 50  0000 C CNN
F 2 "" H 3450 775 50  0001 C CNN
F 3 "" H 3450 775 50  0001 C CNN
	1    3450 775 
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5E8B5D2B
P 3550 2825
F 0 "U1" H 3550 936 50  0000 C CNN
F 1 "ATmega32U4-AU" H 3550 845 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3550 2825 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 3550 2825 50  0001 C CNN
	1    3550 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1025 3650 950 
Wire Wire Line
	3650 950  3550 950 
Wire Wire Line
	3450 950  3450 800 
Wire Wire Line
	3450 1025 3450 950 
Connection ~ 3450 950 
Wire Wire Line
	3550 1025 3550 950 
Connection ~ 3550 950 
Wire Wire Line
	3550 950  3450 950 
$Comp
L power:GND #PWR0102
U 1 1 5E8BBD03
P 3450 4875
F 0 "#PWR0102" H 3450 4625 50  0001 C CNN
F 1 "GND" H 3455 4702 50  0000 C CNN
F 2 "" H 3450 4875 50  0001 C CNN
F 3 "" H 3450 4875 50  0001 C CNN
	1    3450 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4625 3450 4725
Wire Wire Line
	3550 4625 3550 4725
Wire Wire Line
	3550 4725 3450 4725
Connection ~ 3450 4725
Wire Wire Line
	3450 4725 3450 4875
$Comp
L Device:R_Small R1
U 1 1 5E8BCF1F
P 4700 3525
F 0 "R1" H 4759 3571 50  0000 L CNN
F 1 "10k" H 4759 3480 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4700 3525 50  0001 C CNN
F 3 "~" H 4700 3525 50  0001 C CNN
	1    4700 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3425 4700 3425
$Comp
L power:GND #PWR0103
U 1 1 5E8BDE28
P 4700 3625
F 0 "#PWR0103" H 4700 3375 50  0001 C CNN
F 1 "GND" H 4705 3452 50  0000 C CNN
F 2 "" H 4700 3625 50  0001 C CNN
F 3 "" H 4700 3625 50  0001 C CNN
	1    4700 3625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E8BEA39
P 2800 2325
F 0 "R2" V 2604 2325 50  0000 C CNN
F 1 "22" V 2695 2325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2800 2325 50  0001 C CNN
F 3 "~" H 2800 2325 50  0001 C CNN
	1    2800 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E8BF640
P 2600 2425
F 0 "R3" V 2404 2425 50  0000 C CNN
F 1 "22" V 2495 2425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2600 2425 50  0001 C CNN
F 3 "~" H 2600 2425 50  0001 C CNN
	1    2600 2425
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2325 2950 2325
Wire Wire Line
	2275 2425 2500 2425
Wire Wire Line
	2700 2425 2950 2425
$Comp
L Device:C_Small C1
U 1 1 5E8C14FA
P 2500 2725
F 0 "C1" H 2592 2771 50  0000 L CNN
F 1 "1uF" H 2592 2680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2500 2725 50  0001 C CNN
F 3 "~" H 2500 2725 50  0001 C CNN
	1    2500 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2625 2500 2625
$Comp
L power:GND #PWR0104
U 1 1 5E8C237A
P 2500 2825
F 0 "#PWR0104" H 2500 2575 50  0001 C CNN
F 1 "GND" H 2505 2652 50  0000 C CNN
F 2 "" H 2500 2825 50  0001 C CNN
F 3 "" H 2500 2825 50  0001 C CNN
	1    2500 2825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E8C2C6F
P 1575 3500
F 0 "C2" H 1667 3546 50  0000 L CNN
F 1 "0.1uF" H 1667 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1575 3500 50  0001 C CNN
F 3 "~" H 1575 3500 50  0001 C CNN
	1    1575 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E8C327D
P 1850 3500
F 0 "C3" H 1942 3546 50  0000 L CNN
F 1 "0.1uF" H 1942 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1850 3500 50  0001 C CNN
F 3 "~" H 1850 3500 50  0001 C CNN
	1    1850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E8C3836
P 2100 3500
F 0 "C4" H 2192 3546 50  0000 L CNN
F 1 "0.1uF" H 2192 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2100 3500 50  0001 C CNN
F 3 "~" H 2100 3500 50  0001 C CNN
	1    2100 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E8C409D
P 2350 3500
F 0 "C5" H 2442 3546 50  0000 L CNN
F 1 "10uF" H 2442 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2350 3500 50  0001 C CNN
F 3 "~" H 2350 3500 50  0001 C CNN
	1    2350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3400 2100 3400
Connection ~ 1850 3400
Wire Wire Line
	1850 3400 1575 3400
Connection ~ 2100 3400
Wire Wire Line
	2100 3400 1975 3400
Wire Wire Line
	1975 3400 1975 3225
Connection ~ 1975 3400
Wire Wire Line
	1975 3400 1850 3400
Wire Wire Line
	1575 3600 1850 3600
Wire Wire Line
	1975 3600 1975 3750
Connection ~ 1850 3600
Wire Wire Line
	1850 3600 1975 3600
Wire Wire Line
	1975 3600 2100 3600
Connection ~ 1975 3600
Connection ~ 2100 3600
Wire Wire Line
	2100 3600 2350 3600
$Comp
L power:GND #PWR0105
U 1 1 5E8C6FA2
P 1975 3750
F 0 "#PWR0105" H 1975 3500 50  0001 C CNN
F 1 "GND" H 1980 3577 50  0000 C CNN
F 2 "" H 1975 3750 50  0001 C CNN
F 3 "" H 1975 3750 50  0001 C CNN
	1    1975 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5E8C7A36
P 1975 3225
F 0 "#PWR0106" H 1975 3075 50  0001 C CNN
F 1 "+5V" H 1990 3398 50  0000 C CNN
F 2 "" H 1975 3225 50  0001 C CNN
F 3 "" H 1975 3225 50  0001 C CNN
	1    1975 3225
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5E8CCEAF
P 2650 2075
F 0 "#PWR0107" H 2650 1925 50  0001 C CNN
F 1 "+5V" H 2665 2248 50  0000 C CNN
F 2 "" H 2650 2075 50  0001 C CNN
F 3 "" H 2650 2075 50  0001 C CNN
	1    2650 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2125 2650 2125
Wire Wire Line
	2650 2125 2650 2075
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5E8CE426
P 2725 1625
F 0 "Y1" V 2679 1769 50  0000 L CNN
F 1 "16MHz" V 2770 1769 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 2725 1625 50  0001 C CNN
F 3 "~" H 2725 1625 50  0001 C CNN
	1    2725 1625
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 1725 2950 1725
$Comp
L Device:C_Small C6
U 1 1 5E8D16BB
P 2475 1525
F 0 "C6" V 2246 1525 50  0000 C CNN
F 1 "22pF" V 2337 1525 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2475 1525 50  0001 C CNN
F 3 "~" H 2475 1525 50  0001 C CNN
	1    2475 1525
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5E8D336D
P 2475 1725
F 0 "C12" V 2246 1725 50  0000 C CNN
F 1 "22pF" V 2337 1725 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2475 1725 50  0001 C CNN
F 3 "~" H 2475 1725 50  0001 C CNN
	1    2475 1725
	0    1    1    0   
$EndComp
Connection ~ 2725 1725
Connection ~ 2725 1525
Wire Wire Line
	2725 1525 2950 1525
Wire Wire Line
	2375 1525 2375 1725
Connection ~ 2375 1725
Wire Wire Line
	2375 1725 2375 1875
Wire Wire Line
	2825 1625 2825 1875
Wire Wire Line
	2375 1875 2475 1875
Wire Wire Line
	2575 1525 2725 1525
Wire Wire Line
	2575 1725 2725 1725
Wire Wire Line
	2625 1625 2625 1875
Connection ~ 2625 1875
Wire Wire Line
	2625 1875 2825 1875
Wire Wire Line
	2475 1875 2475 1950
Connection ~ 2475 1875
Wire Wire Line
	2475 1875 2625 1875
$Comp
L power:GND #PWR0108
U 1 1 5E8E1C4D
P 2475 1950
F 0 "#PWR0108" H 2475 1700 50  0001 C CNN
F 1 "GND" H 2480 1777 50  0000 C CNN
F 2 "" H 2475 1950 50  0001 C CNN
F 3 "" H 2475 1950 50  0001 C CNN
	1    2475 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E8E26D1
P 2950 900
F 0 "R4" H 2891 854 50  0000 R CNN
F 1 "10k" H 2891 945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2950 900 50  0001 C CNN
F 3 "~" H 2950 900 50  0001 C CNN
	1    2950 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 800  3450 800 
Connection ~ 3450 800 
Wire Wire Line
	3450 800  3450 775 
$Comp
L Connector:TestPoint RST_Pad1
U 1 1 5E8E514C
P 2725 1075
F 0 "RST_Pad1" H 2783 1193 50  0000 L CNN
F 1 "TestPoint" H 2783 1102 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2925 1075 50  0001 C CNN
F 3 "~" H 2925 1075 50  0001 C CNN
	1    2725 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 1075 2950 1075
Wire Wire Line
	2950 1000 2950 1075
Connection ~ 2950 1075
Wire Wire Line
	2950 1075 2950 1325
$Comp
L Connector:TestPoint GND_Pad1
U 1 1 5E8E6C65
P 2600 1075
F 0 "GND_Pad1" H 2658 1193 50  0000 L CNN
F 1 "TestPoint" H 2658 1102 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2800 1075 50  0001 C CNN
F 3 "~" H 2800 1075 50  0001 C CNN
	1    2600 1075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5E8E76C4
P 2600 1075
F 0 "#PWR0109" H 2600 825 50  0001 C CNN
F 1 "GND" H 2605 902 50  0000 C CNN
F 2 "" H 2600 1075 50  0001 C CNN
F 3 "" H 2600 1075 50  0001 C CNN
	1    2600 1075
	1    0    0    -1  
$EndComp
Text GLabel 2275 2425 0    50   Input ~ 0
D-
Wire Wire Line
	2275 2325 2700 2325
Text GLabel 1675 1325 2    50   Input ~ 0
D-
Text GLabel 2275 2325 0    50   Input ~ 0
D+
Text GLabel 1825 1525 2    50   Input ~ 0
D+
$Comp
L Device:Polyfuse_Small F1
U 1 1 5E8EE239
P 2050 775
F 0 "F1" V 1845 775 50  0000 C CNN
F 1 "Polyfuse_Small" V 1936 775 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2100 575 50  0001 L CNN
F 3 "~" H 2050 775 50  0001 C CNN
	1    2050 775 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 5E8EF1AC
P 1725 775
F 0 "#PWR0110" H 1725 625 50  0001 C CNN
F 1 "VCC" H 1742 948 50  0000 C CNN
F 2 "" H 1725 775 50  0001 C CNN
F 3 "" H 1725 775 50  0001 C CNN
	1    1725 775 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5E8EFDFE
P 2400 775
F 0 "#PWR0111" H 2400 625 50  0001 C CNN
F 1 "+5V" H 2415 948 50  0000 C CNN
F 2 "" H 2400 775 50  0001 C CNN
F 3 "" H 2400 775 50  0001 C CNN
	1    2400 775 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 775  1725 775 
Connection ~ 1725 775 
Wire Wire Line
	1725 775  1950 775 
Wire Wire Line
	2150 775  2400 775 
$Comp
L power:GND #PWR0112
U 1 1 5E8F2911
P 1075 3375
F 0 "#PWR0112" H 1075 3125 50  0001 C CNN
F 1 "GND" H 1080 3202 50  0000 C CNN
F 2 "" H 1075 3375 50  0001 C CNN
F 3 "" H 1075 3375 50  0001 C CNN
	1    1075 3375
	1    0    0    -1  
$EndComp
Text GLabel 5350 975  1    50   Input ~ 0
18V
$Comp
L power:GND #PWR0113
U 1 1 5E8FDDD7
P 7125 925
F 0 "#PWR0113" H 7125 675 50  0001 C CNN
F 1 "GND" H 7130 752 50  0000 C CNN
F 2 "" H 7125 925 50  0001 C CNN
F 3 "" H 7125 925 50  0001 C CNN
	1    7125 925 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5E8FEB7E
P 5525 1200
F 0 "R5" V 5329 1200 50  0000 C CNN
F 1 "4.7k" V 5420 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5525 1200 50  0001 C CNN
F 3 "~" H 5525 1200 50  0001 C CNN
	1    5525 1200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5E8FF5B8
P 5725 1375
F 0 "C8" H 5817 1421 50  0000 L CNN
F 1 "0.01uF" H 5817 1330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5725 1375 50  0001 C CNN
F 3 "~" H 5725 1375 50  0001 C CNN
	1    5725 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 1200 5725 1200
Wire Wire Line
	5725 1200 5725 1275
Connection ~ 5725 1200
Wire Wire Line
	5425 1200 5425 1025
Wire Wire Line
	5425 975  5350 975 
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E90633C
P 6250 1400
F 0 "Q2" H 6441 1354 50  0000 L CNN
F 1 "2N3904" H 6441 1445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6450 1325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6250 1400 50  0001 L CNN
	1    6250 1400
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5E90A0FA
P 6650 1400
F 0 "Q3" H 6840 1446 50  0000 L CNN
F 1 "MMBT3904 " H 6840 1355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6850 1325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6650 1400 50  0001 L CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 1200 6150 1200
Wire Wire Line
	6150 1200 6750 1200
Connection ~ 6150 1200
Wire Wire Line
	6750 1600 7250 1600
Wire Wire Line
	7125 925  7125 825 
Wire Wire Line
	7125 825  7250 825 
Wire Wire Line
	7250 825  7250 1025
$Comp
L Device:R_Small R6
U 1 1 5E910F3E
P 5625 1625
F 0 "R6" V 5429 1625 50  0000 C CNN
F 1 "1M" V 5520 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5625 1625 50  0001 C CNN
F 3 "~" H 5625 1625 50  0001 C CNN
	1    5625 1625
	0    1    1    0   
$EndComp
Wire Wire Line
	5425 1200 5425 1625
Wire Wire Line
	5425 1625 5525 1625
Connection ~ 5425 1200
Wire Wire Line
	5725 1625 5725 1475
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E9168A4
P 6100 1825
F 0 "Q1" H 6290 1779 50  0000 L CNN
F 1 "MMBT3904" H 6290 1870 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6300 1750 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6100 1825 50  0001 L CNN
	1    6100 1825
	1    0    0    1   
$EndComp
Connection ~ 6750 1600
Text GLabel 6200 2100 3    50   Input ~ 0
RAND
Wire Wire Line
	5725 1625 5725 1825
Connection ~ 5725 1625
Wire Wire Line
	6200 1600 6200 1625
Wire Wire Line
	6200 1600 6750 1600
Wire Wire Line
	5725 1825 5900 1825
$Comp
L Device:C_Small C9
U 1 1 5E92E5E3
P 5775 1025
F 0 "C9" V 5546 1025 50  0000 C CNN
F 1 "0.01uF" V 5637 1025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5775 1025 50  0001 C CNN
F 3 "~" H 5775 1025 50  0001 C CNN
	1    5775 1025
	0    1    1    0   
$EndComp
Wire Wire Line
	5425 1025 5675 1025
Connection ~ 5425 1025
Wire Wire Line
	5425 1025 5425 975 
Wire Wire Line
	5875 1025 7250 1025
Connection ~ 7250 1025
Wire Wire Line
	7250 1025 7250 1600
$Comp
L Device:D_Zener_Small D1
U 1 1 5E931E50
P 6400 2050
F 0 "D1" H 6400 1845 50  0000 C CNN
F 1 "D_Zener_Small" H 6400 1936 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 6400 2050 50  0001 C CNN
F 3 "~" V 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2025 6200 2050
Wire Wire Line
	6300 2050 6200 2050
Connection ~ 6200 2050
Wire Wire Line
	6200 2050 6200 2100
Wire Wire Line
	6500 2050 7250 2050
Wire Wire Line
	7250 2050 7250 1600
Connection ~ 7250 1600
$Comp
L power:+5V #PWR0114
U 1 1 5E9417EE
P 5250 2800
F 0 "#PWR0114" H 5250 2650 50  0001 C CNN
F 1 "+5V" H 5265 2973 50  0000 C CNN
F 2 "" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3225 5600 3225
$Comp
L Regulator_Switching:TPS61041DBV U2
U 1 1 5E93CD93
P 5975 3325
F 0 "U2" H 5975 3692 50  0000 C CNN
F 1 "TPS61041DBV" H 5975 3601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6075 3075 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps61040.pdf" H 5775 3625 50  0001 C CNN
	1    5975 3325
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5E9465FC
P 5575 2900
F 0 "L1" V 5394 2900 50  0000 C CNN
F 1 "10µH" V 5485 2900 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 5575 2900 50  0001 C CNN
F 3 "~" H 5575 2900 50  0001 C CNN
	1    5575 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2800 5250 2900
Wire Wire Line
	5475 2900 5250 2900
Connection ~ 5250 2900
Wire Wire Line
	5250 2900 5250 3225
$Comp
L Device:D_Schottky D2
U 1 1 5E94CEB6
P 6525 2900
F 0 "D2" H 6525 2684 50  0000 C CNN
F 1 "D_Schottky" H 6525 2775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6525 2900 50  0001 C CNN
F 3 "~" H 6525 2900 50  0001 C CNN
	1    6525 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5E94E1AF
P 6725 3050
F 0 "R8" H 6784 3096 50  0000 L CNN
F 1 "2.2M" H 6784 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6725 3050 50  0001 C CNN
F 3 "~" H 6725 3050 50  0001 C CNN
	1    6725 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5E94E83D
P 7025 3050
F 0 "C10" V 6796 3050 50  0000 C CNN
F 1 "22pF" V 6887 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7025 3050 50  0001 C CNN
F 3 "~" H 7025 3050 50  0001 C CNN
	1    7025 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5E94EFF1
P 7400 3375
F 0 "C11" V 7171 3375 50  0000 C CNN
F 1 "1µF" V 7262 3375 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7400 3375 50  0001 C CNN
F 3 "~" H 7400 3375 50  0001 C CNN
	1    7400 3375
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5E952790
P 6400 3525
F 0 "R7" H 6459 3571 50  0000 L CNN
F 1 "160k" H 6459 3480 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6400 3525 50  0001 C CNN
F 3 "~" H 6400 3525 50  0001 C CNN
	1    6400 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E952AB6
P 5250 3450
F 0 "C7" V 5021 3450 50  0000 C CNN
F 1 "4.7µF" V 5112 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5250 3450 50  0001 C CNN
F 3 "~" H 5250 3450 50  0001 C CNN
	1    5250 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6675 2900 6725 2900
Wire Wire Line
	6725 2900 6725 2950
Wire Wire Line
	5250 3225 5250 3350
Connection ~ 5250 3225
Wire Wire Line
	5250 3625 5975 3625
Wire Wire Line
	5250 3550 5250 3625
Wire Wire Line
	5975 3625 6400 3625
Connection ~ 5975 3625
Wire Wire Line
	6400 3625 7400 3625
Wire Wire Line
	7400 3625 7400 3475
Connection ~ 6400 3625
Wire Wire Line
	7400 3625 7400 3750
Connection ~ 7400 3625
Wire Wire Line
	6275 3325 6400 3325
Wire Wire Line
	6725 3325 6725 3150
Connection ~ 6400 3325
Wire Wire Line
	6400 3325 6725 3325
Wire Wire Line
	6400 3325 6400 3425
Wire Wire Line
	6725 3325 7025 3325
Wire Wire Line
	7025 3325 7025 3150
Connection ~ 6725 3325
Wire Wire Line
	7025 2950 7025 2900
Wire Wire Line
	7025 2900 6725 2900
Connection ~ 6725 2900
Wire Wire Line
	6375 2900 6375 3225
Wire Wire Line
	6375 3225 6275 3225
Wire Wire Line
	5675 2900 6375 2900
Connection ~ 6375 2900
Wire Wire Line
	7025 2900 7400 2900
Connection ~ 7025 2900
$Comp
L power:GND #PWR0115
U 1 1 5E980A13
P 7400 3750
F 0 "#PWR0115" H 7400 3500 50  0001 C CNN
F 1 "GND" H 7405 3577 50  0000 C CNN
F 2 "" H 7400 3750 50  0001 C CNN
F 3 "" H 7400 3750 50  0001 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
Text GLabel 7425 2900 2    50   Input ~ 0
18V
Wire Wire Line
	7400 3275 7400 2900
Connection ~ 7400 2900
Wire Wire Line
	7400 2900 7425 2900
Wire Wire Line
	5600 3225 5600 3325
Wire Wire Line
	5600 3325 5675 3325
Connection ~ 5600 3225
Wire Wire Line
	5600 3225 5675 3225
Text GLabel 4150 2925 2    50   Input ~ 0
RAND
Text GLabel 4150 1925 2    50   Input ~ 0
CAP_VAL
Text GLabel 4150 1825 2    50   Input ~ 0
CAP_POWER
Text GLabel 9100 1525 1    50   Input ~ 0
CAP_VAL
Text GLabel 9475 1525 1    50   Input ~ 0
CAP_POWER
$Comp
L Device:R_Small R9
U 1 1 5E8E2EF8
P 9275 1725
F 0 "R9" V 9079 1725 50  0000 C CNN
F 1 "1M" V 9170 1725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9275 1725 50  0001 C CNN
F 3 "~" H 9275 1725 50  0001 C CNN
	1    9275 1725
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1525 9100 1725
Wire Wire Line
	9100 1725 9175 1725
Wire Wire Line
	9475 1725 9475 1525
$Comp
L Connector:TestPoint CapSensor1
U 1 1 5E8E9C99
P 9425 1725
F 0 "CapSensor1" H 9367 1751 50  0000 R CNN
F 1 " " H 9367 1842 50  0000 R CNN
F 2 "Project:Capacitive_circular_pad" H 9625 1725 50  0001 C CNN
F 3 "~" H 9625 1725 50  0001 C CNN
	1    9425 1725
	-1   0    0    1   
$EndComp
Wire Wire Line
	9475 1725 9425 1725
Connection ~ 9425 1725
Wire Wire Line
	9425 1725 9375 1725
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 5E929B76
P 5125 4125
F 0 "SW1" H 5125 4592 50  0000 C CNN
F 1 "SW_DIP_x04" H 5125 4501 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx04_Slide_6.7x11.72mm_W6.73mm_P2.54mm_LowProfile_JPin" H 5125 4125 50  0001 C CNN
F 3 "~" H 5125 4125 50  0001 C CNN
	1    5125 4125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E92C2F3
P 5500 4425
F 0 "#PWR0116" H 5500 4175 50  0001 C CNN
F 1 "GND" H 5505 4252 50  0000 C CNN
F 2 "" H 5500 4425 50  0001 C CNN
F 3 "" H 5500 4425 50  0001 C CNN
	1    5500 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4425 5500 4225
Wire Wire Line
	5500 3925 5425 3925
Wire Wire Line
	5425 4025 5500 4025
Connection ~ 5500 4025
Wire Wire Line
	5500 4025 5500 3925
Wire Wire Line
	5425 4125 5500 4125
Connection ~ 5500 4125
Wire Wire Line
	5500 4125 5500 4025
Wire Wire Line
	5425 4225 5500 4225
Connection ~ 5500 4225
Wire Wire Line
	5500 4225 5500 4125
Wire Wire Line
	4825 3925 4150 3925
Wire Wire Line
	4150 4025 4825 4025
Wire Wire Line
	4825 4125 4150 4125
Wire Wire Line
	4150 4225 4825 4225
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L MCU_Microchip_ATmega:ATmega16U2-MU U1
U 1 1 5EDFACF9
P 3350 3900
F 0 "U1" H 2700 2550 50  0000 C CNN
F 1 "ATmega16U2-MU" H 2700 2450 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 3350 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc7799.pdf" H 3350 3900 50  0001 C CNN
F 4 "C17317" H 3350 3900 50  0001 C CNN "lcsc"
	1    3350 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EDFB9A6
P 2450 3400
F 0 "R1" V 2350 3400 50  0000 C CNN
F 1 "22" V 2450 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2380 3400 50  0001 C CNN
F 3 "~" H 2450 3400 50  0001 C CNN
F 4 "C25092" H 2450 3400 50  0001 C CNN "lcsc"
	1    2450 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EDFC46E
P 2450 3500
F 0 "R2" V 2350 3500 50  0000 C CNN
F 1 "22" V 2450 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2380 3500 50  0001 C CNN
F 3 "~" H 2450 3500 50  0001 C CNN
F 4 "C25092" H 2450 3500 50  0001 C CNN "lcsc"
	1    2450 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5EE000F4
P 1750 3250
F 0 "Y1" H 1550 3300 50  0000 R CNN
F 1 "Crystal_GND24" H 1550 3200 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1750 3250 50  0001 C CNN
F 3 "~" H 1750 3250 50  0001 C CNN
F 4 "C13738" H 1750 3250 50  0001 C CNN "lcsc"
	1    1750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3650 1750 3450
Wire Wire Line
	1750 3650 1900 3650
Connection ~ 1750 3650
Wire Wire Line
	1600 3650 1750 3650
$Comp
L power:GND #PWR011
U 1 1 5EDFFCA8
P 1750 3650
F 0 "#PWR011" H 1750 3400 50  0001 C CNN
F 1 "GND" H 1755 3477 50  0000 C CNN
F 2 "" H 1750 3650 50  0001 C CNN
F 3 "" H 1750 3650 50  0001 C CNN
	1    1750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3250 1900 3350
Wire Wire Line
	1600 3350 1600 3250
$Comp
L Device:C C5
U 1 1 5EDFEA14
P 1600 3500
F 0 "C5" H 1500 3550 50  0000 R CNN
F 1 "10pf" H 1500 3450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1638 3350 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
F 4 "C32949" H 1600 3500 50  0001 C CNN "lcsc"
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EDFD4B0
P 1900 3500
F 0 "C6" H 2000 3550 50  0000 L CNN
F 1 "10pf" H 2000 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1938 3350 50  0001 C CNN
F 3 "~" H 1900 3500 50  0001 C CNN
F 4 "C32949" H 1900 3500 50  0001 C CNN "lcsc"
	1    1900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3050 1750 3450
Connection ~ 1750 3450
$Comp
L Device:R R4
U 1 1 5EE0490F
P 7050 4500
F 0 "R4" V 6950 4500 50  0000 C CNN
F 1 "330" V 7050 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6980 4500 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
F 4 "C25890" H 7050 4500 50  0001 C CNN "lcsc"
	1    7050 4500
	0    1    1    0   
$EndComp
Text Label 2650 2800 2    50   ~ 0
RST
Text Label 2650 3400 1    50   ~ 0
D+
Text Label 2650 3500 3    50   ~ 0
D-
Wire Wire Line
	2650 3400 2600 3400
Wire Wire Line
	2600 3500 2650 3500
Text Label 2300 3400 1    50   ~ 0
DB+
Text Label 2300 3500 3    50   ~ 0
DB-
Wire Wire Line
	2650 3000 1600 3000
Wire Wire Line
	1600 3000 1600 3250
Connection ~ 1600 3250
Wire Wire Line
	2650 3200 1900 3200
Wire Wire Line
	1900 3200 1900 3250
Connection ~ 1900 3250
$Comp
L Device:C C1
U 1 1 5EE0D566
P 3150 1750
F 0 "C1" H 3250 1800 50  0000 L CNN
F 1 "10u" H 3250 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3188 1600 50  0001 C CNN
F 3 "~" H 3150 1750 50  0001 C CNN
F 4 "C15525" H 3150 1750 50  0001 C CNN "lcsc"
	1    3150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EE0D973
P 3550 1750
F 0 "C2" H 3650 1800 50  0000 L CNN
F 1 "100n" H 3650 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3588 1600 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
F 4 "C1525" H 3550 1750 50  0001 C CNN "lcsc"
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EE0E0DD
P 3950 1750
F 0 "C3" H 4050 1800 50  0000 L CNN
F 1 "100n" H 4050 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3988 1600 50  0001 C CNN
F 3 "~" H 3950 1750 50  0001 C CNN
F 4 "C1525" H 3950 1750 50  0001 C CNN "lcsc"
	1    3950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EE0E482
P 4350 1750
F 0 "C4" H 4450 1800 50  0000 L CNN
F 1 "100n" H 4450 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4388 1600 50  0001 C CNN
F 3 "~" H 4350 1750 50  0001 C CNN
F 4 "C1525" H 4350 1750 50  0001 C CNN "lcsc"
	1    4350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1600 3150 1600
Wire Wire Line
	3150 1900 3550 1900
$Comp
L power:GND #PWR06
U 1 1 5EE0ED25
P 3150 1900
F 0 "#PWR06" H 3150 1650 50  0001 C CNN
F 1 "GND" H 3155 1727 50  0000 C CNN
F 2 "" H 3150 1900 50  0001 C CNN
F 3 "" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
Connection ~ 3150 1900
Text HLabel 4050 2800 2    50   Input ~ 0
B0
Text HLabel 4050 2900 2    50   Input ~ 0
B1
Text HLabel 4050 3000 2    50   Input ~ 0
B2
Text HLabel 4050 3100 2    50   Input ~ 0
B3
Text HLabel 4050 3200 2    50   Input ~ 0
B4
Text HLabel 4050 3300 2    50   Input ~ 0
B5
Text HLabel 4050 3400 2    50   Input ~ 0
B6
Text HLabel 4050 3500 2    50   Input ~ 0
B7
Text HLabel 4050 3700 2    50   Input ~ 0
C2
Text HLabel 4050 3800 2    50   Input ~ 0
C4
Text HLabel 4050 3900 2    50   Input ~ 0
C5
Text HLabel 4050 4000 2    50   Input ~ 0
C6
Text HLabel 4050 4100 2    50   Input ~ 0
C7
Text HLabel 4050 4300 2    50   Input ~ 0
D0
Text HLabel 4050 4400 2    50   Input ~ 0
D1
Text HLabel 4050 4500 2    50   Input ~ 0
D2
Text HLabel 4050 4600 2    50   Input ~ 0
D3
Text HLabel 4050 4700 2    50   Input ~ 0
D4
Text HLabel 4050 4800 2    50   Input ~ 0
D5
Text HLabel 4050 4900 2    50   Input ~ 0
D6
$Comp
L Device:R R5
U 1 1 5EE1294B
P 4200 5000
F 0 "R5" V 4100 5000 50  0000 C CNN
F 1 "10k" V 4200 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4130 5000 50  0001 C CNN
F 3 "~" H 4200 5000 50  0001 C CNN
F 4 "C25744" H 4200 5000 50  0001 C CNN "lcsc"
	1    4200 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EE13462
P 4350 5000
F 0 "#PWR016" H 4350 4750 50  0001 C CNN
F 1 "GND" H 4355 4827 50  0000 C CNN
F 2 "" H 4350 5000 50  0001 C CNN
F 3 "" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EE13FE7
P 3350 5300
F 0 "#PWR017" H 3350 5050 50  0001 C CNN
F 1 "GND" H 3355 5127 50  0000 C CNN
F 2 "" H 3350 5300 50  0001 C CNN
F 3 "" H 3350 5300 50  0001 C CNN
	1    3350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5300 3250 5300
Connection ~ 3350 5300
Text Label 4250 2850 0    50   ~ 0
SCK
Wire Wire Line
	4250 2850 4050 2850
Wire Wire Line
	4050 2850 4050 2900
Text Label 4250 2950 0    50   ~ 0
MOSI
Text Label 4250 3050 0    50   ~ 0
MISO
Wire Wire Line
	4250 2950 4050 2950
Wire Wire Line
	4050 2950 4050 3000
Wire Wire Line
	4250 3050 4050 3050
Wire Wire Line
	4050 3050 4050 3100
$Comp
L power:+5V #PWR013
U 1 1 5EE1697A
P 7200 4200
F 0 "#PWR013" H 7200 4050 50  0001 C CNN
F 1 "+5V" H 7215 4373 50  0000 C CNN
F 2 "" H 7200 4200 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 5EE1AA34
P 6200 3100
AR Path="/5EE1AA34" Ref="J1"  Part="1" 
AR Path="/5EDFABB7/5EE1AA34" Ref="J1"  Part="1" 
F 0 "J1" H 5921 3196 50  0000 R CNN
F 1 "AVR-ISP-6" H 5921 3105 50  0000 R CNN
F 2 "crokto2:2x3-jumper" V 5950 3150 50  0001 C CNN
F 3 " ~" H 4925 2550 50  0001 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
Text Label 6600 3100 0    50   ~ 0
SCK
Text Label 6600 3000 0    50   ~ 0
MOSI
Text Label 6600 2900 0    50   ~ 0
MISO
Text Label 6600 3200 0    50   ~ 0
RST
$Comp
L power:GND #PWR010
U 1 1 5EE1B2B9
P 6100 3500
F 0 "#PWR010" H 6100 3250 50  0001 C CNN
F 1 "GND" H 6105 3327 50  0000 C CNN
F 2 "" H 6100 3500 50  0001 C CNN
F 3 "" H 6100 3500 50  0001 C CNN
	1    6100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5EE1B8A6
P 6100 2600
F 0 "#PWR09" H 6100 2450 50  0001 C CNN
F 1 "+5V" H 6115 2773 50  0000 C CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Text HLabel 6850 1150 2    50   Input ~ 0
5V
$Comp
L power:+5V #PWR01
U 1 1 5EE1BEA7
P 6850 1150
F 0 "#PWR01" H 6850 1000 50  0001 C CNN
F 1 "+5V" V 6865 1278 50  0000 L CNN
F 2 "" H 6850 1150 50  0001 C CNN
F 3 "" H 6850 1150 50  0001 C CNN
	1    6850 1150
	0    -1   -1   0   
$EndComp
Text HLabel 6850 1250 2    50   Input ~ 0
GND
$Comp
L power:GND #PWR02
U 1 1 5EE1C796
P 6850 1250
F 0 "#PWR02" H 6850 1000 50  0001 C CNN
F 1 "GND" V 6855 1122 50  0000 R CNN
F 2 "" H 6850 1250 50  0001 C CNN
F 3 "" H 6850 1250 50  0001 C CNN
	1    6850 1250
	0    1    1    0   
$EndComp
Text HLabel 6900 1500 2    50   Input ~ 0
DB+
Text HLabel 6900 1600 2    50   Input ~ 0
DB-
Text Label 6900 1500 2    50   ~ 0
DB+
Text Label 6900 1600 2    50   ~ 0
DB-
$Comp
L Device:R R3
U 1 1 5EE1FEE7
P 7200 4350
F 0 "R3" V 7100 4350 50  0000 C CNN
F 1 "4.7K" V 7200 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7130 4350 50  0001 C CNN
F 3 "~" H 7200 4350 50  0001 C CNN
F 4 "C25900" H 7200 4350 50  0001 C CNN "lcsc"
	1    7200 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5EE206CA
P 7200 4650
F 0 "C8" H 7300 4700 50  0000 L CNN
F 1 "100n" H 7300 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7238 4500 50  0001 C CNN
F 3 "~" H 7200 4650 50  0001 C CNN
F 4 "C1525" H 7200 4650 50  0001 C CNN "lcsc"
	1    7200 4650
	1    0    0    -1  
$EndComp
Connection ~ 7200 4500
$Comp
L power:GND #PWR015
U 1 1 5EE20F15
P 7200 4800
F 0 "#PWR015" H 7200 4550 50  0001 C CNN
F 1 "GND" H 7205 4627 50  0000 C CNN
F 2 "" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
Text Label 6900 4500 1    50   ~ 0
RST
$Comp
L power:GND #PWR012
U 1 1 5EE22C89
P 2650 4000
F 0 "#PWR012" H 2650 3750 50  0001 C CNN
F 1 "GND" H 2655 3827 50  0000 C CNN
F 2 "" H 2650 4000 50  0001 C CNN
F 3 "" H 2650 4000 50  0001 C CNN
	1    2650 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EE247A7
P 2650 3850
F 0 "C7" H 2550 3900 50  0000 R CNN
F 1 "1u" H 2550 3800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2688 3700 50  0001 C CNN
F 3 "~" H 2650 3850 50  0001 C CNN
F 4 "C52923" H 2650 3850 50  0001 C CNN "lcsc"
	1    2650 3850
	1    0    0    -1  
$EndComp
Text Label 3250 2500 1    50   ~ 0
UVCC
Text Label 3350 2500 1    50   ~ 0
VCC
Text Label 3450 2500 1    50   ~ 0
AVCC
Text Label 4350 1600 0    50   ~ 0
AVCC
$Comp
L power:+5V #PWR04
U 1 1 5EE2552F
P 4350 1500
F 0 "#PWR04" H 4350 1350 50  0001 C CNN
F 1 "+5V" H 4365 1673 50  0000 C CNN
F 2 "" H 4350 1500 50  0001 C CNN
F 3 "" H 4350 1500 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1500 4350 1600
Text Label 3950 1600 0    50   ~ 0
VCC
$Comp
L power:+5V #PWR03
U 1 1 5EE26620
P 3950 1500
F 0 "#PWR03" H 3950 1350 50  0001 C CNN
F 1 "+5V" H 3965 1673 50  0000 C CNN
F 2 "" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1500 3950 1600
$Comp
L power:GND #PWR07
U 1 1 5EE267EE
P 3950 1900
F 0 "#PWR07" H 3950 1650 50  0001 C CNN
F 1 "GND" H 3955 1727 50  0000 C CNN
F 2 "" H 3950 1900 50  0001 C CNN
F 3 "" H 3950 1900 50  0001 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EE26AB2
P 4350 1900
F 0 "#PWR08" H 4350 1650 50  0001 C CNN
F 1 "GND" H 4355 1727 50  0000 C CNN
F 2 "" H 4350 1900 50  0001 C CNN
F 3 "" H 4350 1900 50  0001 C CNN
	1    4350 1900
	1    0    0    -1  
$EndComp
Text Label 3550 1600 1    50   ~ 0
UVCC
$Comp
L power:+5V #PWR05
U 1 1 5EE26EF1
P 3150 1600
F 0 "#PWR05" H 3150 1450 50  0001 C CNN
F 1 "+5V" H 3165 1773 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
Connection ~ 3150 1600
$EndSCHEMATC
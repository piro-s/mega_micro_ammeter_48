EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "mma_48"
Date "2023-07-11"
Rev "v0.2"
Comp "piro.tex"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R3
U 1 1 63ECD52B
P 3600 1850
F 0 "R3" H 3670 1896 50  0000 L CNN
F 1 "10k" H 3670 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 3530 1850 50  0001 C CNN
F 3 "~" H 3600 1850 50  0001 C CNN
	1    3600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 63ED28A3
P 4950 1850
F 0 "R5" H 5020 1896 50  0000 L CNN
F 1 "1k" H 5020 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 4880 1850 50  0001 C CNN
F 3 "~" H 4950 1850 50  0001 C CNN
	1    4950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 63ED4F08
P 6350 1850
F 0 "R9" H 6420 1896 50  0000 L CNN
F 1 "100" H 6420 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 6280 1850 50  0001 C CNN
F 3 "~" H 6350 1850 50  0001 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 63ED61F5
P 7700 1850
F 0 "R14" H 7770 1896 50  0000 L CNN
F 1 "10R" H 7770 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 7630 1850 50  0001 C CNN
F 3 "~" H 7700 1850 50  0001 C CNN
	1    7700 1850
	1    0    0    -1  
$EndComp
Text Label 2600 1200 0    50   ~ 0
r_1
Text Label 3950 1200 0    50   ~ 0
r_2
Text Label 5350 1200 0    50   ~ 0
r_3
Text Label 6700 1200 0    50   ~ 0
r_4
$Comp
L Device:R R18
U 1 1 63F6B6F8
P 9100 1850
F 0 "R18" H 9170 1896 50  0000 L CNN
F 1 "1R0" H 9170 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 9030 1850 50  0001 C CNN
F 3 "~" H 9100 1850 50  0001 C CNN
	1    9100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1650 9100 1700
Text Label 8100 1200 0    50   ~ 0
r_5
Wire Wire Line
	8100 1200 8250 1200
$Comp
L Transistor_FET:IRF7324 Q9
U 1 1 63F6B714
P 9000 1450
F 0 "Q9" H 9205 1404 50  0000 L CNN
F 1 "IRF7324" H 9205 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9200 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 9100 1450 50  0001 L CNN
	1    9000 1450
	1    0    0    1   
$EndComp
Text Label 2650 2100 0    50   ~ 0
v_sense_n
Text Label 9550 1200 0    50   ~ 0
r_6
$Comp
L Device:Fuse F1
U 1 1 6424BA86
P 3100 2300
F 0 "F1" H 3150 2350 50  0000 L CNN
F 1 "1A" H 3150 2250 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 3030 2300 50  0001 C CNN
F 3 "~" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 3100 2500
Wire Wire Line
	3100 2500 3100 2450
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6426D8B3
P 750 4550
F 0 "J1" H 750 4650 50  0000 C CNN
F 1 "In" H 750 4350 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 750 4550 50  0001 C CNN
F 3 "~" H 750 4550 50  0001 C CNN
	1    750  4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 4650 950  4650
Wire Wire Line
	950  4550 1400 4550
$Comp
L power:+5V #PWR08
U 1 1 64277427
P 1200 850
F 0 "#PWR08" H 1200 700 50  0001 C CNN
F 1 "+5V" H 1215 1023 50  0000 C CNN
F 2 "" H 1200 850 50  0001 C CNN
F 3 "" H 1200 850 50  0001 C CNN
	1    1200 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6427772F
P 800 1650
F 0 "#PWR05" H 800 1400 50  0001 C CNN
F 1 "GND" H 805 1477 50  0000 C CNN
F 2 "" H 800 1650 50  0001 C CNN
F 3 "" H 800 1650 50  0001 C CNN
	1    800  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3300 3050 3300
Wire Wire Line
	2600 3700 3050 3700
$Comp
L power:+5V #PWR016
U 1 1 64279ABD
P 3400 3000
F 0 "#PWR016" H 3400 2850 50  0001 C CNN
F 1 "+5V" H 3415 3173 50  0000 C CNN
F 2 "" H 3400 3000 50  0001 C CNN
F 3 "" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6427A0A5
P 3400 4000
F 0 "#PWR017" H 3400 3750 50  0001 C CNN
F 1 "GND" H 3405 3827 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4000 3400 3950
Wire Wire Line
	3400 3000 3400 3050
Wire Wire Line
	4100 3500 3800 3500
Wire Notes Line
	2950 2550 2950 2150
Wire Notes Line
	3350 2150 3350 2550
Wire Notes Line
	2950 2550 3350 2550
$Comp
L MCU_Microchip_ATmega:ATmega48-20AU U2
U 1 1 64284A0B
P 5750 4400
F 0 "U2" H 5300 5850 50  0000 C CNN
F 1 "ATmega48-20AU" H 6100 2950 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5750 4400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2545-8-bit-AVR-Microcontroller-ATmega48-88-168_Datasheet.pdf" H 5750 4400 50  0001 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
Text Notes 3650 1250 0    50   ~ 0
<10uA
Text Notes 5000 1250 0    50   ~ 0
<100uA
Text Notes 6400 1250 0    50   ~ 0
<1mA
Text Notes 7750 1250 0    50   ~ 0
<10mA
Text Notes 9150 1250 0    50   ~ 0
<100mA
Text Notes 10600 1250 0    50   ~ 0
<1A
Text Label 4100 3500 2    50   ~ 0
i_meas
Text Label 2600 3700 0    50   ~ 0
v_sense_n
Text Label 1400 4650 2    50   ~ 0
i_out
$Comp
L Connector:TestPoint TP1
U 1 1 641E9FEF
P 3800 3300
F 0 "TP1" H 3858 3418 50  0000 L CNN
F 1 "i_meas" H 3858 3327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 4000 3300 50  0001 C CNN
F 3 "~" H 4000 3300 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 641FA960
P 5750 2850
F 0 "#PWR026" H 5750 2700 50  0001 C CNN
F 1 "+5V" H 5650 3000 50  0000 C CNN
F 2 "" H 5750 2850 50  0001 C CNN
F 3 "" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2850 5850 2900
$Comp
L Device:C C2
U 1 1 64202FF2
P 750 7150
F 0 "C2" H 865 7196 50  0000 L CNN
F 1 "4.7u" H 865 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 788 7000 50  0001 C CNN
F 3 "~" H 750 7150 50  0001 C CNN
	1    750  7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 64203E2B
P 1200 7150
F 0 "C5" H 1315 7196 50  0000 L CNN
F 1 "100n" H 1315 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1238 7000 50  0001 C CNN
F 3 "~" H 1200 7150 50  0001 C CNN
	1    1200 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6420433A
P 1650 7150
F 0 "C6" H 1765 7196 50  0000 L CNN
F 1 "100n" H 1765 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1688 7000 50  0001 C CNN
F 3 "~" H 1650 7150 50  0001 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 642049FD
P 4050 6000
F 0 "C14" H 4165 6046 50  0000 L CNN
F 1 "100n" H 4165 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4088 5850 50  0001 C CNN
F 3 "~" H 4050 6000 50  0001 C CNN
	1    4050 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 6420519D
P 4050 5750
F 0 "#PWR020" H 4050 5600 50  0001 C CNN
F 1 "+5V" H 4065 5923 50  0000 C CNN
F 2 "" H 4050 5750 50  0001 C CNN
F 3 "" H 4050 5750 50  0001 C CNN
	1    4050 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 64205A5C
P 4300 5800
F 0 "L1" V 4400 5800 50  0000 C CNN
F 1 "10u" V 4250 5800 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 5800 50  0001 C CNN
F 3 "~" H 4300 5800 50  0001 C CNN
	1    4300 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VDDA #PWR023
U 1 1 642064B0
P 4550 5750
F 0 "#PWR023" H 4550 5600 50  0001 C CNN
F 1 "VDDA" H 4565 5923 50  0000 C CNN
F 2 "" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5750 4050 5800
Wire Wire Line
	4050 5800 4150 5800
Connection ~ 4050 5800
Wire Wire Line
	4050 5800 4050 5850
Wire Wire Line
	4450 5800 4550 5800
Wire Wire Line
	4550 5800 4550 5750
$Comp
L power:GND #PWR021
U 1 1 6420D5DE
P 4050 6200
F 0 "#PWR021" H 4050 5950 50  0001 C CNN
F 1 "GND" H 4055 6027 50  0000 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6150 4050 6200
$Comp
L power:VDDA #PWR030
U 1 1 64213ECD
P 5850 2850
F 0 "#PWR030" H 5850 2700 50  0001 C CNN
F 1 "VDDA" H 5900 3000 50  0000 C CNN
F 2 "" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2850 5750 2900
NoConn ~ 5150 3200
Wire Wire Line
	3800 3300 3800 3500
Connection ~ 3800 3500
Wire Wire Line
	3800 3500 3750 3500
Wire Notes Line
	7000 6500 7000 4950
Text Label 6750 3500 2    50   ~ 0
led_r
Text Label 6750 3600 2    50   ~ 0
led_g
Text Label 6750 3700 2    50   ~ 0
led_b
Wire Notes Line
	2550 2750 4150 2750
Wire Notes Line
	4150 2750 4150 4250
Wire Notes Line
	4150 4250 2550 4250
Wire Notes Line
	2550 4250 2550 2750
Text Notes 2650 2750 0    50   ~ 0
OA
Text Label 6750 5100 2    50   ~ 0
lcd_rs
Text Label 6750 5200 2    50   ~ 0
lcd_en
Text Label 6750 3200 2    50   ~ 0
lcd_db4
Text Label 6750 5600 2    50   ~ 0
lcd_db5
Text Label 6750 5500 2    50   ~ 0
lcd_db6
Text Label 6750 5400 2    50   ~ 0
lcd_db7
Text Label 4850 3400 0    50   ~ 0
v_in
Text Label 6750 5300 2    50   ~ 0
tr_v_in
$Comp
L Device:Crystal Y2
U 1 1 6421C457
P 2050 5700
F 0 "Y2" H 2050 5968 50  0000 C CNN
F 1 "14.7456MHz" H 2050 5877 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 2050 5700 50  0001 C CNN
F 3 "~" H 2050 5700 50  0001 C CNN
	1    2050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6421CDB7
P 2350 6000
F 0 "C9" H 2465 6046 50  0000 L CNN
F 1 "22p" H 2465 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2388 5850 50  0001 C CNN
F 3 "~" H 2350 6000 50  0001 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6421D0F6
P 1800 6000
F 0 "C7" H 1915 6046 50  0000 L CNN
F 1 "22p" H 1915 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1838 5850 50  0001 C CNN
F 3 "~" H 1800 6000 50  0001 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 642207A8
P 1800 6200
F 0 "#PWR012" H 1800 5950 50  0001 C CNN
F 1 "GND" H 1805 6027 50  0000 C CNN
F 2 "" H 1800 6200 50  0001 C CNN
F 3 "" H 1800 6200 50  0001 C CNN
	1    1800 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 64220BB0
P 2350 6200
F 0 "#PWR013" H 2350 5950 50  0001 C CNN
F 1 "GND" H 2355 6027 50  0000 C CNN
F 2 "" H 2350 6200 50  0001 C CNN
F 3 "" H 2350 6200 50  0001 C CNN
	1    2350 6200
	1    0    0    -1  
$EndComp
Text Label 6750 3800 2    50   ~ 0
xtal_1
Text Label 6750 3900 2    50   ~ 0
xtal_2
Text Label 1800 5400 3    50   ~ 0
xtal_1
Text Label 2350 5400 3    50   ~ 0
xtal_2
Wire Wire Line
	2350 5400 2350 5700
Wire Wire Line
	2200 5700 2350 5700
Connection ~ 2350 5700
Wire Wire Line
	2350 5700 2350 5850
Wire Wire Line
	2350 6150 2350 6200
Wire Wire Line
	1800 6200 1800 6150
Wire Wire Line
	1800 5850 1800 5700
Connection ~ 1800 5700
Wire Wire Line
	1800 5700 1800 5400
Wire Notes Line
	1650 5350 2650 5350
Wire Notes Line
	2650 5350 2650 6450
Wire Notes Line
	2650 6450 1650 6450
Wire Notes Line
	1650 6450 1650 5350
Text Notes 1750 5350 0    50   ~ 0
XTAL
Wire Notes Line
	3900 5500 4700 5500
Wire Notes Line
	4700 5500 4700 6450
Wire Notes Line
	4700 6450 3900 6450
Wire Notes Line
	3900 6450 3900 5500
Text Notes 3950 5500 0    50   ~ 0
VDDA
$Comp
L Interface_USB:CH340G U1
U 1 1 642690AE
P 1600 2950
F 0 "U1" H 1300 3500 50  0000 C CNN
F 1 "CH340G" H 1800 2400 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1650 2400 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 1250 3750 50  0001 C CNN
	1    1600 2950
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  4400 1450 4400
Wire Notes Line
	1450 4400 1450 4800
Wire Notes Line
	1450 4800 600  4800
Wire Notes Line
	600  4800 600  4400
Text Notes 700  4400 0    50   ~ 0
Ammeter input
Text Label 6750 4900 2    50   ~ 0
uart_rx
Text Label 6750 5000 2    50   ~ 0
uart_tx
$Comp
L Switch:SW_Push SW1
U 1 1 642759C3
P 1150 6150
F 0 "SW1" H 1150 6350 50  0000 C CNN
F 1 "Reset" H 1150 6050 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1150 6350 50  0001 C CNN
F 3 "~" H 1150 6350 50  0001 C CNN
	1    1150 6150
	1    0    0    -1  
$EndComp
Text Label 6750 4700 2    50   ~ 0
reset
Text Label 650  6150 0    50   ~ 0
reset
Text Label 4850 3500 0    50   ~ 0
i_meas
$Comp
L Connector:USB_B_Micro J2
U 1 1 6427B4B3
P 850 1150
F 0 "J2" H 700 1500 50  0000 C CNN
F 1 "Power" H 1000 800 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_614105150721_Vertical" H 1000 1100 50  0001 C CNN
F 3 "~" H 1000 1100 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
NoConn ~ 1150 1350
Wire Wire Line
	750  1550 750  1600
Wire Wire Line
	750  1600 800  1600
Wire Wire Line
	850  1600 850  1550
Wire Wire Line
	800  1600 800  1650
Connection ~ 800  1600
Wire Wire Line
	800  1600 850  1600
Wire Wire Line
	1150 950  1200 950 
Wire Wire Line
	1200 950  1200 850 
Text Label 1400 1150 2    50   ~ 0
usb+
Text Label 1400 1250 2    50   ~ 0
usb-
Wire Wire Line
	1150 1150 1400 1150
Wire Wire Line
	1150 1250 1400 1250
Wire Notes Line
	600  600  1450 600 
Wire Notes Line
	1450 600  1450 1900
Wire Notes Line
	1450 1900 600  1900
Wire Notes Line
	600  1900 600  600 
Text Notes 700  600  0    50   ~ 0
USB
$Comp
L power:+5V #PWR03
U 1 1 642A3B2D
P 750 6850
F 0 "#PWR03" H 750 6700 50  0001 C CNN
F 1 "+5V" H 765 7023 50  0000 C CNN
F 2 "" H 750 6850 50  0001 C CNN
F 3 "" H 750 6850 50  0001 C CNN
	1    750  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6850 750  6950
Wire Wire Line
	750  6950 1200 6950
Wire Wire Line
	1200 6950 1200 7000
Connection ~ 750  6950
Wire Wire Line
	750  6950 750  7000
$Comp
L power:GND #PWR04
U 1 1 642AB4D3
P 750 7400
F 0 "#PWR04" H 750 7150 50  0001 C CNN
F 1 "GND" H 755 7227 50  0000 C CNN
F 2 "" H 750 7400 50  0001 C CNN
F 3 "" H 750 7400 50  0001 C CNN
	1    750  7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7300 750  7350
Wire Wire Line
	750  7350 1200 7350
Wire Wire Line
	1200 7350 1200 7300
Connection ~ 750  7350
Wire Wire Line
	750  7350 750  7400
Text Notes 750  6950 0    50   ~ 0
Power
Wire Wire Line
	1200 6950 1650 6950
Connection ~ 1200 6950
Wire Wire Line
	1650 7000 1650 6950
Wire Wire Line
	1200 7350 1650 7350
Wire Wire Line
	1650 7350 1650 7300
Connection ~ 1200 7350
Text Notes 1650 6950 0    50   ~ 0
Mega
$Comp
L Device:C C8
U 1 1 6431E097
P 2100 7150
F 0 "C8" H 2215 7196 50  0000 L CNN
F 1 "4.7u" H 2215 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2138 7000 50  0001 C CNN
F 3 "~" H 2100 7150 50  0001 C CNN
	1    2100 7150
	1    0    0    -1  
$EndComp
Text Notes 2100 6950 0    50   ~ 0
LCD
$Comp
L Device:C C11
U 1 1 6432323A
P 3000 7150
F 0 "C11" H 3115 7196 50  0000 L CNN
F 1 "100n" H 3115 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3038 7000 50  0001 C CNN
F 3 "~" H 3000 7150 50  0001 C CNN
	1    3000 7150
	1    0    0    -1  
$EndComp
Text Notes 3000 6950 0    50   ~ 0
CH340
$Comp
L Device:C C12
U 1 1 64323A16
P 3450 7150
F 0 "C12" H 3565 7196 50  0000 L CNN
F 1 "100n" H 3565 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3488 7000 50  0001 C CNN
F 3 "~" H 3450 7150 50  0001 C CNN
	1    3450 7150
	1    0    0    -1  
$EndComp
Text Notes 3450 6950 0    50   ~ 0
MAX4372
Wire Wire Line
	3450 6950 3450 7000
Wire Wire Line
	3450 7300 3450 7350
Wire Wire Line
	3450 7350 3000 7350
Wire Wire Line
	2100 7300 2100 7350
Wire Wire Line
	2550 7300 2550 7350
Connection ~ 2550 7350
Wire Wire Line
	2550 7350 2100 7350
Wire Wire Line
	3000 7300 3000 7350
Connection ~ 3000 7350
Wire Wire Line
	3000 7350 2550 7350
Wire Wire Line
	3000 7000 3000 6950
Connection ~ 3000 6950
Wire Wire Line
	3000 6950 3450 6950
Wire Wire Line
	2550 7000 2550 6950
Connection ~ 2550 6950
Wire Wire Line
	2550 6950 3000 6950
Wire Wire Line
	2100 7000 2100 6950
Wire Wire Line
	2100 6950 2550 6950
Wire Notes Line
	600  6600 4250 6600
Wire Notes Line
	4250 6600 4250 7650
Wire Notes Line
	4250 7650 600  7650
Wire Notes Line
	600  7650 600  6600
Text Notes 700  6600 0    50   ~ 0
Caps
$Comp
L power:+5V #PWR06
U 1 1 6437A4AF
P 900 5250
F 0 "#PWR06" H 900 5100 50  0001 C CNN
F 1 "+5V" H 800 5400 50  0000 C CNN
F 2 "" H 900 5250 50  0001 C CNN
F 3 "" H 900 5250 50  0001 C CNN
	1    900  5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6437BA90
P 900 5450
F 0 "R1" H 950 5500 50  0000 L CNN
F 1 "560" H 950 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 830 5450 50  0001 C CNN
F 3 "~" H 900 5450 50  0001 C CNN
	1    900  5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 64389EBF
P 900 5800
F 0 "D1" V 950 5700 50  0000 R CNN
F 1 "Reset" V 850 5700 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 5800 50  0001 C CNN
F 3 "~" H 900 5800 50  0001 C CNN
	1    900  5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  5250 900  5300
Wire Wire Line
	900  5600 900  5650
Wire Wire Line
	650  6150 900  6150
Wire Wire Line
	900  5950 900  6150
Connection ~ 900  6150
Wire Wire Line
	900  6150 950  6150
$Comp
L power:GND #PWR09
U 1 1 643B38D0
P 1400 6200
F 0 "#PWR09" H 1400 5950 50  0001 C CNN
F 1 "GND" H 1405 6027 50  0000 C CNN
F 2 "" H 1400 6200 50  0001 C CNN
F 3 "" H 1400 6200 50  0001 C CNN
	1    1400 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6150 1400 6150
Wire Wire Line
	1400 6150 1400 6200
Wire Notes Line
	600  5050 1500 5050
Wire Notes Line
	1500 5050 1500 6450
Wire Notes Line
	1500 6450 600  6450
Wire Notes Line
	600  6450 600  5050
Text Notes 700  5050 0    50   ~ 0
Reset
$Comp
L power:GND #PWR011
U 1 1 6441A806
P 1600 3600
F 0 "#PWR011" H 1600 3350 50  0001 C CNN
F 1 "GND" H 1605 3427 50  0000 C CNN
F 2 "" H 1600 3600 50  0001 C CNN
F 3 "" H 1600 3600 50  0001 C CNN
	1    1600 3600
	1    0    0    -1  
$EndComp
Text Label 2350 2550 2    50   ~ 0
uart_rx
Text Label 2350 2650 2    50   ~ 0
uart_tx
Text Label 900  2850 0    50   ~ 0
usb+
Text Label 900  2950 0    50   ~ 0
usb-
$Comp
L Device:C C3
U 1 1 6443EC6C
P 1000 2250
F 0 "C3" V 850 2200 50  0000 L CNN
F 1 "20n" V 1150 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1038 2100 50  0001 C CNN
F 3 "~" H 1000 2250 50  0001 C CNN
	1    1000 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6443FA49
P 750 2350
F 0 "#PWR01" H 750 2100 50  0001 C CNN
F 1 "GND" H 755 2177 50  0000 C CNN
F 2 "" H 750 2350 50  0001 C CNN
F 3 "" H 750 2350 50  0001 C CNN
	1    750  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2350 750  2250
Wire Wire Line
	750  2250 850  2250
Wire Wire Line
	1150 2250 1500 2250
Wire Wire Line
	1500 2250 1500 2350
Wire Wire Line
	1600 3550 1600 3600
Wire Wire Line
	900  2950 1200 2950
Wire Wire Line
	1200 2850 900  2850
Wire Wire Line
	2000 2550 2350 2550
Wire Wire Line
	2350 2650 2000 2650
NoConn ~ 2000 2850
NoConn ~ 2000 2950
NoConn ~ 2000 3050
NoConn ~ 2000 3150
NoConn ~ 2000 3250
NoConn ~ 2000 3350
$Comp
L power:+5V #PWR010
U 1 1 644CF00C
P 1600 2250
F 0 "#PWR010" H 1600 2100 50  0001 C CNN
F 1 "+5V" H 1600 2400 50  0000 C CNN
F 2 "" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2250 1600 2350
Wire Notes Line
	600  2050 2400 2050
Wire Notes Line
	2400 2050 2400 4250
Wire Notes Line
	2400 4250 600  4250
Wire Notes Line
	600  4250 600  2050
Text Notes 700  2050 0    50   ~ 0
USB UART
Connection ~ 750  3500
Wire Wire Line
	800  3500 750  3500
Wire Wire Line
	750  3650 750  3500
Wire Wire Line
	750  4000 750  3950
Wire Wire Line
	1150 3950 1150 4000
Wire Wire Line
	1150 3500 1150 3650
Wire Wire Line
	1100 3500 1150 3500
$Comp
L power:GND #PWR07
U 1 1 64424F9F
P 1150 4000
F 0 "#PWR07" H 1150 3750 50  0001 C CNN
F 1 "GND" H 1155 3827 50  0000 C CNN
F 2 "" H 1150 4000 50  0001 C CNN
F 3 "" H 1150 4000 50  0001 C CNN
	1    1150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 64424F99
P 750 4000
F 0 "#PWR02" H 750 3750 50  0001 C CNN
F 1 "GND" H 755 3827 50  0000 C CNN
F 2 "" H 750 4000 50  0001 C CNN
F 3 "" H 750 4000 50  0001 C CNN
	1    750  4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 64424F93
P 750 3800
F 0 "C1" H 865 3846 50  0000 L CNN
F 1 "22p" H 865 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 788 3650 50  0001 C CNN
F 3 "~" H 750 3800 50  0001 C CNN
	1    750  3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 64424F8D
P 1150 3800
F 0 "C4" H 1265 3846 50  0000 L CNN
F 1 "22p" H 1265 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1188 3650 50  0001 C CNN
F 3 "~" H 1150 3800 50  0001 C CNN
	1    1150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 64424F87
P 950 3500
F 0 "Y1" H 950 3768 50  0000 C CNN
F 1 "12MHz" H 950 3677 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  3150 1200 3150
Wire Wire Line
	750  3150 750  3500
Wire Wire Line
	1200 3350 1150 3350
Wire Wire Line
	1150 3350 1150 3500
Connection ~ 1150 3500
Wire Wire Line
	4850 3400 5150 3400
Wire Wire Line
	5150 3500 4850 3500
$Comp
L power:GND #PWR027
U 1 1 64688221
P 5750 5950
F 0 "#PWR027" H 5750 5700 50  0001 C CNN
F 1 "GND" H 5755 5777 50  0000 C CNN
F 2 "" H 5750 5950 50  0001 C CNN
F 3 "" H 5750 5950 50  0001 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5900 5750 5950
NoConn ~ 1200 2650
Text Label 6750 4100 2    50   ~ 0
r_1
Text Label 6750 4200 2    50   ~ 0
r_2
Text Label 6750 4300 2    50   ~ 0
r_3
Text Label 6750 4400 2    50   ~ 0
r_4
Text Label 6750 4500 2    50   ~ 0
r_5
Text Label 6750 4600 2    50   ~ 0
r_6
$Comp
L mine:MAX4372 DD1
U 1 1 6480AB8F
P 3400 3500
F 0 "DD1" H 3150 3900 50  0000 L CNN
F 1 "MAX4372T" H 3450 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3800 2450 50  0001 C CNN
F 3 "https://static.chipdip.ru/lib/824/DOC004824202.pdf" H 3050 3700 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 641E2019
P 6400 7300
F 0 "SW3" H 6400 7500 50  0000 C CNN
F 1 "Ok" H 6400 7200 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 6400 7500 50  0001 C CNN
F 3 "~" H 6400 7500 50  0001 C CNN
	1    6400 7300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 641DF511
P 6400 6900
F 0 "SW2" H 6400 7100 50  0000 C CNN
F 1 "Down" H 6400 6800 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 6400 7100 50  0001 C CNN
F 3 "~" H 6400 7100 50  0001 C CNN
	1    6400 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6420620B
P 5750 6700
F 0 "R7" H 5820 6746 50  0000 L CNN
F 1 "10k" H 5820 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5680 6700 50  0001 C CNN
F 3 "~" H 5750 6700 50  0001 C CNN
	1    5750 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 642066D6
P 5750 6500
F 0 "#PWR028" H 5750 6350 50  0001 C CNN
F 1 "+5V" H 5750 6650 50  0000 C CNN
F 2 "" H 5750 6500 50  0001 C CNN
F 3 "" H 5750 6500 50  0001 C CNN
	1    5750 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 64213000
P 6700 7400
F 0 "#PWR032" H 6700 7150 50  0001 C CNN
F 1 "GND" H 6705 7227 50  0000 C CNN
F 2 "" H 6700 7400 50  0001 C CNN
F 3 "" H 6700 7400 50  0001 C CNN
	1    6700 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 64213A51
P 5400 6700
F 0 "R6" H 5470 6746 50  0000 L CNN
F 1 "10k" H 5470 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5330 6700 50  0001 C CNN
F 3 "~" H 5400 6700 50  0001 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 64213A57
P 5400 6500
F 0 "#PWR025" H 5400 6350 50  0001 C CNN
F 1 "+5V" H 5400 6650 50  0000 C CNN
F 2 "" H 5400 6500 50  0001 C CNN
F 3 "" H 5400 6500 50  0001 C CNN
	1    5400 6500
	1    0    0    -1  
$EndComp
Text Label 5800 6900 0    50   ~ 0
btn_down
Text Label 5800 7300 0    50   ~ 0
btn_ok
Wire Wire Line
	5750 6850 5750 6900
Wire Wire Line
	5750 6900 6200 6900
Wire Wire Line
	5400 6850 5400 7300
Wire Wire Line
	5400 7300 6200 7300
Wire Wire Line
	6600 6900 6700 6900
Wire Wire Line
	6700 6900 6700 7300
Wire Wire Line
	6600 7300 6700 7300
Connection ~ 6700 7300
Wire Wire Line
	6700 7300 6700 7400
Wire Wire Line
	5400 6500 5400 6550
Wire Wire Line
	5750 6500 5750 6550
Wire Notes Line
	5300 6300 6800 6300
Wire Notes Line
	6800 6300 6800 7650
Wire Notes Line
	6800 7650 5300 7650
Wire Notes Line
	5300 7650 5300 6300
Text Notes 5400 6300 0    50   ~ 0
Buttons
Text Label 6750 3400 2    50   ~ 0
btn_down
Text Label 6750 3300 2    50   ~ 0
btn_ok
Wire Wire Line
	6350 3200 6750 3200
Wire Wire Line
	6350 3300 6750 3300
Wire Wire Line
	6350 3400 6750 3400
Wire Wire Line
	6350 3500 6750 3500
Wire Wire Line
	6350 3600 6750 3600
Wire Wire Line
	6750 3700 6350 3700
Wire Wire Line
	6350 3800 6750 3800
Wire Wire Line
	6350 3900 6750 3900
Wire Wire Line
	6350 4100 6750 4100
Wire Wire Line
	6350 4200 6750 4200
Wire Wire Line
	6350 4300 6750 4300
Wire Wire Line
	6350 4400 6750 4400
Wire Wire Line
	6350 4500 6750 4500
Wire Wire Line
	6350 4600 6750 4600
Wire Wire Line
	6350 4700 6750 4700
Wire Wire Line
	6350 4900 6750 4900
Wire Wire Line
	6350 5000 6750 5000
Wire Wire Line
	6350 5100 6750 5100
Wire Wire Line
	6350 5200 6750 5200
Wire Wire Line
	6350 5300 6750 5300
Wire Wire Line
	6350 5400 6750 5400
Wire Wire Line
	6350 5500 6750 5500
Wire Wire Line
	6350 5600 6750 5600
Text Label 1400 4550 2    50   ~ 0
i_in
Text Label 2650 2500 0    50   ~ 0
i_out
Text Label 2600 700  0    50   ~ 0
i_in
Text Label 2600 3300 0    50   ~ 0
i_in
$Comp
L Device:C C10
U 1 1 6423137A
P 2550 7150
F 0 "C10" H 2665 7196 50  0000 L CNN
F 1 "4.7u" H 2665 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2588 7000 50  0001 C CNN
F 3 "~" H 2550 7150 50  0001 C CNN
	1    2550 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 642C412B
P 2950 5850
F 0 "J3" H 2950 6150 50  0000 C CNN
F 1 "Prog" H 2950 5450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2950 5850 50  0001 C CNN
F 3 "~" H 2950 5850 50  0001 C CNN
	1    2950 5850
	-1   0    0    -1  
$EndComp
Text Label 3450 5650 2    50   ~ 0
led_g
Text Label 3450 5950 2    50   ~ 0
led_r
Text Label 3450 5850 2    50   ~ 0
led_b
$Comp
L power:+5V #PWR018
U 1 1 642E1B28
P 3600 5700
F 0 "#PWR018" H 3600 5550 50  0001 C CNN
F 1 "+5V" H 3600 5850 50  0000 C CNN
F 2 "" H 3600 5700 50  0001 C CNN
F 3 "" H 3600 5700 50  0001 C CNN
	1    3600 5700
	1    0    0    -1  
$EndComp
Text Label 3450 6050 2    50   ~ 0
reset
$Comp
L power:GND #PWR019
U 1 1 642E2D17
P 3600 6200
F 0 "#PWR019" H 3600 5950 50  0001 C CNN
F 1 "GND" H 3605 6027 50  0000 C CNN
F 2 "" H 3600 6200 50  0001 C CNN
F 3 "" H 3600 6200 50  0001 C CNN
	1    3600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5650 3450 5650
Wire Wire Line
	3150 5750 3600 5750
Wire Wire Line
	3600 5750 3600 5700
Wire Wire Line
	3150 5850 3450 5850
Wire Wire Line
	3450 5950 3150 5950
Wire Wire Line
	3150 6050 3450 6050
Wire Wire Line
	3150 6150 3600 6150
Wire Wire Line
	3600 6150 3600 6200
Wire Notes Line
	2800 5500 3750 5500
Wire Notes Line
	3750 5500 3750 6450
Wire Notes Line
	3750 6450 2800 6450
Wire Notes Line
	2800 6450 2800 5500
Text Notes 2900 5500 0    50   ~ 0
Prog
Wire Wire Line
	1650 6950 2100 6950
Connection ~ 1650 6950
Connection ~ 2100 6950
Wire Wire Line
	2100 7350 1650 7350
Connection ~ 2100 7350
Connection ~ 1650 7350
$Comp
L Converter_DCDC:TC7662AxPA U3
U 1 1 64ADF030
P 9800 3550
F 0 "U3" H 9550 4000 50  0000 C CNN
F 1 "TC7660" H 10000 3100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9900 3450 50  0001 C CNN
F 3 "" H 9900 3450 50  0001 C CNN
	1    9800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5700 1900 5700
$Comp
L Device:C C16
U 1 1 64B6B958
P 10700 3650
F 0 "C16" H 10815 3696 50  0000 L CNN
F 1 "10u" H 10815 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10738 3500 50  0001 C CNN
F 3 "~" H 10700 3650 50  0001 C CNN
	1    10700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 64B6C166
P 10300 3650
F 0 "C15" H 10415 3696 50  0000 L CNN
F 1 "10u" H 10415 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10338 3500 50  0001 C CNN
F 3 "~" H 10300 3650 50  0001 C CNN
	1    10300 3650
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR048
U 1 1 64B7C0FB
P 10750 3000
F 0 "#PWR048" H 10750 3100 50  0001 C CNN
F 1 "-5V" H 10750 3150 50  0000 C CNN
F 2 "" H 10750 3000 50  0001 C CNN
F 3 "" H 10750 3000 50  0001 C CNN
	1    10750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3250 10700 3250
Wire Wire Line
	10750 3250 10750 3000
Wire Wire Line
	10700 3500 10700 3250
Connection ~ 10700 3250
Wire Wire Line
	10700 3250 10750 3250
Wire Wire Line
	10200 3450 10300 3450
Wire Wire Line
	10300 3450 10300 3500
Wire Wire Line
	10200 3850 10300 3850
Wire Wire Line
	10300 3850 10300 3800
$Comp
L power:+5V #PWR040
U 1 1 64BB502A
P 9800 3000
F 0 "#PWR040" H 9800 2850 50  0001 C CNN
F 1 "+5V" H 9800 3150 50  0000 C CNN
F 2 "" H 9800 3000 50  0001 C CNN
F 3 "" H 9800 3000 50  0001 C CNN
	1    9800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3000 9800 3050
NoConn ~ 9400 3550
NoConn ~ 9400 3750
$Comp
L power:GND #PWR041
U 1 1 64BE0E0B
P 9800 4100
F 0 "#PWR041" H 9800 3850 50  0001 C CNN
F 1 "GND" H 9805 3927 50  0000 C CNN
F 2 "" H 9800 4100 50  0001 C CNN
F 3 "" H 9800 4100 50  0001 C CNN
	1    9800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4050 9800 4100
$Comp
L power:GND #PWR047
U 1 1 64BEFEF6
P 10700 4100
F 0 "#PWR047" H 10700 3850 50  0001 C CNN
F 1 "GND" H 10705 3927 50  0000 C CNN
F 2 "" H 10700 4100 50  0001 C CNN
F 3 "" H 10700 4100 50  0001 C CNN
	1    10700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4100 10700 3800
Wire Notes Line
	9300 2750 11000 2750
Wire Notes Line
	11000 2750 11000 4350
Wire Notes Line
	11000 4350 9300 4350
Wire Notes Line
	9300 4350 9300 2750
Text Notes 9400 2750 0    50   ~ 0
Invertor
Wire Wire Line
	9550 1200 9700 1200
$Comp
L Device:R R19
U 1 1 64C974FF
P 10000 1650
F 0 "R19" H 10050 1700 50  0000 L CNN
F 1 "10k" H 10050 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 1650 50  0001 C CNN
F 3 "~" H 10000 1650 50  0001 C CNN
	1    10000 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q10
U 1 1 64CD82EC
P 9900 1200
F 0 "Q10" H 10105 1154 50  0000 L CNN
F 1 "AO3401A" H 10105 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10100 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 9900 1200 50  0001 L CNN
	1    9900 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 64CE9C8D
P 10000 950
F 0 "#PWR042" H 10000 800 50  0001 C CNN
F 1 "+5V" H 10000 1100 50  0000 C CNN
F 2 "" H 10000 950 50  0001 C CNN
F 3 "" H 10000 950 50  0001 C CNN
	1    10000 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 64248083
P 10550 1850
F 0 "R20" H 10620 1896 50  0000 L CNN
F 1 "0R1" H 10620 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 10480 1850 50  0001 C CNN
F 3 "~" H 10550 1850 50  0001 C CNN
	1    10550 1850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF7324 Q9
U 2 1 6424D6E2
P 10450 1450
F 0 "Q9" H 10655 1404 50  0000 L CNN
F 1 "IRF7324" H 10655 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10650 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 10550 1450 50  0001 L CNN
	2    10450 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	10550 1650 10550 1700
Wire Wire Line
	10000 1400 10000 1450
Wire Wire Line
	10000 1450 10250 1450
Connection ~ 10000 1450
Wire Wire Line
	10000 1450 10000 1500
Wire Wire Line
	10000 1800 10000 1850
Wire Wire Line
	10000 950  10000 1000
$Comp
L Transistor_FET:AO3401A Q7
U 1 1 64DDA4F6
P 8450 1200
F 0 "Q7" H 8655 1154 50  0000 L CNN
F 1 "AO3401A" H 8655 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8650 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 8450 1200 50  0001 L CNN
	1    8450 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 64DDBB5A
P 8550 950
F 0 "#PWR036" H 8550 800 50  0001 C CNN
F 1 "+5V" H 8550 1100 50  0000 C CNN
F 2 "" H 8550 950 50  0001 C CNN
F 3 "" H 8550 950 50  0001 C CNN
	1    8550 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR045
U 1 1 64DDC131
P 10350 1800
F 0 "#PWR045" H 10350 1900 50  0001 C CNN
F 1 "-5V" H 10350 1950 50  0000 C CNN
F 2 "" H 10350 1800 50  0001 C CNN
F 3 "" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 64DDD2B9
P 8550 1650
F 0 "R15" H 8600 1700 50  0000 L CNN
F 1 "10k" H 8600 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8480 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1800 8550 1850
Wire Wire Line
	8550 1850 8900 1850
Wire Wire Line
	8900 1850 8900 1800
$Comp
L power:-5V #PWR038
U 1 1 64DDD2C8
P 8900 1800
F 0 "#PWR038" H 8900 1900 50  0001 C CNN
F 1 "-5V" H 8900 1950 50  0000 C CNN
F 2 "" H 8900 1800 50  0001 C CNN
F 3 "" H 8900 1800 50  0001 C CNN
	1    8900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1850 10350 1850
Wire Wire Line
	10350 1850 10350 1800
Wire Wire Line
	8550 1400 8550 1450
Wire Wire Line
	8550 1450 8800 1450
Connection ~ 8550 1450
Wire Wire Line
	8550 1450 8550 1500
Wire Wire Line
	8550 950  8550 1000
Wire Wire Line
	6350 1650 6350 1700
Wire Wire Line
	5350 1200 5500 1200
$Comp
L Transistor_FET:IRF7324 Q5
U 1 1 64ED8CF4
P 6250 1450
F 0 "Q5" H 6455 1404 50  0000 L CNN
F 1 "IRF7324" H 6455 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6450 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 6350 1450 50  0001 L CNN
	1    6250 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	6700 1200 6850 1200
$Comp
L Device:R R10
U 1 1 64ED8CFE
P 7150 1650
F 0 "R10" H 7200 1700 50  0000 L CNN
F 1 "10k" H 7200 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7080 1650 50  0001 C CNN
F 3 "~" H 7150 1650 50  0001 C CNN
	1    7150 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q6
U 1 1 64ED8D04
P 7050 1200
F 0 "Q6" H 7255 1154 50  0000 L CNN
F 1 "AO3401A" H 7255 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7250 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 7050 1200 50  0001 L CNN
	1    7050 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR033
U 1 1 64ED8D0A
P 7150 950
F 0 "#PWR033" H 7150 800 50  0001 C CNN
F 1 "+5V" H 7150 1100 50  0000 C CNN
F 2 "" H 7150 950 50  0001 C CNN
F 3 "" H 7150 950 50  0001 C CNN
	1    7150 950 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF7324 Q5
U 2 1 64ED8D17
P 7600 1450
F 0 "Q5" H 7805 1404 50  0000 L CNN
F 1 "IRF7324" H 7805 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7800 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 7700 1450 50  0001 L CNN
	2    7600 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 1650 7700 1700
Wire Wire Line
	7150 1400 7150 1450
Wire Wire Line
	7150 1450 7400 1450
Connection ~ 7150 1450
Wire Wire Line
	7150 1450 7150 1500
Wire Wire Line
	7150 1800 7150 1850
Wire Wire Line
	7150 950  7150 1000
$Comp
L Transistor_FET:AO3401A Q4
U 1 1 64ED8D25
P 5700 1200
F 0 "Q4" H 5905 1154 50  0000 L CNN
F 1 "AO3401A" H 5905 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 5700 1200 50  0001 L CNN
	1    5700 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 64ED8D2B
P 5800 950
F 0 "#PWR029" H 5800 800 50  0001 C CNN
F 1 "+5V" H 5800 1100 50  0000 C CNN
F 2 "" H 5800 950 50  0001 C CNN
F 3 "" H 5800 950 50  0001 C CNN
	1    5800 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR035
U 1 1 64ED8D31
P 7500 1800
F 0 "#PWR035" H 7500 1900 50  0001 C CNN
F 1 "-5V" H 7500 1950 50  0000 C CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 64ED8D37
P 5800 1650
F 0 "R8" H 5850 1700 50  0000 L CNN
F 1 "10k" H 5850 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5730 1650 50  0001 C CNN
F 3 "~" H 5800 1650 50  0001 C CNN
	1    5800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1800 5800 1850
Wire Wire Line
	5800 1850 6150 1850
Wire Wire Line
	6150 1850 6150 1800
$Comp
L power:-5V #PWR031
U 1 1 64ED8D40
P 6150 1800
F 0 "#PWR031" H 6150 1900 50  0001 C CNN
F 1 "-5V" H 6150 1950 50  0000 C CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1850 7500 1850
Wire Wire Line
	7500 1850 7500 1800
Wire Wire Line
	5800 1400 5800 1450
Wire Wire Line
	5800 1450 6050 1450
Connection ~ 5800 1450
Wire Wire Line
	5800 1450 5800 1500
Wire Wire Line
	5800 950  5800 1000
Wire Wire Line
	3600 1650 3600 1700
Wire Wire Line
	2600 1200 2750 1200
$Comp
L Transistor_FET:IRF7324 Q2
U 1 1 64EF351A
P 3500 1450
F 0 "Q2" H 3705 1404 50  0000 L CNN
F 1 "IRF7324" H 3705 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3700 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 3600 1450 50  0001 L CNN
	1    3500 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 1200 4100 1200
$Comp
L Device:R R4
U 1 1 64EF3524
P 4400 1650
F 0 "R4" H 4450 1700 50  0000 L CNN
F 1 "10k" H 4450 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4330 1650 50  0001 C CNN
F 3 "~" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q3
U 1 1 64EF352A
P 4300 1200
F 0 "Q3" H 4505 1154 50  0000 L CNN
F 1 "AO3401A" H 4505 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 4300 1200 50  0001 L CNN
	1    4300 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 64EF3530
P 4400 950
F 0 "#PWR022" H 4400 800 50  0001 C CNN
F 1 "+5V" H 4400 1100 50  0000 C CNN
F 2 "" H 4400 950 50  0001 C CNN
F 3 "" H 4400 950 50  0001 C CNN
	1    4400 950 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF7324 Q2
U 2 1 64EF353D
P 4850 1450
F 0 "Q2" H 5055 1404 50  0000 L CNN
F 1 "IRF7324" H 5055 1495 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5050 1375 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 4950 1450 50  0001 L CNN
	2    4850 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 1650 4950 1700
Wire Wire Line
	4400 1400 4400 1450
Wire Wire Line
	4400 1450 4650 1450
Connection ~ 4400 1450
Wire Wire Line
	4400 1450 4400 1500
Wire Wire Line
	4400 1800 4400 1850
Wire Wire Line
	4400 950  4400 1000
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 64EF354B
P 2950 1200
F 0 "Q1" H 3155 1154 50  0000 L CNN
F 1 "AO3401A" H 3155 1245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3150 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 2950 1200 50  0001 L CNN
	1    2950 1200
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 64EF3551
P 3050 950
F 0 "#PWR014" H 3050 800 50  0001 C CNN
F 1 "+5V" H 3050 1100 50  0000 C CNN
F 2 "" H 3050 950 50  0001 C CNN
F 3 "" H 3050 950 50  0001 C CNN
	1    3050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR024
U 1 1 64EF3557
P 4750 1800
F 0 "#PWR024" H 4750 1900 50  0001 C CNN
F 1 "-5V" H 4750 1950 50  0000 C CNN
F 2 "" H 4750 1800 50  0001 C CNN
F 3 "" H 4750 1800 50  0001 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 64EF355D
P 3050 1650
F 0 "R2" H 3100 1700 50  0000 L CNN
F 1 "10k" H 3100 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2980 1650 50  0001 C CNN
F 3 "~" H 3050 1650 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1800 3050 1850
Wire Wire Line
	3050 1850 3400 1850
Wire Wire Line
	3400 1850 3400 1800
$Comp
L power:-5V #PWR015
U 1 1 64EF3566
P 3400 1800
F 0 "#PWR015" H 3400 1900 50  0001 C CNN
F 1 "-5V" H 3400 1950 50  0000 C CNN
F 2 "" H 3400 1800 50  0001 C CNN
F 3 "" H 3400 1800 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1850 4750 1850
Wire Wire Line
	4750 1850 4750 1800
Wire Wire Line
	3050 1400 3050 1450
Wire Wire Line
	3050 1450 3300 1450
Connection ~ 3050 1450
Wire Wire Line
	3050 1450 3050 1500
Wire Wire Line
	3050 950  3050 1000
Wire Wire Line
	2600 700  3600 700 
Wire Wire Line
	10550 700  10550 1250
Wire Wire Line
	9100 1250 9100 700 
Connection ~ 9100 700 
Wire Wire Line
	9100 700  10550 700 
Wire Wire Line
	7700 700  7700 1250
Connection ~ 7700 700 
Wire Wire Line
	7700 700  9100 700 
Wire Wire Line
	6350 1250 6350 700 
Connection ~ 6350 700 
Wire Wire Line
	6350 700  7700 700 
Wire Wire Line
	4950 700  4950 1250
Connection ~ 4950 700 
Wire Wire Line
	4950 700  6350 700 
Wire Wire Line
	3600 1250 3600 700 
Connection ~ 3600 700 
Wire Wire Line
	3600 700  4950 700 
Wire Wire Line
	10550 2000 10550 2100
Wire Wire Line
	9100 2000 9100 2100
Wire Wire Line
	2650 2100 3100 2100
Connection ~ 9100 2100
Wire Wire Line
	9100 2100 10550 2100
Wire Wire Line
	7700 2000 7700 2100
Connection ~ 7700 2100
Wire Wire Line
	7700 2100 9100 2100
Wire Wire Line
	6350 2000 6350 2100
Connection ~ 6350 2100
Wire Wire Line
	6350 2100 7700 2100
Wire Wire Line
	4950 2000 4950 2100
Connection ~ 4950 2100
Wire Wire Line
	4950 2100 6350 2100
Wire Wire Line
	3600 2000 3600 2100
Connection ~ 3600 2100
Wire Wire Line
	3600 2100 4950 2100
Wire Wire Line
	3100 2150 3100 2100
Connection ~ 3100 2100
Wire Wire Line
	3100 2100 3600 2100
Wire Notes Line
	2950 2150 3350 2150
Text Notes 3350 2350 0    50   ~ 0
Fuse
Wire Notes Line
	2550 600  11000 600 
Wire Notes Line
	11000 600  11000 2600
Wire Notes Line
	11000 2600 2550 2600
Wire Notes Line
	2550 2600 2550 600 
Text Notes 2650 600  0    50   ~ 0
Current meter
$Comp
L Transistor_FET:AO3401A Q8
U 1 1 64CD95C6
P 8500 5250
F 0 "Q8" H 8705 5204 50  0000 L CNN
F 1 "AO3401A" H 8705 5295 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8700 5175 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 8500 5250 50  0001 L CNN
	1    8500 5250
	1    0    0    1   
$EndComp
Text Label 8600 5000 2    50   ~ 0
i_in
Connection ~ 10750 5700
Wire Wire Line
	10750 5450 10750 5700
Wire Wire Line
	10750 4750 10750 5150
$Comp
L power:+5V #PWR049
U 1 1 64300C1C
P 10750 4750
F 0 "#PWR049" H 10750 4600 50  0001 C CNN
F 1 "+5V" H 10765 4923 50  0000 C CNN
F 2 "" H 10750 4750 50  0001 C CNN
F 3 "" H 10750 4750 50  0001 C CNN
	1    10750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5300 10600 5300
$Comp
L Device:R_POT RV1
U 1 1 642E444D
P 10750 5300
F 0 "RV1" H 10680 5346 50  0000 R CNN
F 1 "10k" H 10680 5255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386F_Vertical" H 10750 5300 50  0001 C CNN
F 3 "~" H 10750 5300 50  0001 C CNN
	1    10750 5300
	-1   0    0    -1  
$EndComp
Text Notes 8100 4900 0    50   ~ 0
Voltage meter
Wire Notes Line
	8000 6500 8000 4900
Wire Notes Line
	9050 6500 8000 6500
Wire Notes Line
	9050 4900 9050 6500
Wire Notes Line
	8000 4900 9050 4900
Text Notes 9300 4500 0    50   ~ 0
LCD1602
Wire Notes Line
	9200 6500 9200 4500
Wire Notes Line
	11000 6500 9200 6500
Wire Notes Line
	11000 4500 11000 6500
Wire Notes Line
	9200 4500 11000 4500
Text Notes 7100 4950 0    50   ~ 0
LED Status
Wire Notes Line
	7850 6500 7000 6500
Wire Notes Line
	7850 4950 7850 6500
Wire Notes Line
	7000 4950 7850 4950
Wire Wire Line
	7600 5750 7600 5800
Wire Wire Line
	7600 5000 7600 5450
Wire Wire Line
	7400 5000 7400 5250
Wire Wire Line
	7400 5800 7400 5550
Wire Wire Line
	7200 5750 7200 5800
Wire Wire Line
	7200 5000 7200 5450
Wire Wire Line
	7400 6200 7400 6250
Text Label 7600 5000 3    50   ~ 0
led_b
Text Label 7400 5000 3    50   ~ 0
led_g
Text Label 7200 5000 3    50   ~ 0
led_r
$Comp
L Device:LED_RCGB D2
U 1 1 641EE5A6
P 7400 6000
F 0 "D2" V 7550 6350 50  0000 R CNN
F 1 "status" V 7250 5900 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7400 5950 50  0001 C CNN
F 3 "~" H 7400 5950 50  0001 C CNN
	1    7400 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 641CE5AB
P 7400 6250
F 0 "#PWR034" H 7400 6000 50  0001 C CNN
F 1 "GND" H 7405 6077 50  0000 C CNN
F 2 "" H 7400 6250 50  0001 C CNN
F 3 "" H 7400 6250 50  0001 C CNN
	1    7400 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 641CDEAD
P 7600 5600
F 0 "R13" H 7650 5650 50  0000 L CNN
F 1 "510" H 7650 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7530 5600 50  0001 C CNN
F 3 "~" H 7600 5600 50  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 641CD9FD
P 7400 5400
F 0 "R12" H 7450 5450 50  0000 L CNN
F 1 "560" H 7450 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7330 5400 50  0001 C CNN
F 3 "~" H 7400 5400 50  0001 C CNN
	1    7400 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 641CD31A
P 7200 5600
F 0 "R11" H 7250 5650 50  0000 L CNN
F 1 "620" H 7250 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7130 5600 50  0001 C CNN
F 3 "~" H 7200 5600 50  0001 C CNN
	1    7200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5100 9650 6250
Wire Wire Line
	9700 5100 9650 5100
Wire Wire Line
	10550 5800 10550 4750
Wire Wire Line
	10500 5800 10550 5800
Wire Wire Line
	10750 5700 10750 6250
Wire Wire Line
	10500 5700 10750 5700
$Comp
L power:GND #PWR050
U 1 1 6445FA56
P 10750 6250
F 0 "#PWR050" H 10750 6000 50  0001 C CNN
F 1 "GND" H 10755 6077 50  0000 C CNN
F 2 "" H 10750 6250 50  0001 C CNN
F 3 "" H 10750 6250 50  0001 C CNN
	1    10750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR046
U 1 1 6445F701
P 10550 4750
F 0 "#PWR046" H 10550 4600 50  0001 C CNN
F 1 "+5V" H 10565 4923 50  0000 C CNN
F 2 "" H 10550 4750 50  0001 C CNN
F 3 "" H 10550 4750 50  0001 C CNN
	1    10550 4750
	1    0    0    -1  
$EndComp
NoConn ~ 9700 5600
NoConn ~ 9700 5500
NoConn ~ 9700 5400
NoConn ~ 9700 5300
Wire Wire Line
	9700 5000 9250 5000
Wire Wire Line
	9250 5200 9700 5200
Wire Wire Line
	9700 5700 9250 5700
Wire Wire Line
	9250 5800 9700 5800
Wire Wire Line
	9700 5900 9250 5900
Wire Wire Line
	9250 6000 9700 6000
Wire Wire Line
	10100 4750 10100 4800
$Comp
L power:+5V #PWR043
U 1 1 6444A6CD
P 10100 4750
F 0 "#PWR043" H 10100 4600 50  0001 C CNN
F 1 "+5V" H 10115 4923 50  0000 C CNN
F 2 "" H 10100 4750 50  0001 C CNN
F 3 "" H 10100 4750 50  0001 C CNN
	1    10100 4750
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:RC1602A U4
U 1 1 642CC86B
P 10100 5500
F 0 "U4" H 9850 6150 50  0000 C CNN
F 1 "RC1602A" H 10300 4850 50  0000 C CNN
F 2 "mine:display_1602_nofootprint" H 10200 4700 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 10200 5400 50  0001 C CNN
	1    10100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6200 10100 6250
Text Label 9250 6000 0    50   ~ 0
lcd_db7
Text Label 9250 5900 0    50   ~ 0
lcd_db6
Text Label 9250 5800 0    50   ~ 0
lcd_db5
Text Label 9250 5700 0    50   ~ 0
lcd_db4
$Comp
L power:GND #PWR039
U 1 1 64289EC7
P 9650 6250
F 0 "#PWR039" H 9650 6000 50  0001 C CNN
F 1 "GND" H 9655 6077 50  0000 C CNN
F 2 "" H 9650 6250 50  0001 C CNN
F 3 "" H 9650 6250 50  0001 C CNN
	1    9650 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 64289912
P 10100 6250
F 0 "#PWR044" H 10100 6000 50  0001 C CNN
F 1 "GND" H 10105 6077 50  0000 C CNN
F 2 "" H 10100 6250 50  0001 C CNN
F 3 "" H 10100 6250 50  0001 C CNN
	1    10100 6250
	1    0    0    -1  
$EndComp
Text Label 9250 5200 0    50   ~ 0
lcd_en
Text Label 9250 5000 0    50   ~ 0
lcd_rs
Text Label 8700 5850 0    50   ~ 0
v_in
Wire Wire Line
	8600 5850 8600 5800
Connection ~ 8600 5850
Wire Wire Line
	8600 5850 8700 5850
Wire Wire Line
	8600 5000 8600 5050
Wire Wire Line
	8600 5450 8600 5500
Wire Wire Line
	8600 5900 8600 5850
Wire Wire Line
	8600 6250 8600 6200
$Comp
L power:GND #PWR037
U 1 1 6426F3DD
P 8600 6250
F 0 "#PWR037" H 8600 6000 50  0001 C CNN
F 1 "GND" H 8605 6077 50  0000 C CNN
F 2 "" H 8600 6250 50  0001 C CNN
F 3 "" H 8600 6250 50  0001 C CNN
	1    8600 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 6426D1FF
P 8600 6050
F 0 "R17" H 8670 6096 50  0000 L CNN
F 1 "180" H 8670 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8530 6050 50  0001 C CNN
F 3 "~" H 8600 6050 50  0001 C CNN
	1    8600 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6426CBC8
P 8600 5650
F 0 "R16" H 8670 5696 50  0000 L CNN
F 1 "1k" H 8670 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8530 5650 50  0001 C CNN
F 3 "~" H 8600 5650 50  0001 C CNN
	1    8600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5250 8300 5250
Text Label 8050 5250 0    50   ~ 0
tr_v_in
$Comp
L Device:C C13
U 1 1 64B88E71
P 3900 7150
F 0 "C13" H 4015 7196 50  0000 L CNN
F 1 "100n" H 4015 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3938 7000 50  0001 C CNN
F 3 "~" H 3900 7150 50  0001 C CNN
	1    3900 7150
	1    0    0    -1  
$EndComp
Text Notes 3900 6950 0    50   ~ 0
TC7660
Wire Wire Line
	3450 6950 3900 6950
Wire Wire Line
	3900 6950 3900 7000
Connection ~ 3450 6950
Wire Wire Line
	3450 7350 3900 7350
Wire Wire Line
	3900 7350 3900 7300
Connection ~ 3450 7350
$EndSCHEMATC

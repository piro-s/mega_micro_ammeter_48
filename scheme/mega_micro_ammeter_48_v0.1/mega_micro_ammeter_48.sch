EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "mma_48"
Date "2023-03-30"
Rev "v0.1"
Comp "piro.tex"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R4
U 1 1 63ECD52B
P 5350 1350
F 0 "R4" H 5420 1396 50  0000 L CNN
F 1 "10k" H 5420 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 5280 1350 50  0001 C CNN
F 3 "~" H 5350 1350 50  0001 C CNN
	1    5350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1150 5350 1200
$Comp
L Device:R R7
U 1 1 63ED28A3
P 6450 1350
F 0 "R7" H 6520 1396 50  0000 L CNN
F 1 "1k" H 6520 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 6380 1350 50  0001 C CNN
F 3 "~" H 6450 1350 50  0001 C CNN
	1    6450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1150 6450 1200
$Comp
L Device:R R8
U 1 1 63ED4F08
P 7500 1350
F 0 "R8" H 7570 1396 50  0000 L CNN
F 1 "100" H 7570 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 7430 1350 50  0001 C CNN
F 3 "~" H 7500 1350 50  0001 C CNN
	1    7500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1150 7500 1200
$Comp
L Device:R R10
U 1 1 63ED61F5
P 8550 1350
F 0 "R10" H 8620 1396 50  0000 L CNN
F 1 "10R" H 8620 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 8480 1350 50  0001 C CNN
F 3 "~" H 8550 1350 50  0001 C CNN
	1    8550 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1150 8550 1200
Text Label 4900 950  0    50   ~ 0
r_1
Wire Wire Line
	4900 950  5050 950 
Text Label 6000 950  0    50   ~ 0
r_2
Wire Wire Line
	6000 950  6150 950 
Text Label 7050 950  0    50   ~ 0
r_3
Wire Wire Line
	7050 950  7200 950 
Text Label 8100 950  0    50   ~ 0
r_4
Wire Wire Line
	8100 950  8250 950 
$Comp
L Transistor_FET:IRF7324 Q2
U 1 1 63F5BFA5
P 5250 950
F 0 "Q2" H 5455 904 50  0000 L CNN
F 1 "IRF7324" H 5455 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 5350 950 50  0001 L CNN
	1    5250 950 
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF7324 Q3
U 1 1 63F5F0D7
P 7400 950
F 0 "Q3" H 7605 904 50  0000 L CNN
F 1 "IRF7324" H 7605 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7600 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 7500 950 50  0001 L CNN
	1    7400 950 
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF7324 Q3
U 2 1 63F5FB58
P 8450 950
F 0 "Q3" H 8655 904 50  0000 L CNN
F 1 "IRF7324" H 8655 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8650 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 8550 950 50  0001 L CNN
	2    8450 950 
	1    0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 63F6B6F8
P 9600 1350
F 0 "R13" H 9670 1396 50  0000 L CNN
F 1 "1R0" H 9670 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 9530 1350 50  0001 C CNN
F 3 "~" H 9600 1350 50  0001 C CNN
	1    9600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1150 9600 1200
Text Label 9150 950  0    50   ~ 0
r_5
Wire Wire Line
	9150 950  9300 950 
$Comp
L Transistor_FET:IRF7324 Q4
U 1 1 63F6B714
P 9500 950
F 0 "Q4" H 9705 904 50  0000 L CNN
F 1 "IRF7324" H 9705 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9700 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 9600 950 50  0001 L CNN
	1    9500 950 
	1    0    0    1   
$EndComp
Text Label 4900 1550 0    50   ~ 0
v_sense_n
$Comp
L Transistor_FET:IRF7324 Q2
U 2 1 63F5CE9C
P 6350 950
F 0 "Q2" H 6555 904 50  0000 L CNN
F 1 "IRF7324" H 6555 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6550 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 6450 950 50  0001 L CNN
	2    6350 950 
	1    0    0    1   
$EndComp
Wire Wire Line
	4900 700  5350 700 
Wire Wire Line
	5350 750  5350 700 
Connection ~ 5350 700 
Wire Wire Line
	5350 700  6450 700 
Wire Wire Line
	6450 750  6450 700 
Connection ~ 6450 700 
Wire Wire Line
	6450 700  7500 700 
Wire Wire Line
	7500 750  7500 700 
Connection ~ 7500 700 
Wire Wire Line
	7500 700  8550 700 
Wire Wire Line
	8550 750  8550 700 
Connection ~ 8550 700 
Wire Wire Line
	8550 700  9600 700 
Wire Wire Line
	9600 750  9600 700 
Wire Wire Line
	9600 1550 9600 1500
Wire Wire Line
	8550 1500 8550 1550
Connection ~ 8550 1550
Wire Wire Line
	8550 1550 9600 1550
Wire Wire Line
	7500 1500 7500 1550
Connection ~ 7500 1550
Wire Wire Line
	7500 1550 8550 1550
Wire Wire Line
	6450 1500 6450 1550
Connection ~ 6450 1550
Wire Wire Line
	6450 1550 7500 1550
Wire Wire Line
	10650 1150 10650 1200
Text Label 10200 950  0    50   ~ 0
r_6
Wire Wire Line
	10200 950  10350 950 
Wire Wire Line
	10650 700  10650 750 
$Comp
L Device:Fuse F1
U 1 1 6424BA86
P 5350 1750
F 0 "F1" H 5400 1800 50  0000 L CNN
F 1 "1A" H 5400 1700 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 5280 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1550 6450 1550
Wire Wire Line
	5350 1500 5350 1550
$Comp
L Transistor_FET:IRF7324 Q4
U 2 1 6424D6E2
P 10550 950
F 0 "Q4" H 10755 904 50  0000 L CNN
F 1 "IRF7324" H 10755 995 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10750 875 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/irf7324pbf.pdf?fileId=5546d462533600a4015355f5f0861b4b" H 10650 950 50  0001 L CNN
	2    10550 950 
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:BSS83P Q1
U 1 1 64254865
P 4150 950
F 0 "Q1" H 4354 904 50  0000 L CNN
F 1 "BSS83P" H 4354 995 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4350 875 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1835997.pdf" H 4150 950 50  0001 L CNN
	1    4150 950 
	1    0    0    1   
$EndComp
Text Label 3700 950  0    50   ~ 0
tr_v_in
Wire Wire Line
	3700 950  3950 950 
Wire Wire Line
	5350 1550 5350 1600
Connection ~ 5350 1550
Wire Wire Line
	4900 1950 5350 1950
Wire Wire Line
	5350 1950 5350 1900
$Comp
L Device:R R2
U 1 1 6426CBC8
P 4250 1350
F 0 "R2" H 4320 1396 50  0000 L CNN
F 1 "1k" H 4320 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4180 1350 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6426D1FF
P 4250 1750
F 0 "R3" H 4320 1796 50  0000 L CNN
F 1 "180" H 4320 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4180 1750 50  0001 C CNN
F 3 "~" H 4250 1750 50  0001 C CNN
	1    4250 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6426D8B3
P 2800 750
F 0 "J2" H 2800 850 50  0000 C CNN
F 1 "In" H 2800 550 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 2800 750 50  0001 C CNN
F 3 "~" H 2800 750 50  0001 C CNN
	1    2800 750 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 850  3000 850 
Wire Wire Line
	3000 750  3450 750 
$Comp
L power:GND #PWR018
U 1 1 6426F3DD
P 4250 1950
F 0 "#PWR018" H 4250 1700 50  0001 C CNN
F 1 "GND" H 4255 1777 50  0000 C CNN
F 2 "" H 4250 1950 50  0001 C CNN
F 3 "" H 4250 1950 50  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1950 4250 1900
Wire Wire Line
	4250 1600 4250 1550
Wire Wire Line
	4250 1150 4250 1200
Wire Wire Line
	4250 700  4250 750 
Wire Wire Line
	4250 1550 4350 1550
Connection ~ 4250 1550
Wire Wire Line
	4250 1550 4250 1500
Text Label 4350 1550 0    50   ~ 0
v_in
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
	9550 2750 10000 2750
Wire Wire Line
	9550 3150 10000 3150
$Comp
L power:+5V #PWR030
U 1 1 64279ABD
P 10350 2450
F 0 "#PWR030" H 10350 2300 50  0001 C CNN
F 1 "+5V" H 10365 2623 50  0000 C CNN
F 2 "" H 10350 2450 50  0001 C CNN
F 3 "" H 10350 2450 50  0001 C CNN
	1    10350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6427A0A5
P 10350 3450
F 0 "#PWR031" H 10350 3200 50  0001 C CNN
F 1 "GND" H 10355 3277 50  0000 C CNN
F 2 "" H 10350 3450 50  0001 C CNN
F 3 "" H 10350 3450 50  0001 C CNN
	1    10350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3450 10350 3400
Wire Wire Line
	10350 2450 10350 2500
Wire Wire Line
	11050 2950 10750 2950
Wire Notes Line
	5200 1600 5600 1600
Wire Notes Line
	5200 2000 5200 1600
Wire Notes Line
	5600 1600 5600 2000
Wire Notes Line
	5200 2000 5600 2000
$Comp
L MCU_Microchip_ATmega:ATmega48-20AU U2
U 1 1 64284A0B
P 5600 4150
F 0 "U2" H 5150 5600 50  0000 C CNN
F 1 "ATmega48-20AU" H 5950 2700 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5600 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2545-8-bit-AVR-Microcontroller-ATmega48-88-168_Datasheet.pdf" H 5600 4150 50  0001 C CNN
	1    5600 4150
	1    0    0    -1  
$EndComp
Text Label 9350 4900 0    50   ~ 0
lcd_rs
Text Label 9350 5100 0    50   ~ 0
lcd_en
$Comp
L power:GND #PWR029
U 1 1 64289912
P 10200 6150
F 0 "#PWR029" H 10200 5900 50  0001 C CNN
F 1 "GND" H 10205 5977 50  0000 C CNN
F 2 "" H 10200 6150 50  0001 C CNN
F 3 "" H 10200 6150 50  0001 C CNN
	1    10200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 64289EC7
P 9750 6150
F 0 "#PWR027" H 9750 5900 50  0001 C CNN
F 1 "GND" H 9755 5977 50  0000 C CNN
F 2 "" H 9750 6150 50  0001 C CNN
F 3 "" H 9750 6150 50  0001 C CNN
	1    9750 6150
	1    0    0    -1  
$EndComp
Text Label 9350 5600 0    50   ~ 0
lcd_db4
Text Label 9350 5700 0    50   ~ 0
lcd_db5
Text Label 9350 5800 0    50   ~ 0
lcd_db6
Text Label 9350 5900 0    50   ~ 0
lcd_db7
Wire Wire Line
	10200 6100 10200 6150
$Comp
L Display_Character:RC1602A U3
U 1 1 642CC86B
P 10200 5400
F 0 "U3" H 9950 6050 50  0000 C CNN
F 1 "RC1602A" H 10400 4750 50  0000 C CNN
F 2 "Display:WC1602A" H 10300 4600 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 10300 5300 50  0001 C CNN
	1    10200 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 6444A6CD
P 10200 4650
F 0 "#PWR028" H 10200 4500 50  0001 C CNN
F 1 "+5V" H 10215 4823 50  0000 C CNN
F 2 "" H 10200 4650 50  0001 C CNN
F 3 "" H 10200 4650 50  0001 C CNN
	1    10200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4650 10200 4700
Wire Wire Line
	9350 5900 9800 5900
Wire Wire Line
	9800 5800 9350 5800
Wire Wire Line
	9350 5700 9800 5700
Wire Wire Line
	9800 5600 9350 5600
Wire Wire Line
	9350 5100 9800 5100
Wire Wire Line
	9800 4900 9350 4900
NoConn ~ 9800 5200
NoConn ~ 9800 5300
NoConn ~ 9800 5400
NoConn ~ 9800 5500
$Comp
L power:+5V #PWR032
U 1 1 6445F701
P 10650 4650
F 0 "#PWR032" H 10650 4500 50  0001 C CNN
F 1 "+5V" H 10665 4823 50  0000 C CNN
F 2 "" H 10650 4650 50  0001 C CNN
F 3 "" H 10650 4650 50  0001 C CNN
	1    10650 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 6445FA56
P 10850 6150
F 0 "#PWR034" H 10850 5900 50  0001 C CNN
F 1 "GND" H 10855 5977 50  0000 C CNN
F 2 "" H 10850 6150 50  0001 C CNN
F 3 "" H 10850 6150 50  0001 C CNN
	1    10850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5600 10850 5600
Wire Wire Line
	10850 5600 10850 6150
Wire Wire Line
	10600 5700 10650 5700
Wire Wire Line
	10650 5700 10650 4650
Wire Wire Line
	9800 5000 9750 5000
Wire Wire Line
	9750 5000 9750 6150
Text Notes 5350 700  0    50   ~ 0
<10uA
Text Notes 6450 700  0    50   ~ 0
<100uA
Text Notes 7500 700  0    50   ~ 0
<1mA
Text Notes 8550 700  0    50   ~ 0
<10mA
Text Notes 9600 700  0    50   ~ 0
<100mA
Text Notes 10650 700  0    50   ~ 0
<1A
Text Label 11050 2950 2    50   ~ 0
i_meas
Text Label 9550 3150 0    50   ~ 0
v_sense_n
Text Label 3450 850  2    50   ~ 0
i_out
$Comp
L Connector:TestPoint TP1
U 1 1 641E9FEF
P 10750 2750
F 0 "TP1" H 10808 2868 50  0000 L CNN
F 1 "i_meas" H 10808 2777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 10950 2750 50  0001 C CNN
F 3 "~" H 10950 2750 50  0001 C CNN
	1    10750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1550 10650 1550
Wire Wire Line
	10650 1550 10650 1500
Connection ~ 9600 1550
Wire Wire Line
	10650 700  9600 700 
Connection ~ 9600 700 
$Comp
L power:+5V #PWR021
U 1 1 641FA960
P 5600 2600
F 0 "#PWR021" H 5600 2450 50  0001 C CNN
F 1 "+5V" H 5500 2750 50  0000 C CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 5700 2650
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
L Device:C C13
U 1 1 642049FD
P 3900 6000
F 0 "C13" H 4015 6046 50  0000 L CNN
F 1 "100n" H 4015 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3938 5850 50  0001 C CNN
F 3 "~" H 3900 6000 50  0001 C CNN
	1    3900 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 6420519D
P 3900 5750
F 0 "#PWR016" H 3900 5600 50  0001 C CNN
F 1 "+5V" H 3915 5923 50  0000 C CNN
F 2 "" H 3900 5750 50  0001 C CNN
F 3 "" H 3900 5750 50  0001 C CNN
	1    3900 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 64205A5C
P 4150 5800
F 0 "L1" V 4250 5800 50  0000 C CNN
F 1 "10u" V 4100 5800 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4150 5800 50  0001 C CNN
F 3 "~" H 4150 5800 50  0001 C CNN
	1    4150 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VDDA #PWR019
U 1 1 642064B0
P 4400 5750
F 0 "#PWR019" H 4400 5600 50  0001 C CNN
F 1 "VDDA" H 4415 5923 50  0000 C CNN
F 2 "" H 4400 5750 50  0001 C CNN
F 3 "" H 4400 5750 50  0001 C CNN
	1    4400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5750 3900 5800
Wire Wire Line
	3900 5800 4000 5800
Connection ~ 3900 5800
Wire Wire Line
	3900 5800 3900 5850
Wire Wire Line
	4300 5800 4400 5800
Wire Wire Line
	4400 5800 4400 5750
$Comp
L power:GND #PWR017
U 1 1 6420D5DE
P 3900 6200
F 0 "#PWR017" H 3900 5950 50  0001 C CNN
F 1 "GND" H 3905 6027 50  0000 C CNN
F 2 "" H 3900 6200 50  0001 C CNN
F 3 "" H 3900 6200 50  0001 C CNN
	1    3900 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6150 3900 6200
$Comp
L power:VDDA #PWR023
U 1 1 64213ECD
P 5700 2600
F 0 "#PWR023" H 5700 2450 50  0001 C CNN
F 1 "VDDA" H 5750 2750 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2600 5600 2650
NoConn ~ 5000 2950
$Comp
L Device:R R14
U 1 1 64248083
P 10650 1350
F 0 "R14" H 10720 1396 50  0000 L CNN
F 1 "0R1" H 10720 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 10580 1350 50  0001 C CNN
F 3 "~" H 10650 1350 50  0001 C CNN
	1    10650 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 641CD31A
P 8500 5500
F 0 "R9" H 8550 5550 50  0000 L CNN
F 1 "620" H 8550 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8430 5500 50  0001 C CNN
F 3 "~" H 8500 5500 50  0001 C CNN
	1    8500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 641CD9FD
P 8700 5300
F 0 "R11" H 8750 5350 50  0000 L CNN
F 1 "560" H 8750 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8630 5300 50  0001 C CNN
F 3 "~" H 8700 5300 50  0001 C CNN
	1    8700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 641CDEAD
P 8900 5500
F 0 "R12" H 8950 5550 50  0000 L CNN
F 1 "510" H 8950 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 5500 50  0001 C CNN
F 3 "~" H 8900 5500 50  0001 C CNN
	1    8900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 641CE5AB
P 8700 6150
F 0 "#PWR026" H 8700 5900 50  0001 C CNN
F 1 "GND" H 8705 5977 50  0000 C CNN
F 2 "" H 8700 6150 50  0001 C CNN
F 3 "" H 8700 6150 50  0001 C CNN
	1    8700 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 2750 10750 2950
Connection ~ 10750 2950
Wire Wire Line
	10750 2950 10700 2950
$Comp
L Device:LED_RCGB D2
U 1 1 641EE5A6
P 8700 5900
F 0 "D2" V 8850 6250 50  0000 R CNN
F 1 "status" V 8550 5800 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8700 5850 50  0001 C CNN
F 3 "~" H 8700 5850 50  0001 C CNN
	1    8700 5900
	0    -1   -1   0   
$EndComp
Text Label 8500 4900 3    50   ~ 0
led_r
Text Label 8700 4900 3    50   ~ 0
led_g
Text Label 8900 4900 3    50   ~ 0
led_b
Wire Wire Line
	8700 6100 8700 6150
Wire Wire Line
	8500 4900 8500 5350
Wire Wire Line
	8500 5650 8500 5700
Wire Wire Line
	8700 5700 8700 5450
Wire Wire Line
	8700 4900 8700 5150
Wire Wire Line
	8900 4900 8900 5350
Wire Wire Line
	8900 5650 8900 5700
Wire Notes Line
	8300 4850 9150 4850
Wire Notes Line
	9150 4850 9150 6400
Wire Notes Line
	9150 6400 8300 6400
Wire Notes Line
	8300 6400 8300 4850
Text Notes 8400 4850 0    50   ~ 0
LED Status
Text Label 6600 3250 2    50   ~ 0
led_r
Text Label 6600 3350 2    50   ~ 0
led_g
Text Label 6600 3450 2    50   ~ 0
led_b
Wire Notes Line
	9500 2200 11100 2200
Wire Notes Line
	11100 2200 11100 3700
Wire Notes Line
	11100 3700 9500 3700
Wire Notes Line
	9500 3700 9500 2200
Text Notes 9600 2200 0    50   ~ 0
OA
Text Label 6600 4850 2    50   ~ 0
lcd_rs
Text Label 6600 4950 2    50   ~ 0
lcd_en
Text Label 6600 2950 2    50   ~ 0
lcd_db4
Text Label 6600 5350 2    50   ~ 0
lcd_db5
Text Label 6600 5250 2    50   ~ 0
lcd_db6
Text Label 6600 5150 2    50   ~ 0
lcd_db7
Text Label 4700 3150 0    50   ~ 0
v_in
Text Label 6600 5050 2    50   ~ 0
tr_v_in
$Comp
L Device:Crystal Y2
U 1 1 6421C457
P 2000 5700
F 0 "Y2" H 2000 5968 50  0000 C CNN
F 1 "8MHz" H 2000 5877 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 2000 5700 50  0001 C CNN
F 3 "~" H 2000 5700 50  0001 C CNN
	1    2000 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6421CDB7
P 2200 6000
F 0 "C9" H 2315 6046 50  0000 L CNN
F 1 "22p" H 2315 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2238 5850 50  0001 C CNN
F 3 "~" H 2200 6000 50  0001 C CNN
	1    2200 6000
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
P 2200 6200
F 0 "#PWR013" H 2200 5950 50  0001 C CNN
F 1 "GND" H 2205 6027 50  0000 C CNN
F 2 "" H 2200 6200 50  0001 C CNN
F 3 "" H 2200 6200 50  0001 C CNN
	1    2200 6200
	1    0    0    -1  
$EndComp
Text Label 6600 3550 2    50   ~ 0
xtal_1
Text Label 6600 3650 2    50   ~ 0
xtal_2
Text Label 1800 5400 3    50   ~ 0
xtal_1
Text Label 2200 5400 3    50   ~ 0
xtal_2
Wire Wire Line
	2200 5400 2200 5700
Wire Wire Line
	2150 5700 2200 5700
Connection ~ 2200 5700
Wire Wire Line
	2200 5700 2200 5850
Wire Wire Line
	2200 6150 2200 6200
Wire Wire Line
	1800 6200 1800 6150
Wire Wire Line
	1800 5850 1800 5700
Wire Wire Line
	1850 5700 1800 5700
Connection ~ 1800 5700
Wire Wire Line
	1800 5700 1800 5400
Wire Notes Line
	1650 5350 2500 5350
Wire Notes Line
	2500 5350 2500 6450
Wire Notes Line
	2500 6450 1650 6450
Wire Notes Line
	1650 6450 1650 5350
Text Notes 1750 5350 0    50   ~ 0
XTAL
Wire Notes Line
	3750 5500 4550 5500
Wire Notes Line
	4550 5500 4550 6450
Wire Notes Line
	4550 6450 3750 6450
Wire Notes Line
	3750 6450 3750 5500
Text Notes 3800 5500 0    50   ~ 0
VDDA
Wire Notes Line
	9300 4400 11100 4400
Wire Notes Line
	11100 4400 11100 6400
Wire Notes Line
	11100 6400 9300 6400
Wire Notes Line
	9300 6400 9300 4400
Text Notes 9400 4400 0    50   ~ 0
LCD1602
Wire Notes Line
	4850 600  11100 600 
Wire Notes Line
	11100 600  11100 2050
Wire Notes Line
	11100 2050 4850 2050
Wire Notes Line
	4850 2050 4850 600 
Text Notes 4950 600  0    50   ~ 0
Current meter
Wire Notes Line
	3650 600  4700 600 
Wire Notes Line
	4700 600  4700 2200
Wire Notes Line
	4700 2200 3650 2200
Wire Notes Line
	3650 2200 3650 600 
Text Notes 3750 600  0    50   ~ 0
Voltage meter
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
	2650 600  3500 600 
Wire Notes Line
	3500 600  3500 1000
Wire Notes Line
	3500 1000 2650 1000
Wire Notes Line
	2650 1000 2650 600 
Text Notes 2750 600  0    50   ~ 0
Ammeter input
Text Label 6600 4650 2    50   ~ 0
uart_rx
Text Label 6600 4750 2    50   ~ 0
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
Text Label 6600 4450 2    50   ~ 0
reset
Text Label 650  6150 0    50   ~ 0
reset
Text Label 4700 3250 0    50   ~ 0
i_meas
$Comp
L Connector:USB_B_Micro J1
U 1 1 6427B4B3
P 850 1150
F 0 "J1" H 700 1500 50  0000 C CNN
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
L Device:R_POT RV1
U 1 1 642E444D
P 10850 5200
F 0 "RV1" H 10780 5246 50  0000 R CNN
F 1 "10k" H 10780 5155 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386F_Vertical" H 10850 5200 50  0001 C CNN
F 3 "~" H 10850 5200 50  0001 C CNN
	1    10850 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 5200 10700 5200
$Comp
L power:+5V #PWR033
U 1 1 64300C1C
P 10850 4650
F 0 "#PWR033" H 10850 4500 50  0001 C CNN
F 1 "+5V" H 10865 4823 50  0000 C CNN
F 2 "" H 10850 4650 50  0001 C CNN
F 3 "" H 10850 4650 50  0001 C CNN
	1    10850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 4650 10850 5050
Wire Wire Line
	10850 5350 10850 5600
Connection ~ 10850 5600
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
	600  6600 3850 6600
Wire Notes Line
	3850 6600 3850 7650
Wire Notes Line
	3850 7650 600  7650
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
	4700 3150 5000 3150
Wire Wire Line
	5000 3250 4700 3250
$Comp
L power:GND #PWR022
U 1 1 64688221
P 5600 5700
F 0 "#PWR022" H 5600 5450 50  0001 C CNN
F 1 "GND" H 5605 5527 50  0000 C CNN
F 2 "" H 5600 5700 50  0001 C CNN
F 3 "" H 5600 5700 50  0001 C CNN
	1    5600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5650 5600 5700
NoConn ~ 1200 2650
Text Label 6600 3850 2    50   ~ 0
r_1
Text Label 6600 3950 2    50   ~ 0
r_2
Text Label 6600 4050 2    50   ~ 0
r_3
Text Label 6600 4150 2    50   ~ 0
r_4
Text Label 6600 4250 2    50   ~ 0
r_5
Text Label 6600 4350 2    50   ~ 0
r_6
$Comp
L mine:MAX4372 DD1
U 1 1 6480AB8F
P 10350 2950
F 0 "DD1" H 10100 3350 50  0000 L CNN
F 1 "MAX4372T" H 10400 2550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 10750 1900 50  0001 C CNN
F 3 "https://static.chipdip.ru/lib/824/DOC004824202.pdf" H 10000 3150 50  0001 C CNN
	1    10350 2950
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
L Device:R R6
U 1 1 6420620B
P 5750 6700
F 0 "R6" H 5820 6746 50  0000 L CNN
F 1 "10k" H 5820 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5680 6700 50  0001 C CNN
F 3 "~" H 5750 6700 50  0001 C CNN
	1    5750 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 642066D6
P 5750 6500
F 0 "#PWR024" H 5750 6350 50  0001 C CNN
F 1 "+5V" H 5750 6650 50  0000 C CNN
F 2 "" H 5750 6500 50  0001 C CNN
F 3 "" H 5750 6500 50  0001 C CNN
	1    5750 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 64213000
P 6700 7400
F 0 "#PWR025" H 6700 7150 50  0001 C CNN
F 1 "GND" H 6705 7227 50  0000 C CNN
F 2 "" H 6700 7400 50  0001 C CNN
F 3 "" H 6700 7400 50  0001 C CNN
	1    6700 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 64213A51
P 5400 6700
F 0 "R5" H 5470 6746 50  0000 L CNN
F 1 "10k" H 5470 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5330 6700 50  0001 C CNN
F 3 "~" H 5400 6700 50  0001 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 64213A57
P 5400 6500
F 0 "#PWR020" H 5400 6350 50  0001 C CNN
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
Text Label 6600 3150 2    50   ~ 0
btn_down
Text Label 6600 3050 2    50   ~ 0
btn_ok
Wire Wire Line
	6200 2950 6600 2950
Wire Wire Line
	6200 3050 6600 3050
Wire Wire Line
	6200 3150 6600 3150
Wire Wire Line
	6200 3250 6600 3250
Wire Wire Line
	6200 3350 6600 3350
Wire Wire Line
	6600 3450 6200 3450
Wire Wire Line
	6200 3550 6600 3550
Wire Wire Line
	6200 3650 6600 3650
Wire Wire Line
	6200 3850 6600 3850
Wire Wire Line
	6200 3950 6600 3950
Wire Wire Line
	6200 4050 6600 4050
Wire Wire Line
	6200 4150 6600 4150
Wire Wire Line
	6200 4250 6600 4250
Wire Wire Line
	6200 4350 6600 4350
Wire Wire Line
	6200 4450 6600 4450
Wire Wire Line
	6200 4650 6600 4650
Wire Wire Line
	6200 4750 6600 4750
Wire Wire Line
	6200 4850 6600 4850
Wire Wire Line
	6200 4950 6600 4950
Wire Wire Line
	6200 5050 6600 5050
Wire Wire Line
	6200 5150 6600 5150
Wire Wire Line
	6200 5250 6600 5250
Wire Wire Line
	6200 5350 6600 5350
Wire Wire Line
	4900 1550 5350 1550
Text Label 3450 750  2    50   ~ 0
i_in
Text Label 4900 1950 0    50   ~ 0
i_out
Text Label 4900 700  0    50   ~ 0
i_in
Text Label 4250 700  2    50   ~ 0
i_in
Text Label 9550 2750 0    50   ~ 0
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
P 2800 5850
F 0 "J3" H 2800 6150 50  0000 C CNN
F 1 "Prog" H 2800 5450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2800 5850 50  0001 C CNN
F 3 "~" H 2800 5850 50  0001 C CNN
	1    2800 5850
	-1   0    0    -1  
$EndComp
Text Label 3300 5650 2    50   ~ 0
led_g
Text Label 3300 5950 2    50   ~ 0
led_r
Text Label 3300 5850 2    50   ~ 0
led_b
$Comp
L power:+5V #PWR014
U 1 1 642E1B28
P 3450 5700
F 0 "#PWR014" H 3450 5550 50  0001 C CNN
F 1 "+5V" H 3450 5850 50  0000 C CNN
F 2 "" H 3450 5700 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Text Label 3300 6050 2    50   ~ 0
reset
$Comp
L power:GND #PWR015
U 1 1 642E2D17
P 3450 6200
F 0 "#PWR015" H 3450 5950 50  0001 C CNN
F 1 "GND" H 3455 6027 50  0000 C CNN
F 2 "" H 3450 6200 50  0001 C CNN
F 3 "" H 3450 6200 50  0001 C CNN
	1    3450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5650 3300 5650
Wire Wire Line
	3000 5750 3450 5750
Wire Wire Line
	3450 5750 3450 5700
Wire Wire Line
	3000 5850 3300 5850
Wire Wire Line
	3300 5950 3000 5950
Wire Wire Line
	3000 6050 3300 6050
Wire Wire Line
	3000 6150 3450 6150
Wire Wire Line
	3450 6150 3450 6200
Wire Notes Line
	2650 5500 3600 5500
Wire Notes Line
	3600 5500 3600 6450
Wire Notes Line
	3600 6450 2650 6450
Wire Notes Line
	2650 6450 2650 5500
Text Notes 2750 5500 0    50   ~ 0
Prog
Wire Wire Line
	1650 6950 2100 6950
Connection ~ 1650 6950
Connection ~ 2100 6950
Wire Wire Line
	2100 7350 1650 7350
Connection ~ 2100 7350
Connection ~ 1650 7350
$EndSCHEMATC

EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:tomlib
LIBS:teensylc
LIBS:ESP8266
LIBS:dogcage-cache
EELAYER 25 0
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
L BARREL_JACK CON1
U 1 1 553C403C
P 1400 1250
F 0 "CON1" H 1400 1500 60  0000 C CNN
F 1 "BARREL_JACK" H 1400 1050 60  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1400 1250 60  0001 C CNN
F 3 "" H 1400 1250 60  0000 C CNN
	1    1400 1250
	1    0    0    -1  
$EndComp
$Comp
L TEENSYLC U3
U 1 1 553C448F
P 7650 1950
F 0 "U3" H 7650 1850 50  0000 C CNN
F 1 "TEENSYLC" H 7650 2050 50  0000 C CNN
F 2 "modules:Teensy-3.1" H 7650 1950 50  0001 C CNN
F 3 "DOCUMENTATION" H 7650 1950 50  0001 C CNN
	1    7650 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 553C44F5
P 2350 1500
F 0 "#PWR01" H 2350 1250 50  0001 C CNN
F 1 "GND" H 2350 1350 50  0000 C CNN
F 2 "" H 2350 1500 60  0000 C CNN
F 3 "" H 2350 1500 60  0000 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 553C4577
P 7950 4050
F 0 "P1" H 7950 4250 50  0000 C CNN
F 1 "Door" V 8050 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7950 4050 60  0001 C CNN
F 3 "" H 7950 4050 60  0000 C CNN
	1    7950 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 553C464F
P 7450 5250
F 0 "#PWR02" H 7450 5000 50  0001 C CNN
F 1 "GND" H 7450 5100 50  0000 C CNN
F 2 "" H 7450 5250 60  0000 C CNN
F 3 "" H 7450 5250 60  0000 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 553C47AE
P 5650 3400
F 0 "#PWR03" H 5650 3150 50  0001 C CNN
F 1 "GND" H 5650 3250 50  0000 C CNN
F 2 "" H 5650 3400 60  0000 C CNN
F 3 "" H 5650 3400 60  0000 C CNN
	1    5650 3400
	1    0    0    -1  
$EndComp
NoConn ~ 1700 1250
$Comp
L LD1117S33TR U2
U 1 1 553C5246
P 4750 1200
F 0 "U2" H 4750 1450 40  0000 C CNN
F 1 "LD1117S33TR" H 4750 1400 40  0000 C CNN
F 2 "SMD_Packages:SOT-223" H 4750 1300 40  0000 C CNN
F 3 "" H 4750 1200 60  0000 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 553C52E7
P 4750 1700
F 0 "#PWR04" H 4750 1450 50  0001 C CNN
F 1 "GND" H 4750 1550 50  0000 C CNN
F 2 "" H 4750 1700 60  0000 C CNN
F 3 "" H 4750 1700 60  0000 C CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 553C5BFF
P 2050 950
F 0 "#FLG05" H 2050 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 1130 50  0000 C CNN
F 2 "" H 2050 950 60  0000 C CNN
F 3 "" H 2050 950 60  0000 C CNN
	1    2050 950 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 553C5FA1
P 6300 4100
F 0 "#PWR06" H 6300 3950 50  0001 C CNN
F 1 "+5V" H 6300 4240 50  0000 C CNN
F 2 "" H 6300 4100 60  0000 C CNN
F 3 "" H 6300 4100 60  0000 C CNN
	1    6300 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 553C6094
P 5950 1450
F 0 "#PWR07" H 5950 1200 50  0001 C CNN
F 1 "GND" H 5950 1300 50  0000 C CNN
F 2 "" H 5950 1450 60  0000 C CNN
F 3 "" H 5950 1450 60  0000 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 553C6264
P 8850 1200
F 0 "#PWR08" H 8850 1050 50  0001 C CNN
F 1 "+5V" H 8850 1340 50  0000 C CNN
F 2 "" H 8850 1200 60  0000 C CNN
F 3 "" H 8850 1200 60  0000 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 553C6392
P 5500 1000
F 0 "#PWR09" H 5500 850 50  0001 C CNN
F 1 "+3.3V" H 5500 1140 50  0000 C CNN
F 2 "" H 5500 1000 60  0000 C CNN
F 3 "" H 5500 1000 60  0000 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 553D18EC
P 4750 2750
F 0 "D2" H 4750 2850 50  0000 C CNN
F 1 "Assoc LED" H 4750 2650 50  0000 C CNN
F 2 "LEDs:LED-0805" H 4750 2750 60  0001 C CNN
F 3 "" H 4750 2750 60  0000 C CNN
	1    4750 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 553D19C7
P 4750 3200
F 0 "R3" V 4830 3200 50  0000 C CNN
F 1 "330" V 4750 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4680 3200 30  0001 C CNN
F 3 "" H 4750 3200 30  0000 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5541A2D5
P 1900 1150
F 0 "D1" H 1900 1250 50  0000 C CNN
F 1 "1N4001" H 1900 1050 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 1900 1150 60  0001 C CNN
F 3 "" H 1900 1150 60  0000 C CNN
	1    1900 1150
	-1   0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 553C46F2
P 5650 2900
F 0 "SW1" H 5800 3010 50  0000 C CNN
F 1 "SW_PUSH" H 5650 2820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 5650 2900 60  0001 C CNN
F 3 "" H 5650 2900 60  0000 C CNN
	1    5650 2900
	0    -1   1    0   
$EndComp
$Comp
L R R5
U 1 1 558214B8
P 6900 4500
F 0 "R5" V 6980 4500 50  0000 C CNN
F 1 "470" V 6900 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4500 30  0001 C CNN
F 3 "" H 6900 4500 30  0000 C CNN
	1    6900 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 559DEAB0
P 9350 4050
F 0 "P2" H 9350 4250 50  0000 C CNN
F 1 "Lock" V 9450 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9350 4050 60  0001 C CNN
F 3 "" H 9350 4050 60  0000 C CNN
	1    9350 4050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 559DEC4E
P 8400 4500
F 0 "R6" V 8480 4500 50  0000 C CNN
F 1 "470" V 8400 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8330 4500 30  0001 C CNN
F 3 "" H 8400 4500 30  0000 C CNN
	1    8400 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 559DEE7F
P 8900 5250
F 0 "#PWR010" H 8900 5000 50  0001 C CNN
F 1 "GND" H 8900 5100 50  0000 C CNN
F 2 "" H 8900 5250 60  0000 C CNN
F 3 "" H 8900 5250 60  0000 C CNN
	1    8900 5250
	1    0    0    -1  
$EndComp
$Comp
L LD1117S50TR U1
U 1 1 55A1671F
P 3300 1200
F 0 "U1" H 3300 1450 40  0000 C CNN
F 1 "LD1117S50TR" H 3300 1400 40  0000 C CNN
F 2 "SMD_Packages:SOT-223" H 3300 1300 40  0000 C CNN
F 3 "" H 3300 1200 60  0000 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55A167AB
P 3300 1700
F 0 "#PWR011" H 3300 1450 50  0001 C CNN
F 1 "GND" H 3300 1550 50  0000 C CNN
F 2 "" H 3300 1700 60  0000 C CNN
F 3 "" H 3300 1700 60  0000 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 55A16FD8
P 2350 1000
F 0 "#PWR012" H 2350 850 50  0001 C CNN
F 1 "VCC" H 2350 1150 50  0000 C CNN
F 2 "" H 2350 1000 60  0000 C CNN
F 3 "" H 2350 1000 60  0000 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 55A17159
P 2650 1000
F 0 "#PWR013" H 2650 850 50  0001 C CNN
F 1 "VCC" H 2650 1150 50  0000 C CNN
F 2 "" H 2650 1000 60  0000 C CNN
F 3 "" H 2650 1000 60  0000 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 55A180AB
P 6300 4400
F 0 "C4" H 6325 4500 50  0000 L CNN
F 1 "100uF" H 6325 4300 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_3x5.3" H 6338 4250 30  0001 C CNN
F 3 "" H 6300 4400 60  0000 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
$Comp
L ESP-01v090 U4
U 1 1 55A18EAE
P 2800 3400
F 0 "U4" H 2800 3300 50  0000 C CNN
F 1 "ESP-01v090" H 2800 3500 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 55A19218
P 950 2650
F 0 "#PWR014" H 950 2500 50  0001 C CNN
F 1 "+3.3V" H 950 2790 50  0000 C CNN
F 2 "" H 950 2650 60  0000 C CNN
F 3 "" H 950 2650 60  0000 C CNN
	1    950  2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 55A19378
P 4400 4350
F 0 "#PWR015" H 4400 4100 50  0001 C CNN
F 1 "GND" H 4400 4200 50  0000 C CNN
F 2 "" H 4400 4350 60  0000 C CNN
F 3 "" H 4400 4350 60  0000 C CNN
	1    4400 4350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 55A1B48F
P 4750 2500
F 0 "#PWR016" H 4750 2350 50  0001 C CNN
F 1 "+3.3V" H 4750 2640 50  0000 C CNN
F 2 "" H 4750 2500 60  0000 C CNN
F 3 "" H 4750 2500 60  0000 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 55A19609
P 4250 3750
F 0 "SW2" H 4400 3860 50  0000 C CNN
F 1 "SW_PUSH" H 4250 3670 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 4250 3750 60  0001 C CNN
F 3 "" H 4250 3750 60  0000 C CNN
	1    4250 3750
	0    1    1    0   
$EndComp
Text Label 3800 3350 0    60   ~ 0
D2
Wire Wire Line
	7450 5050 7450 5250
Wire Wire Line
	7450 4550 7450 4150
Wire Wire Line
	7450 4150 7750 4150
Wire Wire Line
	5150 1150 5500 1150
Wire Wire Line
	5500 1150 5500 1000
Wire Wire Line
	2750 1650 5350 1650
Wire Wire Line
	5350 1250 5350 1150
Connection ~ 5350 1150
Wire Wire Line
	1700 1350 2350 1350
Wire Wire Line
	2350 1350 2350 1500
Wire Wire Line
	8850 1200 8850 1300
Wire Wire Line
	1700 1150 1750 1150
Wire Wire Line
	2350 1000 2350 1150
Wire Wire Line
	2350 1150 2050 1150
Wire Wire Line
	2050 1150 2050 950 
Connection ~ 2050 1150
Wire Wire Line
	8850 1300 8650 1300
Connection ~ 8850 1300
Wire Wire Line
	5650 3400 5650 3200
Wire Wire Line
	7450 3100 7450 3250
Wire Wire Line
	2650 1000 2650 1150
Wire Wire Line
	2650 1150 2900 1150
Wire Wire Line
	2750 1250 2750 1150
Connection ~ 2750 1150
Wire Wire Line
	4000 1000 4000 1250
Wire Wire Line
	3700 1150 4350 1150
Connection ~ 4000 1150
Wire Wire Line
	4000 1650 4000 1550
Wire Wire Line
	950  2650 950  3550
Wire Wire Line
	950  3550 1850 3550
Wire Wire Line
	3750 3350 4500 3350
Wire Wire Line
	1850 3450 1100 3450
Wire Wire Line
	1850 3350 1300 3350
Wire Wire Line
	4500 3350 4500 3150
Wire Wire Line
	950  2850 1300 2850
Connection ~ 950  2850
Wire Wire Line
	1100 3150 1100 2850
Connection ~ 1100 2850
Wire Wire Line
	1300 2850 1300 3050
Wire Wire Line
	4750 2500 4750 2550
Wire Wire Line
	4750 2950 4750 3050
Wire Wire Line
	6900 4650 6900 4750
Wire Wire Line
	6900 4750 7050 4750
Wire Wire Line
	6300 4100 6300 4250
Wire Wire Line
	6650 1400 6200 1400
Text Label 6350 1400 0    60   ~ 0
RX1
Wire Wire Line
	6650 1500 6200 1500
Text Label 6350 1500 0    60   ~ 0
TX1
Wire Wire Line
	6650 1300 5950 1300
Wire Wire Line
	5950 1300 5950 1450
Wire Wire Line
	1850 3250 1500 3250
Text Label 1600 3250 0    60   ~ 0
RX1
$Comp
L +3.3V #PWR017
U 1 1 55A898F1
P 4500 2600
F 0 "#PWR017" H 4500 2450 50  0001 C CNN
F 1 "+3.3V" H 4500 2740 50  0000 C CNN
F 2 "" H 4500 2600 60  0000 C CNN
F 3 "" H 4500 2600 60  0000 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2600 4500 2850
$Comp
L R R1
U 1 1 55A89BD3
P 4500 3000
F 0 "R1" V 4580 3000 50  0000 C CNN
F 1 "10K" V 4500 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3000 30  0001 C CNN
F 3 "" H 4500 3000 30  0000 C CNN
	1    4500 3000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55A8A022
P 1100 3300
F 0 "R4" V 1180 3300 50  0000 C CNN
F 1 "10K" V 1100 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1030 3300 30  0001 C CNN
F 3 "" H 1100 3300 30  0000 C CNN
	1    1100 3300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55A8A080
P 1300 3200
F 0 "R2" V 1380 3200 50  0000 C CNN
F 1 "10K" V 1300 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1230 3200 30  0001 C CNN
F 3 "" H 1300 3200 30  0000 C CNN
	1    1300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3550 4000 3550
Text Label 3800 3550 0    60   ~ 0
TX1
Wire Wire Line
	3750 3450 4750 3450
Wire Wire Line
	4750 3450 4750 3350
Connection ~ 4250 3450
$Comp
L GND #PWR018
U 1 1 55A8AFDE
P 6300 4700
F 0 "#PWR018" H 6300 4450 50  0001 C CNN
F 1 "GND" H 6300 4550 50  0000 C CNN
F 2 "" H 6300 4700 60  0000 C CNN
F 3 "" H 6300 4700 60  0000 C CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 6300 4700
NoConn ~ 7750 3100
NoConn ~ 7550 3100
Wire Wire Line
	6650 1600 6200 1600
Text Label 6350 1600 0    60   ~ 0
D2
$Comp
L GND #PWR019
U 1 1 55A8B8EF
P 7650 3200
F 0 "#PWR019" H 7650 2950 50  0001 C CNN
F 1 "GND" H 7650 3050 50  0000 C CNN
F 2 "" H 7650 3200 60  0000 C CNN
F 3 "" H 7650 3200 60  0000 C CNN
	1    7650 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 55A8B9CD
P 8850 1500
F 0 "#PWR020" H 8850 1250 50  0001 C CNN
F 1 "GND" H 8850 1350 50  0000 C CNN
F 2 "" H 8850 1500 60  0000 C CNN
F 3 "" H 8850 1500 60  0000 C CNN
	1    8850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1400 8850 1400
Wire Wire Line
	8850 1400 8850 1500
Wire Wire Line
	6650 2400 5650 2400
Wire Wire Line
	5650 2400 5650 2600
Text Label 6350 2400 0    60   ~ 0
D10
Wire Wire Line
	6900 4100 6900 4350
Text Label 6900 4300 1    60   ~ 0
D14
Wire Wire Line
	8400 4100 8400 4350
Text Label 8400 4300 1    60   ~ 0
D15
NoConn ~ 6650 2100
NoConn ~ 6650 2000
NoConn ~ 6650 1800
NoConn ~ 6650 1900
NoConn ~ 6650 2200
NoConn ~ 6650 2300
NoConn ~ 7850 3100
NoConn ~ 8650 2300
NoConn ~ 8650 2200
NoConn ~ 8650 2100
NoConn ~ 8650 2000
NoConn ~ 8650 1900
NoConn ~ 8650 1800
NoConn ~ 8650 1700
NoConn ~ 8650 1600
NoConn ~ 8650 1500
NoConn ~ 6650 1700
Wire Wire Line
	8400 4650 8400 4750
Wire Wire Line
	8400 4750 8500 4750
Wire Wire Line
	3300 1450 3300 1700
Wire Wire Line
	2750 1550 2750 1650
Connection ~ 3300 1650
Wire Wire Line
	7650 3100 7650 3200
Wire Wire Line
	3750 3250 4400 3250
Wire Wire Line
	4400 3250 4400 4350
Wire Wire Line
	4250 4050 4250 4200
Wire Wire Line
	4250 4200 4400 4200
Connection ~ 4400 4200
Text Label 7450 3250 1    60   ~ 0
D175V
Wire Wire Line
	7750 3950 7450 3950
Text Label 7500 3950 0    60   ~ 0
D175V
Wire Wire Line
	8800 3950 9150 3950
Text Label 8850 3950 0    60   ~ 0
D175V
NoConn ~ 8650 2600
$Comp
L +5V #PWR021
U 1 1 55A8E706
P 8550 3950
F 0 "#PWR021" H 8550 3800 50  0001 C CNN
F 1 "+5V" H 8550 4090 50  0000 C CNN
F 2 "" H 8550 3950 60  0000 C CNN
F 3 "" H 8550 3950 60  0000 C CNN
	1    8550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3950 8550 4050
Wire Wire Line
	8550 4050 9150 4050
$Comp
L +5V #PWR022
U 1 1 55A8E7E7
P 7250 3950
F 0 "#PWR022" H 7250 3800 50  0001 C CNN
F 1 "+5V" H 7250 4090 50  0000 C CNN
F 2 "" H 7250 3950 60  0000 C CNN
F 3 "" H 7250 3950 60  0000 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3950 7250 4050
Wire Wire Line
	7250 4050 7750 4050
Wire Wire Line
	4750 1450 4750 1700
Connection ~ 4000 1650
Connection ~ 4750 1650
Wire Wire Line
	5350 1650 5350 1550
$Comp
L +5V #PWR023
U 1 1 55AB1974
P 4000 1000
F 0 "#PWR023" H 4000 850 50  0001 C CNN
F 1 "+5V" H 4000 1140 50  0000 C CNN
F 2 "" H 4000 1000 60  0000 C CNN
F 3 "" H 4000 1000 60  0000 C CNN
	1    4000 1000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG024
U 1 1 55AB1D8C
P 2050 1500
F 0 "#FLG024" H 2050 1595 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 1680 50  0000 C CNN
F 2 "" H 2050 1500 60  0000 C CNN
F 3 "" H 2050 1500 60  0000 C CNN
	1    2050 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1500 2050 1350
Connection ~ 2050 1350
Wire Wire Line
	8900 5050 8900 5250
Wire Wire Line
	8900 4550 8900 4150
Wire Wire Line
	8900 4150 9150 4150
$Comp
L C C1
U 1 1 55AB32EC
P 2750 1400
F 0 "C1" H 2775 1500 50  0000 L CNN
F 1 ".1uF" H 2775 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2788 1250 30  0001 C CNN
F 3 "" H 2750 1400 60  0000 C CNN
	1    2750 1400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55AB35B2
P 4000 1400
F 0 "C2" H 4025 1500 50  0000 L CNN
F 1 "10uF" H 4025 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 1250 30  0001 C CNN
F 3 "" H 4000 1400 60  0000 C CNN
	1    4000 1400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55AB367C
P 5350 1400
F 0 "C3" H 5375 1500 50  0000 L CNN
F 1 "10uF" H 5375 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5388 1250 30  0001 C CNN
F 3 "" H 5350 1400 60  0000 C CNN
	1    5350 1400
	1    0    0    -1  
$EndComp
$Comp
L Darl_NPN Q1
U 1 1 55B3E58A
P 7300 4750
F 0 "Q1" H 7300 4950 50  0000 C CNN
F 1 "Darl_NPN" H 7100 4600 50  0000 C CNN
F 2 "SMD_Packages:DPAK-2" H 7300 4700 60  0001 C CNN
F 3 "" H 7300 4700 60  0000 C CNN
	1    7300 4750
	1    0    0    -1  
$EndComp
$Comp
L Darl_NPN Q2
U 1 1 55B3EB3C
P 8750 4750
F 0 "Q2" H 8750 4950 50  0000 C CNN
F 1 "Darl_NPN" H 8550 4600 50  0000 C CNN
F 2 "SMD_Packages:DPAK-2" H 8750 4700 60  0001 C CNN
F 3 "" H 8750 4700 60  0000 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
NoConn ~ 6650 2600
NoConn ~ 6650 2500
Wire Wire Line
	8650 2500 9000 2500
Wire Wire Line
	8650 2400 9000 2400
Text Label 8800 2400 0    60   ~ 0
D15
Text Label 8800 2500 0    60   ~ 0
D14
$EndSCHEMATC

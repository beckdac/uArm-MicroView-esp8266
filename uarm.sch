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
LIBS:special
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
LIBS:uarm-cache
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
L esp-01 U3
U 1 1 547F909B
P 8350 3800
F 0 "U3" H 8400 3900 60  0000 C CNN
F 1 "esp-01" H 8450 4600 60  0000 C CNN
F 2 "uArm:ESP_01" H 8350 3800 60  0001 C CNN
F 3 "" H 8350 3800 60  0000 C CNN
	1    8350 3800
	1    0    0    -1  
$EndComp
$Comp
L MicroView U2
U 1 1 547F9319
P 5350 3700
F 0 "U2" H 5600 3500 60  0000 C CNN
F 1 "MicroView" H 5550 4400 60  0000 C CNN
F 2 "uArm:MICROVIEW" H 5350 3700 60  0001 C CNN
F 3 "" H 5350 3700 60  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$Comp
L LM2596_Buck_Board U1
U 1 1 547F93F4
P 3000 3500
F 0 "U1" H 3150 3550 60  0000 C CNN
F 1 "LM2596_Buck_Board" H 3150 3950 60  0000 C CNN
F 2 "uArm:LM2596_BUCK_BOARD" H 3000 3500 60  0001 C CNN
F 3 "" H 3000 3500 60  0000 C CNN
	1    3000 3500
	1    0    0    -1  
$EndComp
$Comp
L LM2596_Buck_Board U4
U 1 1 547F941D
P 3050 4800
F 0 "U4" H 3200 4850 60  0000 C CNN
F 1 "LM2596_Buck_Board" H 3200 5250 60  0000 C CNN
F 2 "uArm:LM2596_BUCK_BOARD" H 3050 4800 60  0001 C CNN
F 3 "" H 3050 4800 60  0000 C CNN
	1    3050 4800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 547F945C
P 4600 2450
F 0 "R1" V 4680 2450 40  0000 C CNN
F 1 "10k" V 4607 2451 40  0000 C CNN
F 2 "Discret:R1" V 4530 2450 30  0001 C CNN
F 3 "" H 4600 2450 30  0000 C CNN
	1    4600 2450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 547F94BE
P 5500 2300
F 0 "C1" H 5500 2400 40  0000 L CNN
F 1 "100nF" H 5506 2215 40  0000 L CNN
F 2 "Discret:C1" H 5538 2150 30  0001 C CNN
F 3 "" H 5500 2300 60  0000 C CNN
	1    5500 2300
	0    1    1    0   
$EndComp
$Comp
L FTDI_Cable CONN2
U 1 1 547F960C
P 8300 2100
F 0 "CONN2" H 8400 1750 60  0000 C CNN
F 1 "FTDI_Cable" H 8350 2550 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06" H 8300 2100 60  0001 C CNN
F 3 "" H 8300 2100 60  0000 C CNN
	1    8300 2100
	1    0    0    -1  
$EndComp
$Comp
L FTDI_Cable CONN1
U 1 1 547F9631
P 6000 2100
F 0 "CONN1" H 6100 1750 60  0000 C CNN
F 1 "FTDI_Cable" H 6050 2550 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06" H 6000 2100 60  0001 C CNN
F 3 "" H 6000 2100 60  0000 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L SERVO CONN7
U 1 1 547F9662
P 8750 4850
F 0 "CONN7" H 8750 4850 60  0000 C CNN
F 1 "SERVO" H 8750 5350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8750 4850 60  0001 C CNN
F 3 "" H 8750 4850 60  0000 C CNN
	1    8750 4850
	1    0    0    -1  
$EndComp
$Comp
L SERVO CONN3
U 1 1 547F96BD
P 4950 4850
F 0 "CONN3" H 4950 4850 60  0000 C CNN
F 1 "SERVO" H 4950 5350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 4850 60  0001 C CNN
F 3 "" H 4950 4850 60  0000 C CNN
	1    4950 4850
	1    0    0    -1  
$EndComp
$Comp
L SERVO CONN4
U 1 1 547F96E2
P 5950 4850
F 0 "CONN4" H 5950 4850 60  0000 C CNN
F 1 "SERVO" H 5950 5350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5950 4850 60  0001 C CNN
F 3 "" H 5950 4850 60  0000 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
$Comp
L SERVO CONN5
U 1 1 547F972D
P 6850 4850
F 0 "CONN5" H 6850 4850 60  0000 C CNN
F 1 "SERVO" H 6850 5350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6850 4850 60  0001 C CNN
F 3 "" H 6850 4850 60  0000 C CNN
	1    6850 4850
	1    0    0    -1  
$EndComp
$Comp
L SERVO CONN6
U 1 1 547F9757
P 7750 4850
F 0 "CONN6" H 7750 4850 60  0000 C CNN
F 1 "SERVO" H 7750 5350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7750 4850 60  0001 C CNN
F 3 "" H 7750 4850 60  0000 C CNN
	1    7750 4850
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR01
U 1 1 547FE774
P 3900 4500
F 0 "#PWR01" H 3900 4600 40  0001 C CNN
F 1 "3V3" H 3900 4625 40  0000 C CNN
F 2 "" H 3900 4500 60  0000 C CNN
F 3 "" H 3900 4500 60  0000 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4500 3900 4500
$Comp
L GND #PWR02
U 1 1 547FE805
P 3900 4700
F 0 "#PWR02" H 3900 4700 30  0001 C CNN
F 1 "GND" H 3900 4630 30  0001 C CNN
F 2 "" H 3900 4700 60  0000 C CNN
F 3 "" H 3900 4700 60  0000 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4700 3900 4600
Wire Wire Line
	3900 4600 3600 4600
$Comp
L VCC #PWR03
U 1 1 547FE829
P 2350 4500
F 0 "#PWR03" H 2350 4600 30  0001 C CNN
F 1 "VCC" H 2350 4600 30  0000 C CNN
F 2 "" H 2350 4500 60  0000 C CNN
F 3 "" H 2350 4500 60  0000 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4500 2750 4500
$Comp
L GND #PWR04
U 1 1 547FE84F
P 2350 4700
F 0 "#PWR04" H 2350 4700 30  0001 C CNN
F 1 "GND" H 2350 4630 30  0001 C CNN
F 2 "" H 2350 4700 60  0000 C CNN
F 3 "" H 2350 4700 60  0000 C CNN
	1    2350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4700 2350 4600
Wire Wire Line
	2350 4600 2750 4600
$Comp
L VCC #PWR05
U 1 1 547FE9BB
P 2350 3200
F 0 "#PWR05" H 2350 3300 30  0001 C CNN
F 1 "VCC" H 2350 3300 30  0000 C CNN
F 2 "" H 2350 3200 60  0000 C CNN
F 3 "" H 2350 3200 60  0000 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3200 2700 3200
$Comp
L GND #PWR06
U 1 1 547FE9E4
P 2350 3350
F 0 "#PWR06" H 2350 3350 30  0001 C CNN
F 1 "GND" H 2350 3280 30  0001 C CNN
F 2 "" H 2350 3350 60  0000 C CNN
F 3 "" H 2350 3350 60  0000 C CNN
	1    2350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3350 2350 3300
Wire Wire Line
	2350 3300 2700 3300
$Comp
L GND #PWR07
U 1 1 547FEA26
P 3900 3350
F 0 "#PWR07" H 3900 3350 30  0001 C CNN
F 1 "GND" H 3900 3280 30  0001 C CNN
F 2 "" H 3900 3350 60  0000 C CNN
F 3 "" H 3900 3350 60  0000 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3350 3900 3300
Wire Wire Line
	3900 3300 3550 3300
$Comp
L +5V #PWR08
U 1 1 547FEA52
P 3900 3200
F 0 "#PWR08" H 3900 3290 20  0001 C CNN
F 1 "+5V" H 3900 3290 30  0000 C CNN
F 2 "" H 3900 3200 60  0000 C CNN
F 3 "" H 3900 3200 60  0000 C CNN
	1    3900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3200 3550 3200
$Comp
L 3V3 #PWR09
U 1 1 547FEB36
P 4600 2000
F 0 "#PWR09" H 4600 2100 40  0001 C CNN
F 1 "3V3" H 4600 2125 40  0000 C CNN
F 2 "" H 4600 2000 60  0000 C CNN
F 3 "" H 4600 2000 60  0000 C CNN
	1    4600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2200 4600 2000
Wire Wire Line
	4600 2800 5300 2800
Wire Wire Line
	4600 2700 4600 3100
Wire Wire Line
	4600 3100 4900 3100
Connection ~ 4600 2800
$Comp
L GND #PWR010
U 1 1 547FEC0E
P 4550 3900
F 0 "#PWR010" H 4550 3900 30  0001 C CNN
F 1 "GND" H 4550 3830 30  0001 C CNN
F 2 "" H 4550 3900 60  0000 C CNN
F 3 "" H 4550 3900 60  0000 C CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3900 4550 3800
Wire Wire Line
	4550 3800 4900 3800
$Comp
L GND #PWR011
U 1 1 547FEC78
P 4350 4600
F 0 "#PWR011" H 4350 4600 30  0001 C CNN
F 1 "GND" H 4350 4530 30  0001 C CNN
F 2 "" H 4350 4600 60  0000 C CNN
F 3 "" H 4350 4600 60  0000 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4500 4350 4500
Wire Wire Line
	4350 4500 4350 4600
$Comp
L GND #PWR012
U 1 1 547FECB0
P 5300 4600
F 0 "#PWR012" H 5300 4600 30  0001 C CNN
F 1 "GND" H 5300 4530 30  0001 C CNN
F 2 "" H 5300 4600 60  0000 C CNN
F 3 "" H 5300 4600 60  0000 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4600 5300 4500
Wire Wire Line
	5300 4500 5700 4500
$Comp
L GND #PWR013
U 1 1 547FECEA
P 6200 4600
F 0 "#PWR013" H 6200 4600 30  0001 C CNN
F 1 "GND" H 6200 4530 30  0001 C CNN
F 2 "" H 6200 4600 60  0000 C CNN
F 3 "" H 6200 4600 60  0000 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4600 6200 4500
Wire Wire Line
	6200 4500 6600 4500
$Comp
L GND #PWR014
U 1 1 547FED26
P 7150 4600
F 0 "#PWR014" H 7150 4600 30  0001 C CNN
F 1 "GND" H 7150 4530 30  0001 C CNN
F 2 "" H 7150 4600 60  0000 C CNN
F 3 "" H 7150 4600 60  0000 C CNN
	1    7150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4600 7150 4500
Wire Wire Line
	7150 4500 7500 4500
$Comp
L GND #PWR015
U 1 1 547FED8D
P 8100 4600
F 0 "#PWR015" H 8100 4600 30  0001 C CNN
F 1 "GND" H 8100 4530 30  0001 C CNN
F 2 "" H 8100 4600 60  0000 C CNN
F 3 "" H 8100 4600 60  0000 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4600 8100 4500
Wire Wire Line
	8100 4500 8500 4500
$Comp
L +5V #PWR016
U 1 1 547FF030
P 4500 4400
F 0 "#PWR016" H 4500 4490 20  0001 C CNN
F 1 "+5V" H 4500 4490 30  0000 C CNN
F 2 "" H 4500 4400 60  0000 C CNN
F 3 "" H 4500 4400 60  0000 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4400 4500 4600
Wire Wire Line
	4500 4600 4700 4600
$Comp
L +5V #PWR017
U 1 1 547FF072
P 5500 4350
F 0 "#PWR017" H 5500 4440 20  0001 C CNN
F 1 "+5V" H 5500 4440 30  0000 C CNN
F 2 "" H 5500 4350 60  0000 C CNN
F 3 "" H 5500 4350 60  0000 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 5500 4600
Wire Wire Line
	5500 4600 5700 4600
$Comp
L +5V #PWR018
U 1 1 547FF0E8
P 6400 4350
F 0 "#PWR018" H 6400 4440 20  0001 C CNN
F 1 "+5V" H 6400 4440 30  0000 C CNN
F 2 "" H 6400 4350 60  0000 C CNN
F 3 "" H 6400 4350 60  0000 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4350 6400 4600
Wire Wire Line
	6400 4600 6600 4600
$Comp
L +5V #PWR019
U 1 1 547FF12F
P 6750 4900
F 0 "#PWR019" H 6750 4990 20  0001 C CNN
F 1 "+5V" H 6750 4990 30  0000 C CNN
F 2 "" H 6750 4900 60  0000 C CNN
F 3 "" H 6750 4900 60  0000 C CNN
	1    6750 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 547FF143
P 7300 4400
F 0 "#PWR020" H 7300 4490 20  0001 C CNN
F 1 "+5V" H 7300 4490 30  0000 C CNN
F 2 "" H 7300 4400 60  0000 C CNN
F 3 "" H 7300 4400 60  0000 C CNN
	1    7300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4400 7300 4600
Wire Wire Line
	7300 4600 7500 4600
$Comp
L +5V #PWR021
U 1 1 547FF18C
P 6400 5400
F 0 "#PWR021" H 6400 5490 20  0001 C CNN
F 1 "+5V" H 6400 5490 30  0000 C CNN
F 2 "" H 6400 5400 60  0000 C CNN
F 3 "" H 6400 5400 60  0000 C CNN
	1    6400 5400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 547FF211
P 8300 4400
F 0 "#PWR022" H 8300 4490 20  0001 C CNN
F 1 "+5V" H 8300 4490 30  0000 C CNN
F 2 "" H 8300 4400 60  0000 C CNN
F 3 "" H 8300 4400 60  0000 C CNN
	1    8300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4400 8300 4600
Wire Wire Line
	8300 4600 8500 4600
$Comp
L GND #PWR023
U 1 1 547FFB43
P 5200 1900
F 0 "#PWR023" H 5200 1900 30  0001 C CNN
F 1 "GND" H 5200 1830 30  0001 C CNN
F 2 "" H 5200 1900 60  0000 C CNN
F 3 "" H 5200 1900 60  0000 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1900 5200 1800
Wire Wire Line
	5200 1800 5800 1800
$Comp
L GND #PWR024
U 1 1 547FFB8F
P 7450 1900
F 0 "#PWR024" H 7450 1900 30  0001 C CNN
F 1 "GND" H 7450 1830 30  0001 C CNN
F 2 "" H 7450 1900 60  0000 C CNN
F 3 "" H 7450 1900 60  0000 C CNN
	1    7450 1900
	1    0    0    -1  
$EndComp
Text GLabel 8500 5000 0    60   Input ~ 0
SERVO_L
Text GLabel 7500 5000 0    60   Input ~ 0
SERVO_R
Text GLabel 6600 5000 0    60   Input ~ 0
SERVO_ROT
Text GLabel 5700 5000 0    60   Input ~ 0
SERVO_HROT
Text GLabel 4700 5000 0    60   Input ~ 0
SERVO_H
Wire Wire Line
	4700 4700 4700 5000
Wire Wire Line
	5700 5000 5700 4700
Wire Wire Line
	6600 4700 6600 5000
Wire Wire Line
	7500 4700 7500 5000
Wire Wire Line
	8500 4700 8500 5000
Text GLabel 4750 3700 0    60   Input ~ 0
SERVO_H
Wire Wire Line
	4750 3700 4900 3700
Text GLabel 6400 3600 2    60   Input ~ 0
SERVO_L
Wire Wire Line
	6400 3600 6250 3600
Text GLabel 6400 3500 2    60   Input ~ 0
SERVO_R
Text GLabel 6400 3400 2    60   Input ~ 0
SERVO_ROT
Text GLabel 6400 3300 2    60   Input ~ 0
SERVO_HROT
Wire Wire Line
	6400 3300 6250 3300
Wire Wire Line
	6250 3400 6400 3400
Wire Wire Line
	6400 3500 6250 3500
$Comp
L 3V3 #PWR025
U 1 1 548000BE
P 6450 3100
F 0 "#PWR025" H 6450 3200 40  0001 C CNN
F 1 "3V3" H 6450 3225 40  0000 C CNN
F 2 "" H 6450 3100 60  0000 C CNN
F 3 "" H 6450 3100 60  0000 C CNN
	1    6450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3100 6250 3100
Wire Wire Line
	7450 1900 7450 1800
Wire Wire Line
	7450 1800 8100 1800
Text Notes 3350 2900 2    60   ~ 0
5V Supply
Text Notes 3400 4200 2    60   ~ 0
3V3 Supply
Wire Wire Line
	7950 3300 7800 3300
Wire Wire Line
	7800 3300 7800 3600
Wire Wire Line
	7700 3500 7950 3500
$Comp
L 3V3 #PWR026
U 1 1 5480041A
P 7700 3500
F 0 "#PWR026" H 7700 3600 40  0001 C CNN
F 1 "3V3" H 7700 3625 40  0000 C CNN
F 2 "" H 7700 3500 60  0000 C CNN
F 3 "" H 7700 3500 60  0000 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Connection ~ 7800 3500
$Comp
L GND #PWR027
U 1 1 54800479
P 9500 3300
F 0 "#PWR027" H 9500 3300 30  0001 C CNN
F 1 "GND" H 9500 3230 30  0001 C CNN
F 2 "" H 9500 3300 60  0000 C CNN
F 3 "" H 9500 3300 60  0000 C CNN
	1    9500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3300 9500 3200
Wire Wire Line
	9500 3200 8950 3200
$Comp
L CONN_01X02 P1
U 1 1 548004E5
P 10000 3350
F 0 "P1" H 10000 3500 50  0000 C CNN
F 1 "CONN_01X02" V 10100 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 10000 3350 60  0001 C CNN
F 3 "" H 10000 3350 60  0000 C CNN
	1    10000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3400 8950 3400
Wire Wire Line
	9800 3200 9800 3300
$Comp
L GND #PWR028
U 1 1 548006D2
P 9700 3300
F 0 "#PWR028" H 9700 3300 30  0001 C CNN
F 1 "GND" H 9700 3230 30  0001 C CNN
F 2 "" H 9700 3300 60  0000 C CNN
F 3 "" H 9700 3300 60  0000 C CNN
	1    9700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3300 9700 3200
Wire Wire Line
	9700 3200 9800 3200
Text GLabel 7700 4100 0    60   Input ~ 0
ESP_RST
$Comp
L R R2
U 1 1 54800AFD
P 7800 3850
F 0 "R2" V 7880 3850 40  0000 C CNN
F 1 "10K" V 7807 3851 40  0000 C CNN
F 2 "Discret:R1" V 7730 3850 30  0001 C CNN
F 3 "" H 7800 3850 30  0000 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4100 7900 4100
Wire Wire Line
	7900 4100 7900 3400
Wire Wire Line
	7900 3400 7950 3400
Connection ~ 7800 4100
Text GLabel 4750 3600 0    60   Input ~ 0
ESP_RST
Wire Wire Line
	4750 3600 4900 3600
Text GLabel 5200 2300 0    60   Input ~ 0
MV_RESET
Wire Wire Line
	5200 2300 5300 2300
Wire Wire Line
	5700 2300 5800 2300
Text GLabel 5300 2800 2    60   Input ~ 0
MV_RESET
Text GLabel 9500 3700 2    60   Input ~ 0
MV_RESET
Wire Wire Line
	9500 3700 9300 3700
Wire Wire Line
	9300 3700 9300 3300
Wire Wire Line
	9300 3300 8950 3300
Text GLabel 6400 3700 2    60   Input ~ 0
MV_TXD
Text GLabel 6400 3800 2    60   Input ~ 0
MV_RXD
Text GLabel 5200 2200 0    60   Input ~ 0
MV_TXD
Text GLabel 5200 2100 0    60   Input ~ 0
MV_RXD
Wire Wire Line
	5200 2100 5800 2100
Wire Wire Line
	5800 2200 5200 2200
Wire Wire Line
	6250 3700 6400 3700
Wire Wire Line
	6400 3800 6250 3800
Text GLabel 7800 3200 0    60   Input ~ 0
ESP_TX
Text GLabel 9400 3500 2    60   Input ~ 0
ESP_RX
Wire Wire Line
	9400 3500 8950 3500
Wire Wire Line
	7950 3200 7800 3200
Text GLabel 7900 2200 0    60   Input ~ 0
ESP_TX
Text GLabel 7900 2100 0    60   Input ~ 0
ESP_RX
Wire Wire Line
	7900 2100 8100 2100
Wire Wire Line
	8100 2200 7900 2200
$EndSCHEMATC

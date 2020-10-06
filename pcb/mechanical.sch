EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "0x42"
Date "2020-09-16"
Rev "0"
Comp "plut0nium"
Comment1 ""
Comment2 "- USB-C, per-key LED backlight, encoder"
Comment3 "- For MX-style switches"
Comment4 "60% Ortholinear Mechanical Keyboard"
$EndDescr
Wire Notes Line
	1850 1800 9650 1800
Wire Notes Line
	9650 1800 9650 5100
Wire Notes Line
	9650 5100 1850 5100
Wire Notes Line
	1850 5100 1850 1800
Wire Wire Line
	6200 2850 6200 2950
Text GLabel 6200 2950 3    50   Input ~ 0
Shield
$Comp
L 0xLib_MK:MK_Board BRD0
U 1 1 601B4087
P 5800 2500
F 0 "BRD0" H 6328 2488 50  0000 L CNN
F 1 "MK_Board" H 6328 2397 50  0000 L CNN
F 2 "0xLib_MK_Boards:60_Outline_Ortho" H 5800 2500 50  0001 C CNN
F 3 "" H 5800 2500 50  0001 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "0x42"
Date "2020-06-23"
Rev "v01"
Comp "plut0nium"
Comment1 ""
Comment2 "- USB-C, backlight & RGB underglow"
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
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F07F590
P 5000 2000
F 0 "H1" H 5100 2049 50  0000 L CNN
F 1 "MountingHole_Pad" H 5100 1958 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 5000 2000 50  0001 C CNN
F 3 "~" H 5000 2000 50  0001 C CNN
	1    5000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 5000 2200
Wire Wire Line
	5000 2200 4900 2200
Text GLabel 4900 2200 0    50   Input ~ 0
Shield
$EndSCHEMATC

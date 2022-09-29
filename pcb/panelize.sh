#!/bin/sh

PANELIZE_GLOBAL="0x42_panelize.json"
PANELIZE_VCUTS="0x42_panelize_vcuts.json"

PANELIZE_OPTIONS="-p $PANELIZE_GLOBAL"
if [[ "$1" == "vcuts" ]]
then
	PANELIZE_OPTIONS="$PANELIZE_OPTIONS -p $PANELIZE_VCUTS"
fi

kikit panelize \
	$PANELIZE_OPTIONS \
	0x42.kicad_pcb \
	panel/0x42_panel.kicad_pcb


#!/usr/bin/env sh

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
is_discharging=`acpi -b | grep -o 'Discharging'`1

if [ $battery_level -le 18 ] && [ $is_discharging=='Discharging1' ]; then
	notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
      	paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga
fi

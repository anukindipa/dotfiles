#!/usr/bin/env sh

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
is_discharging=`acpi -b | grep -o 'Discharging'`

if [ $battery_level -le 18 ] && [ $is_discharging=='Discharging' ]; then
	notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
      	paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga
fi

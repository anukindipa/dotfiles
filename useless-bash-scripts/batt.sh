#!/usr/bin/env sh
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`

while true
do
if [ $battery_level -le 16 ]; then
	notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
      	paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga
fi
sleep 60
done

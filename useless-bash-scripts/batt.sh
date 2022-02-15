#!/usr/bin/env sh

while true
do
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [ $battery_level -le 16 ]; then
	notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
      	paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga
fi
sleep 60
done

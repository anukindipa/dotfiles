#!/usr/bin/env fish

# Use Externel monitor as Main display and turn off laptop screen

# Disabling sleep when Laptop lid is closed
#   sudo nvim /etc/systemd/logind.conf 
#       > and uncomment/edit lines
#   sudo systemctl restart systemd-logind    

# run if HDMI-1-0 is detected
if xrandr | grep "HDMI-1-0 connected" > /dev/null
    echo "Making HDMI-1-0 primary"
    # enable external monitor
    xrandr --output HDMI-1-0 --auto --left-of eDP-1

    # make monitor primary
    xrandr --output HDMI-1-0 --primary

    # disable laptop screen
    xrandr --output eDP-1 --off
else
    echo "monitor not detected?"
end


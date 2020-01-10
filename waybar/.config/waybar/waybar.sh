#!/usr/bin/env sh
##
## ~/.config/waybar/waybar.sh
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## waybar start script
##

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar

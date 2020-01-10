#!/usr/bin/env sh
##
## ~/.config/sway/startup.sh
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## sway startup script
##

# set audio
pactl -- set-sink-volume 0 0% > /dev/null
pactl -- set-sink-mute 0 1 > /dev/null
pactl -- set-source-mute 0 0 > /dev/null

# set brightness
brightnessctl s 100%

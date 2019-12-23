#!/usr/bin/env sh

# audio
amixer sset Master 0% > /dev/null
amixer sset Master mute > /dev/null
amixer sset Capture nocap > /dev/null
# set brightness
brightnessctl s 100%

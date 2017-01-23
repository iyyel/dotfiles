#!/usr/bin/env sh
#
# ~/.xinitrc
#
# Authors:
#   Iyyel <github.com/iyyel>
#

# Key repeat rate
xset r rate 200 50

# Switch capslock/escape key (vim/nvim)
setxkbmap -option caps:escape

# Set xkeymap
setxkbmap dk

# Cursor (stop X11 default 'X' cursor.)
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 16

# Load ~/.Xresources if found
[[ -f ~/.Xresources ]] && xrdb -load ${HOME}/.Xresources

# Start sxhkd & bspwm
sxhkd &
exec bspwm

#!/usr/bin/env sh
#
# ~/.xinitrc
#
# Authors:
#  InAbsentia <github.com/inabsencia>
#

# Set Root window
xsetroot -name background

# Cursor (stop X11 default 'X' cursor.)
xsetroot -cursor_name left_ptr

# Key repeat rate
xset r rate 200 50

# Switch capslock/escape key (vim/nvim)
setxkbmap -option caps:escape

# set xkeymap
setxkbmap us

# Load ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -load ~/.Xresources

# Start sxhkd & bspwm
exec bspwm

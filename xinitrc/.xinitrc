#!/usr/bin/env sh

# Screen calibration
xcalib -gc 1.08 -co 97 ~/x230.icm &

# Set Root window
xsetroot -name background

# Cursor (stop X11 default 'X' cursor.)
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 16

# Key repeat rate
xset r rate 200 50

# Switch capslock/escape key (vim/nvim)
setxkbmap -option caps:escape

# set xkeymap
setxkbmap dk

# set font path (WHAT IS -DPMS?)
xset +fp ~/.fonts
xset fp rehash
xset -dpms

# Load ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -load ~/.Xresources

# Start sxhkd & bspwm
sxhkd &
exec bspwm

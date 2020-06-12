#!/bin/sh
#
# ~/.xinitrc

## ....
xsetroot -cursor_name left_ptr

## Screen power savings off
xset s off -dpms -b

## Set key repeat rate
xset r rate 200 50

## Switch capslock/escape key (for vim)
setxkbmap -option caps:escape

## Set xkeymap
setxkbmap dk

## Set backlight
xbacklight -set 100%

## Mute at startup
pactl set-sink-volume 0 0 &> /dev/null
pactl set-sink-mute 0 1 &> /dev/null

## Set custom font directory
#xset +fp ~/.local/share/fonts
#xset fp rehash

## Set wallpaper
hsetroot -fill ~/Downloads/void.png

## Start dunst
dunst -config ~/.config/dunst/dunstrc > /dev/null &

## Start xautolock
# xautolock -time 10 -locker ~/.bin/lock &

## Start dwmblocks
dwmblocks &

## Start dwm
exec dwm

#!/bin/sh
#
# ~/.xinitrc

## Hide dwm's initial text in the bar
xsetroot -name ' '

## cursor stuff :)
xsetroot -cursor_name left_ptr

## Screen power savings off
xset s off -dpms -b

## Set key repeat rate
xset r rate 200 50

## Switch capslock/escape key (for vim)
setxkbmap -option caps:escape

## Set xkeymap
setxkbmap dk

## Set startup backlight
xbacklight -set 80%

## Mute at startup
pactl set-sink-volume 0 0 &> /dev/null
pactl set-sink-mute 0 1 &> /dev/null

## Set wallpaper
hsetroot -fill ~/vault/media/wallpapers/wallpaper_019.jpg

## Load .Xresources
xrdb ~/.Xresources

## Start dunst
dunst -config ~/.config/dunst/dunstrc > /dev/null &

## Start xautolock
# xautolock -time 10 -locker ~/.bin/lock &

## Start dwmblocks
dwmblocks &

## Start dwm
exec dwm

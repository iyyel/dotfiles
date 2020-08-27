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
pamixer --set-volume 0
pamixer -m

## Set wallpaper
hsetroot -fill ~/vault/media/wallpapers/wallpaper_027.png

## Load .Xresources
xrdb ~/.Xresources

## Start dunst
dunst -config ~/.config/dunst/dunstrc > /dev/null &

## Start xss-lock with i3lock
xss-lock -- lock &
xset s 1800 ## 1800 seconds (30 min)

## Start dwmblocks
dwmblocks &

## Start dwm
exec dbus-launch dwm

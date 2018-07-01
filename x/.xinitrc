#!/usr/bin/env sh
#
# ~/.xinitrc
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# Configure x-settings and start daemons
# and other things required at startup.
#

## Set root window
xsetroot -name background

## Cursor (stop X11 default 'X' cursor)
xsetroot -cursor_name left_ptr

## Screen power savings off
xset s off -dpms -b

## Key repeat rate
xset r rate 200 50

## Switch capslock/escape key (vim/nvim)
setxkbmap -option caps:escape

## Set xkeymap
setxkbmap us

## Set Brightness
xbacklight -set 100%

## Mute at startup
amixer set Master 0% > /dev/null
amixer set Master mute > /dev/null

## Load ~/.Xresoures
[ -f ~/.Xresources ] && xrdb -load ~/.Xresources

## Set custom font directory
xset +fp ~/.local/share/fonts
xset fp rehash

## Set wallpaper
hsetroot -solid '#6F7F71' &

## Start compton
compton --config ~/.config/compton/config &

## Start dunst
dunst &

## Start polybar
~/.bin/toggle_polybar

## Start mpd
[ ! -s ~/.config/mpd/mpd.pid ] && mpd &> /dev/null &

## Start xautolock (This requires xautoloack and i3lock packages.
# xautolock -time 10 -locker ~/bin/lock &

## Start sxhkd & bspwm
sxhkd &
exec bspwm

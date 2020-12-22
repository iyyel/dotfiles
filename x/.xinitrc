#!/bin/sh
#
# ~/.xinitrc

# screen resoultion etc
hdmi=`xrandr | grep "HDMI-1 connected"`
if [ -n "$hdmi" ]; then
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0    --rotate normal --output DP-2 --off
else
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off
fi

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

## Set startup backlight (laptop screen)
brightnessctl -q s 80%

## Mute at startup
pamixer --set-volume 0
pamixer -m

## Set wallpaper
hsetroot -fill ~/Personal/Media/Wallpapers/wallpaper_027.png &

## Start dunst
dunst -config ~/.config/dunst/dunstrc > /dev/null &

## Start picom
picom --vsync --backend glx --config ~/.config/picom/picom.conf &

## Start xss-lock with i3lock
xss-lock -- lock &
xset s 1800 # 1800 seconds (30 min)

## Start dwmblocks
dwmblocks &

## Start dwm
exec dwm

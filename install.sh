#!/usr/bin/env sh
#
# ~/.dotfiles/install.sh
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# Dotfile installation script.
#

# clone bin repository into ~/bin
git clone https://github.com/iyyel/bin.git ~/.bin

# stow all files into ~/
xstow bspwm
xstow cava
xstow compton
xstow dunst
xstow fonts
xstow git
xstow gtkrc
xstow htop
xstow mpd
xstow mpv
xstow ncmpcpp
xstow neofetch
xstow nvim
xstow polybar
# xstow qutebrowser
xstow ranger
xstow rofi
xstow sxhkd
xstow tmux
xstow weechat
xstow x
xstow zsh

#!/usr/bin/env sh
#
# ~/dotfiles/install.sh
#
# Authors:
#  Iyyel <github.com/iyyel>
#

# clone bin 
git clone https://github.com/iyyel/bin.git ~/bin

# stow all files into ~/
stow git
stow bin
stow bspwm
stow compton
stow fonts
stow gtkrc
stow htop
stow mpd
stow mpv
stow ncmpcpp
stow neofetch
stow nvim
stow polybar
stow qutebrowser
stow ranger
stow sxhkd
stow termcolors
stow themes
stow tmux
stow weechat
stow wego
stow xinitrc
stow xresources
stow zsh

# install steam skin too maybe? what about powertop and all the other files in the old_dotfiles?

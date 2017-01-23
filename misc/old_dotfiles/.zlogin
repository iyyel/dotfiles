#!/usr/bin/env zsh
#
# ~/.zlogin
#
# Authors:
#   Iyyel <github.com/iyyel>
#

# Start xorg-server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

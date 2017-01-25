#!/usr/bin/env zsh
#
# ~/.zlogin
#
# Authors:
#  InAbsentia <github.com/inabsencia>
#

# Start xorg-server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

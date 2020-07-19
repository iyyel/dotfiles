#
# ~/.bash_profile
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# bash startup file
#

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Execute startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

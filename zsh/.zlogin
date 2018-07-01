#
# ~/.zlogin
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# Make things execute at shell login.
#

## Initialize zim framework
[[ -s ${ZIM_HOME}/login_init.zsh ]] && source ${ZIM_HOME}/login_init.zsh

## Start x-server
exec startx

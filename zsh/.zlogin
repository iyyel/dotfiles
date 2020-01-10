##
## ~/.zlogin
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh login script
##

# initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!

# start sway
if [ "$(tty)" = "/dev/tty1"  ]; then
    exec sway
fi

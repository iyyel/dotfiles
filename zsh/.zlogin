##
## ~/.zlogin
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh login script
##

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!

# start xorg-server
if [ "$(tty)" = "/dev/tty1" ]; then
    startx
fi

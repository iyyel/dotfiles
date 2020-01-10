#
# User configuration sourced by login shells
#

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!

# start sway
if [ "$(tty)" = "/dev/tty1"  ]; then
    exec sway
fi

# dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) 

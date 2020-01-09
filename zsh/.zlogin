#
# User configuration sourced by login shells
#

# Initialize zim
[[ -s ${ZIM_HOME}/login_init.zsh ]] && source ${ZIM_HOME}/login_init.zsh

# start sway
if [ "$(tty)" = "/dev/tty1"  ]; then
    exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) sway
fi

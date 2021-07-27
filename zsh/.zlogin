##
## ~/.zlogin
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh login script
##

# Set power profile to performance
powerprofilesctl set performance &> /dev/null

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!

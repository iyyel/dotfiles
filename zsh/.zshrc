#
# ~/.zshrc
#
# Authors:
#  InAbsentia <github.com/inabsencia>
#

# Export
export TERM=rxvt-unicode-256color
export ZSH=~/.oh-my-zsh
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=w3m
export LANG=en_US.UTF-8
export QT_STYLE_OVERRIDE='gtk2'
export QT_QPA_PLATFORMTHEME='gtk2'

# Vi bindings
bindkey -v

# Theme
ZSH_THEME="classyTouch"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git history-subsearch-string zsh-navigation-tools colorize screen)

# Source
source $ZSH/oh-my-zsh.sh
source ~/.zsh_alias

# Colors
# eval $(dircolors ~/.dircolors)

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

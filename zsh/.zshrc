#
# ~/.zshrc
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# zsh configuration file.
#

## Export
export TERM='rxvt-unicode'
export TERMINAL='rxvt-unicode'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=w3m

export QT_STYLE_OVERRIDE='gtk2'
export QT_QPA_PLATFORMTHEME='gtk2'

export PATH="$PATH:$HOME/.bin"
export JAVA_HOME="/usr/lib/jvm/oracle-jdk"

## wmname to fix blank screen of Java applications.
wmname LG3D

## Aliases
alias remove='rm -irv'
alias nf='neofetch'
alias mp='ncmpcpp'
alias irc='weechat -d ~/.config/weechat/'
alias weechat='weechat -d ~/.config/weechat/'

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias e='nvim'
alias nano='nvim'

alias t='tmux -f ~/.config/tmux/config'

## Vi bindings
bindkey -v

## Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

## Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

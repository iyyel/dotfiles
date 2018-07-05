##
## ~/.zshrc
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh configuration file.
##

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

alias zath='zathura -c ~/.config/zathura/'
alias pdf='zathura -c ~/.config/zathura/'

## Color man pages
export LESS_TERMCAP_mb=$'\E[1;34m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;35m'    # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

## Syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=white,bold'

## wmname to fix blank screen of Java applications
wmname LG3D

## Vi bindings
bindkey -v

## Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

## Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

## :)
fortune | cowsay -f small

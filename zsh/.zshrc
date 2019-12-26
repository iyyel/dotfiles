##
## ~/.zshrc
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh configuration file.
##

## Export

#export TERM='kitty'
export TERMINAL='kitty'

export LANG=en_DK.UTF-8
export LC_ALL=en_DK.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox

export PATH="$PATH:$HOME/.bin"

# force wayland
export MOZ_ENABLE_WAYLAND=1
#export QT_QPA_PLATFORM=wayland-egl
#export GDK_BACKEND=wayland
#export CLUTTER_BACKEND=wayland
export XDG_CURRENT_DESKTOP=Unity
export BEMENU_BACKEND=wayland
export KITTY_ENABLE_WAYLAND=1

## Aliases
alias remove='rm -irv'
alias nf='neofetch'
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

## Vi bindings
bindkey -v

## Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

## Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

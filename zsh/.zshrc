#!/usr/bin/env zsh
#
# ~/.zshrc
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# zsh configuration file.
#

# Export
export TERM='rxvt-unicode'
export TERMINAL='rxvt-unicode'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=w3m

export QT_STYLE_OVERRIDE='gtk2'
export QT_QPA_PLATFORMTHEME='gtk2'

# Aliases
alias remove='rm -irv'
alias nf='neofetch'
alias mp='ncmpcpp'
alias irc='weechat'

alias weather='wego'
alias weather-cph='wego -l 55.669534,12.518740'
alias weather-izm='wego -l 38.472882,27.109437'

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias e='nvim'
alias nano='nvim'

alias t='tmux'

# Vi bindings
bindkey -v

# History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

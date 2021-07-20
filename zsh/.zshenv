##
## ~/.zshenv
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh environment script
##

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}

# rust
source "$HOME/.cargo/env"

export TERM='xterm-256color'

export LANG='en_DK.UTF-8'
export LC_ALL='en_DK.UTF-8'

export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='firefox'

# .local/share/dotnet
export DOTNET_ROOT=$HOME/.local/share/dotnet
export PATH=$PATH:$DOTNET_ROOT

# go
export GOPATH=$HOME/go

# .local/bin
export PATH=$PATH:$HOME/.local/bin

# starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# .local/bin/scripts
export PATH=$PATH:$HOME/.local/bin/scripts

## Aliases
alias remove='rm -irv'

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias e='nvim'
alias nano='nvim'

## Color man pages
export LESS_TERMCAP_mb=$'\E[1;34m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;35m'    # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

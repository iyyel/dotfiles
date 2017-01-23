#
# ~/.zshrc
#
# Authors:
#   Iyyel <github.com/iyyel>
#

# oh-my-zsh installation path
export ZSH=${HOME}/.oh-my-zsh

# Alias source
source ${HOME}/.alias

# Vi bindings
bindkey -v

# oh-my-zsh theme
ZSH_THEME="classyTouch"

# Plugins (~/.oh-my-zsh/plugins/*)
plugins=(git)

# $PATH variable
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/bin/ruby:$(ruby -rubygems -e "puts Gem.user_dir")/bin"

# Source oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Language environment
export LANG=en_DK.UTF-8

# Preferred editor
export EDITOR='nvim'
export VISUAL='nvim'

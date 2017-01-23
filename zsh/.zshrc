
# Export
export TERM=rxvt-unicode-256color
export ZSH=~/.oh-my-zsh
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=w3m
export LANG=en_DK.UTF-8
export QT_STYLE_OVERRIDE='gtk2'
export QT_QPA_PLATFORMTHEME='gtk2'
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/bin/ruby:$(ruby -rubygems -e "puts Gem.user_dir")/bin"

# Source
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux history-subsearch-string zsh-navigation-tools colorize screen)

# Vi bindings 
bindkey -v

# Colors
eval $(dircolors ~/.dircolors)

# Theme
ZSH_THEME="classyTouch"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

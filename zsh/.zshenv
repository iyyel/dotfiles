##
## ~/.zshenv
##
## Authors:
##  Iyyel <github.com/iyyel>
##
## zsh env script
##

# define Zim location
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

#export TERM='kitty'
export TERMINAL='kitty'

export LANG=en_DK.UTF-8
export LC_ALL=en_DK.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox

# add .bin dir to path
export PATH="$PATH:$HOME/.bin"

# .net
export DOTNET_ROOT=$HOME/.local/bin/dotnet
export PATH=$PATH:$HOME/.local/bin/dotnet

# flutter sdk
export PATH="$PATH:$HOME/.local/bin/flutter/bin"

# force wayland
export MOZ_ENABLE_WAYLAND=1
#export QT_QPA_PLATFORM=wayland-egl
#export GDK_BACKEND=wayland
#export CLUTTER_BACKEND=wayland

export XDG_CURRENT_DESKTOP=Unity
export BEMENU_BACKEND=wayland
export KITTY_ENABLE_WAYLAND=1

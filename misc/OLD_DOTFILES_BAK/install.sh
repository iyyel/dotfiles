#!/usr/bin/env bash
#
# ~/dotfiles/install.sh
#
# Authors:
#   Iyyel <github.com/iyyel>
#
# NOTICE: Make sure that none of the file names after the ${HOME} variable already exist as 
# directories. This will cause unwanted side effects.
#

set -e

ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

dir=`pwd`

if ask "WARNING: Make sure to be aware what you're installing before pressing yes." Y; then
    echo 'Install starting..'
fi

if ask "Install symlinks for zsh files?" Y; then
    ln -sfn ${dir}/.zshrc ${HOME}/.zshrc
    ln -sfn ${dir}/.zlogin ${HOME}/.zlogin
    ln -sfn ${dir}/.oh-my-zsh ${HOME}/.oh-my-zsh
    ln -sfn ${dir}/.alias ${HOME}/.alias
fi

if ask "Install symlinks for .x files?" Y; then
    ln -sfn ${dir}/.Xresources ${HOME}/.Xresources
    ln -sfn ${dir}/.xinitrc ${HOME}/.xinitrc
fi

if ask "Install symlink for ~/.weechat" Y; then
    ln -sfn ${dir}/.weechat ${HOME}/.weechat
fi

if ask "Install symlink for ~/.scripts?" Y; then
    ln -sfn ${dir}/.scripts ${HOME}/.scripts
fi

if ask "Install symlink for ~/.mutt?" Y; then
    ln -sfn ${dir}/.mutt ${HOME}/.mutt
fi

if ask "Install symlink for ~/.config/bspwm?" Y; then
    ln -sfn ${dir}/.config/bspwm ${HOME}/.config/bspwm
fi

if ask "Install symlink for ~/.config/compton?" Y; then
    ln -sfn ${dir}/.config/compton ${HOME}/.config/compton
fi

if ask "Install symlink for ~/.config/dunst?" Y; then
    ln -sfn ${dir}/.config/dunst ${HOME}/.config/dunst
fi

if ask "Install symlink for ~/.config/htop?" Y; then
    ln -sfn ${dir}/.config/htop ${HOME}/.config/htop
fi

if ask "Install symlink for ~/.config/mpd?" Y; then
    ln -sfn ${dir}/.config/mpd ${HOME}/.config/mpd
fi

if ask "Install symlink for ~/.config/ncmpcpp?" Y; then
    ln -sfn ${dir}/.config/ncmpcpp ${HOME}/.config/ncmpcpp
fi

if ask "Install symlink for ~/.config/neofetch?" Y; then
    ln -sfn ${dir}/.config/neofetch ${HOME}/.config/neofetch
fi

if ask "Install symlink for ~/.config/newsbeuter?" Y; then
    ln -sfn ${dir}/.config/newsbeuter ${HOME}/.config/newsbeuter
fi

if ask "Install symlink for ~/.config/nvim?" Y; then
    ln -sfn ${dir}/.config/nvim ${HOME}/.config/nvim
fi

if ask "Install symlink for ~/.config/qutebrowser?" Y; then
    ln -sfn ${dir}/.config/qutebrowser ${HOME}/.config/qutebrowser
fi

if ask "Install symlink for ~/.config/rofi?" Y; then
    ln -sfn ${dir}/.config/rofi ${HOME}/.config/rofi
fi

if ask "Install symlink for ~/.config/sxhkd?" Y; then
    ln -sfn ${dir}/.config/sxhkd ${HOME}/.config/sxhkd
fi

if ask "Install symlink for ~/.config/yabar?" Y; then
    ln -sfn ${dir}/.config/yabar ${HOME}/.config/yabar
fi

if ask "Install symlink for ~/.local/share/fonts?" Y; then
    ln -sfn ${dir}/.local/share/fonts ${HOME}/.local/share/fonts
fi

if ask "Install symlink for /opt/dell_touchkeys_keymap?" Y; then
    sudo ln -sfn ${dir}/opt/dell_touchkeys_keymap /opt/dell_touchkeys_keymap
fi

if ask "Install /etc/rc.local?" Y; then
    sudo cp ${dir}/etc/rc.local /etc/rc.local
fi

if ask "Install /etc/systemd/sleep.conf?" Y; then
    sudo cp ${dir}/etc/systemd/sleep.conf /etc/systemd/sleep.conf
fi

if ask "Install symlink for /etc/X11/xorg.conf.d/30-touchpad.conf?" Y; then
    sudo ln -sfn ${dir}/etc/X11/xorg.conf.d/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
fi

if ask "Install /etc/systemd/system/powertop_custom.service?" Y; then
    sudo cp ${dir}/misc/services/powertop_custom.service /etc/systemd/system/powertop_custom.service
    sudo cp ${dir}/misc/services/powertop_tune /usr/bin/powertop_tune
    sudo systemctl enable powertop_custom.service
    sudo systemctl start powertop_custom.service
fi

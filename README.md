```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ custom linux config files
 ░▓ author ▓ iyyel <i@iyyel.io>
 ░▓ code   ▓ https://github.com/iyyel/dotfiles
 ░▓ mirror ▓ https://git.iyyel.io/iyyel/dotfiles
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

```

## Table of Contents
 - [Introduction](#Introduction)
 - [Managing](#Managing)
 - [Installing](#Installing)
 - [How it works](#How-it-works)
 - [tl;dr](#tldr)
 - [My setup](#My-setup)
 - [License](#License)

# Introduction
In the unix world programs are commonly configured in two different ways, via shell arguments or text based configuration files. Programs with many options like window managers or text editors are configured on a per-user basis with files in your home directory `~`. In unix like operating systems any file or directory name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed, thus the name dotfiles. 

It's been said of every console user: 
> _"you are your dotfiles"_.

since they dictate how your system will look and function. To many users (see [ricers](http://unixporn.net) and [beaners](http://nixers.net)) these files are very important, and need to be backed up and shared. People who create custom themes have the added challenge of managing multiple versions of them. I have tried many organization techniques and just take my word for it when i say, keeping a git repo in the root of your home directory is a bad idea. I've written custom shell scripts for moving or symlinking files into place. There are even a few dotfile managers, but they all seem to have lots of dependencies. I knew there had to be a simple tool to help me.

# Managing
I manage my dotfiles with [gnu stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This allows me to keep a versioned directory of all my config files that are virtually linked into place via a single command. This makes sharing these files among many users and computers super simple and does not clutter your home directory with version control files.

# Installing
stow is available for all linux and most other unix like distributions via your package manager.

- `sudo xbps-install -S xstow`
- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`

or clone it [from source](https://savannah.gnu.org/git/?group=stow) and [build it](http://git.savannah.gnu.org/cgit/stow.git/tree/INSTALL) yourself.

# How it works
By default the stow command will create symlinks for files in the parent directory of where you execute the command, so my dotfiles setup assumes this repo is located in the root of your home directory `~/dotfiles` and all stow commands should be executed in that directory. Otherwise you'll need to use the `-d` flag with the repo directory location.

To install most of my configs you execute the `install.sh` script, which uses stow commands. Make sure to review and understand them before running the script. You might have to change `xstow` to `stow`.

`sh install.sh`

**note:** stow can only create a symlink if a config file does not already exist. If a default file was created upon program installation you must delete it first before you can install a new one with stow. This does not apply to directories, only files. `install.sh` overwrites existing config files.

# tl;dr
Navigate to your home directory

`cd ~`

Clone the repo:

`git clone http://github.com/iyyel/dotfiles`

Enter the dotfiles directory:

`cd dotfiles`

execute install script:

`sh install.sh`


# My setup

- Application Launcher: `wofi`
- Music Player: `spotify-tui`
- Shell: `zsh`
- Terminal Emulator: `kitty`
- Text Editor: `nvim`
- Web Browser: `firefox`
- Window Manager: `sway`

Pictures coming soon.


# License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
#
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# XDG
########
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_BIN_HOME=$HOME/.local/bin

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Workspace
#######
export XDG_WORKSPACE_HOME="$HOME/workspace"

# Language
########
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Timezone
########
export TZ="America/Chicago"

# Editor
########
export EDITOR='nvim'
export VISUAL='code'

# Terminal
########
export TERM=xterm-256color

# Manpath
########
export MANPATH="/usr/local/man:$MANPATH"

# Golang
#######
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
if [ -d "$GOBIN" ] ; then
    PATH="$GOBIN:$PATH"
fi

# Rust
######
export CARGO_HOME="$HOME/.cargo"
export RUSTUP_HOME="$HOME/.rustup"
[ -s "$CARGO_HOME/env" ] && \. "$CARGO_HOME/env" # Load cargo environment variables, e.g. `. "$HOME/.cargo/env"`

# NVM
########
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FZF
#
# export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore --exclude .git'
#
# export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --no-sort --preview '{}' --preview-window=right:70% --bind 'ctrl-d:half-page-down'"
#
######
export FZF_DEFAULT_COMMAND='fd'
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height 60%"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Ripgrep
##########
# RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
# RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep"
# [ -d "$RIPGREP_CONFIG_PATH" ] || mkdir -p "$RIPGREP_CONFIG_PATH"

# Mac
########
if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR=${XDG_DESKTOP_DIR:-$HOME/Desktop}
  export XDG_DOCUMENTS_DIR=${XDG_DOCUMENTS_DIR:-$HOME/Documents}
  export XDG_DOWNLOAD_DIR=${XDG_DOWNLOAD_DIR:-$HOME/Downloads}
  export XDG_MUSIC_DIR=${XDG_MUSIC_DIR:-$HOME/Music}
  export XDG_PICTURES_DIR=${XDG_PICTURES_DIR:-$HOME/Pictures}
  export XDG_VIDEOS_DIR=${XDG_VIDEOS_DIR:-$HOME/Videos}
  export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/Projects}
  export BROWSER='open'
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$XDG_BIN_HOME" ] ; then
    PATH="$XDG_BIN_HOME:$PATH"
fi

export IS_DOT_PROFILE_SET=1
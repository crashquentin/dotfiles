# ZSH Startup Files
#
# 1. ~/.zshenv: user-space .zshenv file for zsh
# This file is locally scoped for user's environment.
#
# 2. /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
# This file is sourced on all invocations of the shell.
# If the -f flag is present or if the NO_RCS option is
# set within this file, all other initialization files
# are skipped.
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
#

# ZSH directory for startup files
export ZDOTDIR="$HOME"
# Path to Oh-My-ZSH
export ZSH="$HOME/.oh-my-zsh"
# Path to custom zsh files
export ZSH_CUSTOM="$HOME/.config/zsh/custom"
# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000

# Ensure that a non-login, non-interactive shell has a defined environment.
# If `IS_DOT_PROFILE_SET` does not exist, then source ~/.zprofile
# if [ -z "${IS_DOT_PROFILE_SET}" ]; then
#   source "$HOME/.zprofile"
# fi

# Ensure that a non-login, non-interactive shell has a defined environment.
# if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.profile" ]]; then
#   source "${ZDOTDIR:-$HOME}/.profile"
# fi

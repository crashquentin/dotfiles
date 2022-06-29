# Check if ~/.zprofile was sourced
# If not, source it
if [[ $IS_DOT_PROFILE_SET == 1 ]]; then
  ;
else
  source ~/.zprofile
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Theme
########
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
####
plugins=(git encode64 jsontools zsh-vi-mode zsh-completions zsh-syntax-highlighting zsh-autosuggestions)

# Fpath
####
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# OMZ
####
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

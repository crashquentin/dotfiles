# dotfiles

Simple, opinionated dotfiles.

## Quickstart

Sync dotfiles to $HOME and backup files that are replaced to directory backup.

`./dotfiles sync`

## dotfiles

```
.
├── .config
│   ├── iterm
│   │   └── Dev.json
│   ├── rsync
│   │   └── exclude.txt
│   └── zsh
│       └── custom
│           ├── alias.zsh
│           └── keybindings.zsh
├── .p10k.zsh
├── .profile
├── .zprofile
├── .zshenv
└── .zshrc
```

## Specification

[XDG Base Directory](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)

[ZSH Startup Files](https://zsh.sourceforge.io/Intro/intro_3.html)

`~/.profile` Environment variables for all shells (e.g., ZSH and BASH).

`~/.zshenv` Environment variables that should never change. Sourced on every invocation of the shell. 

`~/.zprofile` Environment variables for login shells.

`~/.zshrc` Environment for interactive shells.

`~/.p10k.zsh` Z Shell prompt.

`~/.config/iterm/Dev.json` Iterm profile settings.

`~/.config/zsh/custom` Directory for environment variable `ZSH_CUSTOM` which stores custom zsh files and plugins.

`~/.config/rsync/exclude.txt` General exclude file for rsync. Only contains `.DS_Store`

## Configure your git

Globally set your config or .gitconfig file.

```
git config --global --edit
```

Inside your repo, locally set your config.

```
git config --edit
```

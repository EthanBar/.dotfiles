# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Alias
alias ls='ls --color=auto'
alias racket='racket -i -p neil/sicp -l xrepl'
alias n="nvim"
alias polybar-r="polybar-msg cmd restart"
alias cisco="/opt/cisco/anyconnect/bin/vpnui"
#Am test

# Haskell
[ -f "/home/ebark/.ghcup/env" ] && source "/home/ebark/.ghcup/env" # ghcup-env

# Set VIM as editor
export VISUAL=nvim
export EDITOR=nvim

# asdf - Elixir
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Ignore duplicate histories
HISTCONTROL=ignoredups

PATH=$PATH:~/.local/bin

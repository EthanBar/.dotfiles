# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Alias
alias ls='ls --color=auto'
alias racket='racket -i -p neil/sicp -l xrepl'

#Am test

# Haskell
[ -f "/home/ebark/.ghcup/env" ] && source "/home/ebark/.ghcup/env" # ghcup-env

# Set VIM as editor
export VISUAL=vim
export EDITOR=vim

# asdf - Elixir
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Ignore duplicate histories
HISTCONTROL=ignoredups


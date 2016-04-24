#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval "$(dircolors -b)"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/home/jsec/.npm-global/bin:/usr/bin:/home/jsec/.gem/ruby/2.3.0/bin:/usr/bin/core_perl:/home/jsec/src/go/bin"
export EDITOR='nvim'
export GOPATH='/home/jsec/src/go'
export GOHOME='/home/jsec/src/go/src/github.com/jsec/'

alias grep="/usr/bin/grep $GREP_OPTIONS"
alias vim='nvim'
unset GREP_OPTIONS

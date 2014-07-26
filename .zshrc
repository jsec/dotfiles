# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="garyblessington"

alias zshconfig="vim ~/.zshrc"

plugins=(git ruby golang)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/home/jsec/.gem/ruby/2.1.0/bin:/usr/bin/core_perl:/home/jsec/src/go/bin"
export EDITOR='vim'
export GOPATH='/home/jsec/src/go'

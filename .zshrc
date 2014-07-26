# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="garyblessington"

alias zshconfig="vim ~/.zshrc"

plugins=(git golang ruby)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/home/jsec/.gem/ruby/2.1.0/bin:/usr/bin/core_perl:$GOPATH/bin"
export EDITOR='vim'
export GOPATH='/home/jsec/src/go'

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lambda"

plugins=(git mercurial osx golang ruby rbenv)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Color listing
eval CLICOLOR=1
eval $(gdircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Customize to your needs...
ulimit -n 1024
export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/src/go
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/jsec/Applications:/Users/jsec/src/go/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin

alias irssi='TERM=screen-256color irssi'

eval "$(rbenv init -)"

DEFAULT_USER="jsec"

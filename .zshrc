ZSH=$HOME/.oh-my-zsh

ZSH_THEME="sunrise"

alias zshconfig="vim ~/.zshrc"
alias say=/usr/bin/say
alias irssi='TERM=screen-256color irssi'
alias pac="sudo pacman -S"
alias pacup="sudo pacman -Syy && sudo pacman -Syu"
alias aurup="sudo aura -Ayu"

plugins=(git mercurial osx golang ruby rbenv jira)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

eval CLICOLOR=1
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
export GOPATH=/home/jsec/src/go
export GOHOME=$GOPATH/src/github.com/jsec
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/home/jsec/src/go/bin:/usr/local/go/bin:/home/jsec/.gem/ruby/2.2.0/bin

DEFAULT_USER="jsec"

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lambda"

alias zshconfig="vim ~/.zshrc"
alias say=/usr/bin/say
alias irssi='TERM=screen-256color irssi'
alias weechat='TERM=screen-256color weechat'
alias julia='/Applications/Julia-0.3.0.app/Contents/Resources/julia/bin/julia'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias xsp='xsp4 --port 8080'
eval "$(rbenv init -)"

plugins=(git mercurial osx golang ruby rbenv)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

eval CLICOLOR=1
eval $(gdircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/src/go
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/jsec/Applications:/Users/jsec/src/go/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -l -g ""'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

DEFAULT_USER="jsec"

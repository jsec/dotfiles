alias vim=nvim
export EDITOR='vim'

export DISABLE_AUTO_TITLE=true
export GOPATH=/home/jsec/src/go
export GOBIN=/home/jsec/src/go/bin
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jsec/Applications:/Users/jsec/.emacs.d/bin
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'
export BAT_THEME="Nord"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

autoload -U promptinit; promptinit
prompt spaceship

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

alias vim=nvim
export EDITOR='vim'

export DISABLE_AUTO_TITLE=true
export GOPATH=/home/jsec/src/go
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jsec/Applications:/Users/jsec/.emacs.d/bin
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'
export BAT_THEME="Nord"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export N_PRESERVE_NPM=1

eval "$(rbenv init -)"

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

eval "$(starship init zsh)"


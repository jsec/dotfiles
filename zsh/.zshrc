  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export CI_REGISTRY="registry.gitlab.com"
export MYSQL_TAG="2020-08-17-1337"
export HAPROXY_TAG="master"
export SSH_PRIVATE_KEY="$(cat ~/.ssh/id_ed25519)"

# Personal configs
alias vim="nvim"
alias mux="tmuxinator"
export EDITOR=vim
export DISABLE_AUTO_TITLE=true
export BAT_THEME="Nord"
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jsec/Applications:/usr/local/lib/python3.9/site-packages:$PATH

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

eval "$(starship init zsh)"

ulimit -n 10240

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

if [ -f ~/.zsh/git.zsh ]; then
    source ~/.zsh/git.zsh
fi

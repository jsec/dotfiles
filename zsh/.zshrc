export CI_REGISTRY="registry.gitlab.com"
export MYSQL_TAG="2022-02-11-1606"
export HAPROXY_TAG="master"
export SSH_PRIVATE_KEY="$(cat ~/.ssh/id_ed25519)"

# Personal configs
alias vim="nvim"
alias mux="tmuxinator"
export EDITOR=vim
export DISABLE_AUTO_TITLE=true
export BAT_THEME="Nord"
export N_PREFIX="$HOME/n";
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jarrod.seccombe/Applications:/usr/local/lib/python3.9/site-packages:/Users/jarrod.seccombe/n/bin
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

if [ -f ~/.zsh/docker.zsh ]; then
    source ~/.zsh/docker.zsh
fi

# Personal configs
alias vim="nvim"
alias mux="tmuxinator"
export EDITOR=vim
export DISABLE_AUTO_TITLE=true
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jarrod.seccombe/Applications:/usr/local/lib/python3.9/site-packages:/opt/homebrew/Cellar/mysql-client/8.0.31/bin
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

# Bootstrap Node toolchain
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

ulimit -n 16348

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Re-enable git branch completion
autoload -Uz compinit && compinit

if [ -f ~/.zsh/git.zsh ]; then
    source ~/.zsh/git.zsh
fi

if [ -f ~/.zsh/docker.zsh ]; then
    source ~/.zsh/docker.zsh
fi

# Work-specific env variables
if [ -f ~/.zsh/env.zsh ]; then
    source ~/.zsh/env.zsh
fi

# Bootstrap homebrew environment
eval $(/opt/homebrew/bin/brew shellenv)

# Set prompt
eval "$(starship init zsh)"

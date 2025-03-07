alias vim=nvim
export EDITOR='vim'
alias mux=tmuxinator

export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jarrod.seccombe/.go
export GOBIN=$GOPATH/bin
export GHOSTTY_BIN=/Applications/Ghostty.app/Contents/MacOS
PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jarrod.seccombe/Applications:/usr/local/go/bin:$GOBIN:$GHOSTTY_BIN
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'
export DEBOUNCE_ESLINT=true

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

# Bootstrap homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Prompt
eval "$(starship init zsh)"

# Mysql-client
PATH="$PATH:/opt/homebrew/opt/mysql-client@8.4/bin"

# Rust
PATH="$PATH:/$HOME/.cargo/bin"

export PATH

# make ulimit not suck
ulimit -n 10240

# direnv
eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias nombom='yarn clean && yarn && yarn upgrade:shared && yarn dev'

eval "$(zoxide init zsh --cmd cd --hook prompt)"

# Work specific functionality
if [ -f ~/.zsh/env.zsh ]; then
    source ~/.zsh/env.zsh
fi

if [ -f ~/.zsh/git.zsh ]; then
    source ~/.zsh/git.zsh
fi

if [ -f ~/.zsh/functions.zsh ]; then
    source ~/.zsh/functions.zsh
fi

if [ -f ~/.zsh/fzf.zsh ]; then
    source ~/.zsh/fzf.zsh
fi

if [ -f ~/.zsh/aliases.zsh ]; then
    source ~/.zsh/aliases.zsh
fi

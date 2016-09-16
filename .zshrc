# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"

# Customize to your needs...
eval CLICOLOR=1
eval $(dircolors ~/.dircolors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias zshconfig="vim ~/.zshrc"
alias say=/usr/bin/say
alias irssi='TERM=screen-256color irssi'
alias weechat='TERM=screen-256color weechat'
alias julia='/Applications/Julia-0.3.0.app/Contents/Resources/julia/bin/julia'
alias fuck='eval "$(thefuck --alias)"'
alias xsp='MONO_OPTIONS=--arch=64 xsp4 --port 8080'
alias chromedriver='chromedriver --port=4444 --url-base=/wd/hub'
alias vim=nvim

export EDITOR='vim'
export TERM=xterm-256color
export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/src/go
export GOHOME=/Users/jsec/src/go/src/github.com/jsec
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/jsec/Applications:/Users/jsec/src/go/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin:/Users/jsec/.cargo/bin

eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -l -g ""'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

DEFAULT_USER="jsec"

fo() {
  local out file key
    out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
    file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
      [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
    fi
}

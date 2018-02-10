# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias zshconfig="vim ~/.zshrc"
alias say=/usr/bin/say
alias weechat='TERM=screen-256color weechat'
alias vim=nvim

export CLICOLOR=1
eval `dircolors ~/.dir_colors`

export EDITOR='vim'
export TERM=xterm-256color
export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/src/go
export GOHOME=/Users/jsec/src/go/src/github.com/jsec
export DYLD_FORCE_FLAT_NAMESPACE=1
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/jsec/Applications:/Users/jsec/src/go/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin:/Users/jsec/.cargo/bin:/Users/jsec/.fzf:/usr/local/share/dotnet
export PATH="$(python3 -c 'import site; print(site.USER_BASE + "/bin")'):$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -l -g ""'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

DEFAULT_USER="jsec"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lambda"

# Example aliases
alias zshconfig="vim ~/.zshrc"

plugins=(git mercurial osx golang ruby rbenv jira)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Color listing
eval CLICOLOR=1
eval $(gdircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Customize to your needs...
export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/src/go
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/jsec/Applications:/Users/jsec/src/go/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin

# cowsay -W 50 -f eyes "Hacking is like sex. You get in, you get out, and hope that you didn't leave something that can be traced back to you."

alias say=/usr/bin/say
alias irssi='TERM=screen-256color irssi'
alias monoconf='sudo vim /Library/Frameworks/Mono.framework/Versions/Current/etc/mono/4.5/machine.config'
alias julia='/Applications/Julia-0.3.0.app/Contents/Resources/julia/bin/julia'
eval "$(rbenv init -)"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#BASE16_SCHEME="ocean"
#BASE16_SHELL="$HOME/.config/base16-shell/base-16-$BASE16_SCHEME.dark.sh"
#[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

DEFAULT_USER="jsec"

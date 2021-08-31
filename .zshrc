# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git osx)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim $HOME/.zshrc"
alias ohmyzsh="vim $HOME/.oh-my-zsh"

# FZF
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Golang
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
if type goenv &> /dev/null; then
  eval "$(goenv init -)"
fi

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

export EDITOR=nvim
alias vim=nvim

# For making alt work in intellij's embedded terminal
if [[ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]]; then
  bindkey "∫" backward-word # Option-b
  bindkey "ƒ" forward-word # Option-f
  bindkey "∂" delete-word # Option-d
fi

# tell homebrew to not upgrade everytime
HOMEBREW_NO_AUTO_UPDATE=1

[[ -f $HOME/work.sh ]] && source $HOME/work.sh

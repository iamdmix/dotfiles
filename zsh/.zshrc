# 1. Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 2. Environment & Path
export ZSH="$HOME/.oh-my-zsh"
export GPG_TTY=$(tty)

path=(
  /opt/homebrew/bin
  /opt/homebrew/sbin
  /Users/dharmikshinde/Library/Python/3.9/bin
  $HOME/.venvs/nvim/bin
  $HOME/go/bin
  $path
)

# 3. Framework & Theme
plugins=(git macos docker)
source $ZSH/oh-my-zsh.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 4. Aliases
alias g='git'
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls'
alias ..='cd ..'
alias zshconfig="code ~/.zshrc"
alias p10kconfig="code ~/.p10k.zsh"
alias ghosttyconfig="code ~/.config/ghostty/config"
alias server="ssh thorvi@dharmiks-macbook-pro"
alias dev='cd ~/Dev'
alias vit='cd ~/VIT'

# 5. Completions
fpath=(/Users/dharmikshinde/.docker/completions $fpath)
autoload -Uz compinit && compinit

# 6. Plugins (Functionality only)
if [ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

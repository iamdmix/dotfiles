# 1. Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 2. Logic & Key Repeat
defaults write -g ApplePressAndHoldEnabled -bool false
export ZSH="$HOME/.oh-my-zsh"
export GPG_TTY=$(tty)

typeset -U path PATH
path=(/opt/homebrew/bin /opt/homebrew/sbin $HOME/.venvs/nvim/bin $HOME/go/bin $path)

# 3. Oh My Zsh Init
plugins=(git macos docker)
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 4. Behavior
setopt HIST_IGNORE_DUPS INC_APPEND_HISTORY SHARE_HISTORY
unsetopt BEEP

# 5. Aliases
alias g='git'
alias run='mvn clean quarkus:dev'
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -G'
alias ..='cd ..'
alias zshconfig="code ~/.zshrc"
alias kconfig="code ~/.config/karabiner/rules.ts"
alias server="ssh thorvi@dharmiks-macbook-pro"
alias ssd='cd /Volumes/T7_MAIN'
alias dev='cd ~/Dev'
alias vit='cd ~/VIT'

# 6. Backup Logic
alias backup-mac='rsync -avh --progress --exclude={"node_modules",".cache"} ~/Desktop ~/Documents ~/Downloads ~/Dev ~/Docs ~/VIT "/Volumes/T7_MAIN/Backups-Mac/backup-$(date +%Y-%m-%d)"'

# 7. Completions
fpath=(/Users/dharmikshinde/.docker/completions $fpath)
autoload -Uz compinit && compinit

# 8. Visual Rice: Teal/Mint Floating Style
# P10K Overrides - Sets the path to that Teal/Mint color you liked
typeset -g POWERLEVEL9K_DIR_BACKGROUND=none
typeset -g POWERLEVEL9K_DIR_FOREGROUND=109           # Aged Mint (Teal-ish)
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=109
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=109
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_FOREGROUND=109

# VCS (Git) - Matching Mint
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=109
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=109

# 9. Syntax Highlighting (Muting the Red/Green flashing)
if [ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # Instead of flashing Green, it stays Teal. Instead of bright Red, it stays a muted Gray.
  ZSH_HIGHLIGHT_STYLES[command]='fg=#94D2BD,bold'     # Fixed Teal
  ZSH_HIGHLIGHT_STYLES[alias]='fg=#94D2BD,bold'       # Fixed Teal
  ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=244'        # Muted Gray (not Red)
  ZSH_HIGHLIGHT_STYLES[path]='none'
  ZSH_HIGHLIGHT_STYLES[string]='fg=250'               # Muted White
fi

# 10. Autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'       # Darker Gray
if [ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

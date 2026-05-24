# PATH
export PATH="$HOME/.local/bin:$PATH"

#### --- HISTORY --- ####
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt APPEND_HISTORY

#### --- COMPLETION --- ####
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#### --- KEY BINDINGS --- ####
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

#### --- ALIASES --- ####
alias ls='ls -G'
alias ll='ls -alF'
alias l='ls -CF'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

#### --- TOOLS --- ####
# mise
eval "$(~/.local/bin/mise activate zsh)"

# starship (always last)
eval "$(starship init zsh)"
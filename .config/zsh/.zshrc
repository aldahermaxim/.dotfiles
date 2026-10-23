# ---------------------------------------------------------------------------
# Basic Settings
# ---------------------------------------------------------------------------

HISTFILE="$HOME/.zsh_history"
HISTSIZE=20000
SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY


# ---------------------------------------------------------------------------
# Completion
# ---------------------------------------------------------------------------

autoload -Uz compinit

ZCOMPDUMP="${ZDOTDIR:-$HOME}/.zcompdump"

if [[ -n $ZCOMPDUMP(#qN.mh+24) ]]; then
  compinit -d "$ZCOMPDUMP"
else
  compinit -C -d "$ZCOMPDUMP"
fi

unset ZCOMPDUMP

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list \
  'm:{a-z}={A-Z}' \
  'r:|[._-]=* r:|=*'

zstyle ':completion:*' use-cache on

[[ -n "$LS_COLORS" ]] &&
  zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"


# ---------------------------------------------------------------------------
# Key Bindings
# ---------------------------------------------------------------------------

bindkey -e

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line


# ---------------------------------------------------------------------------
# Aliases
# ---------------------------------------------------------------------------

alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias l='eza -F'

alias vim='nvim'
alias grep='grep --color=auto'
alias pixelX='emulator -avd pixelX -memory 6144 -no-window -gpu host -no-audio -no-metrics'


# ---------------------------------------------------------------------------
# Mise
# ---------------------------------------------------------------------------

eval "$(mise activate zsh)"


# ---------------------------------------------------------------------------
# Prompt
# ---------------------------------------------------------------------------

eval "$(starship init zsh)"

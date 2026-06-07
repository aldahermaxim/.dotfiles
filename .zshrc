#### --- BASIC SETTINGS --- ####
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
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='eza -l'
alias l='ls -CF'
alias grep='grep --color=auto'

#### --- TERMINAL SETTINGS --- ####
export TERM=xterm-256color

#### --- PATH --- ####
export PATH=$HOME/.local/bin:$PATH

#### --- Mise --- ####
eval "$(mise activate zsh)"

#### --- ANDROID --- ####
export ANDROID_HOME="$HOME/.local/share/android/sdk"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"

#### --- PROMPT --- ####
eval "$(starship init zsh)"

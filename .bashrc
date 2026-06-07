#### --- BASIC SETTINGS --- ####
HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

#### --- KEY BINDINGS --- ####
set -o emacs
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[H": beginning-of-line'
bind '"\e[F": end-of-line'

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
eval "$(mise activate bash)"

#### --- ANDROID --- ####
export ANDROID_HOME="$HOME/.local/share/android/sdk"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"

#### --- PROMPT --- ####
eval "$(starship init bash)"

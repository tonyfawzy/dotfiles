# Exports

export MANPAGER="less -X" # Don’t clear the screen after
export CLICOLOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM="wayland;xcb"
KEYTIMEOUT=1 # 1 = 10ms for key sequences (default 400ms)

# History 
HISTSIZE=10000
SAVEHIST=9000
HISTFILE=~/.zsh_history

# Alias
alias rez='source ~/.zshrc'
alias ll='ls -Flh --color=always'
alias grep='grep --color=always'
alias vi='nvim'

alias i='sudo pacman -Sy'
alias q='sudo pacman -Ss'
alias u='sudo pacman -Syu'
alias r='sudo pacman -Rns'

alias pf='poweroff'
alias rb='reboot'

alias makesl='rm -rf config.h; sudo make clean install'


PROMPT='%B%F{#01d900}%~%f%b %# '

# Key Bindings
#bindkey -e # to disable vi style & enable emacs mode
bindkey  "^[[H"   beginning-of-line
bindkey "^[[F" end-of-line

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

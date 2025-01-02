alias ll='ls -Flh --color=always'
alias grep='grep --color=always'
alias vi='nvim'

alias i='sudo pacman -Sy'
alias q='sudo pacman -Ss'
alias u='sudo pacman -Syu'
alias r='sudo pacman -Rns'

alias pf='poweroff'
alias rb='reboot'

# Update Suckless programs
alias makesl='rm -rf config.h; sudo make clean install'

PROMPT='%~ %# '

autoload -U compinit && compinit

bindkey -e # to disable vi style
bindkey  "^[[H"   beginning-of-line
bindkey '\e[4~' end-of-line

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

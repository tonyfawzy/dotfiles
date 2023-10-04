#    _                    
#   | |_ ___  _ __  _   _ 
#   | __/ _ \| '_ \| | | |
#   | || (_) | | | | |_| |  https://github.com/tonyfawzy
#    \__\___/|_| |_|\__, |
#                   |___/ 

set fish_greeting
set TERM "xterm-256color"

#Aliases
alias vim='nvim'

#Poweroff, reboot
alias spf='sudo systemctl poweroff'
alias srb='sudo systemctl reboot'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

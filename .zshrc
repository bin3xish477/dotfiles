PROMPT="%F{red}┌[%f%F{cyan}%m%f%F{red}]─[%f%F{yellow}%D{%H:%M %d/%m/%y}%f%F{red}]─[%f%F{magenta}%d%f%F{red}]%f"$'\n'"%F{red}└╼ %f%F{green}$USER%f%F{yellow}$%f "

# alias
alias ls='ls -lh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias cls="clear"
alias py3="python3"
alias py="python"
alias nmap="grc nmap"
alias please="sudo"
alias md5="md5sum"
alias sha256="sha256sum"
alias sha1="sha1sum"
alias update="sudo apt update"
alias upgrade="yes | sudo apt upgrade"
alias autoremove="yes | sudo apt autoremove"
alias autoclean="sudo apt autoclean"

if [[ -z "$TMUX" ]]
then
    tmux
fi

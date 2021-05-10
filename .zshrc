# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/arodriguez/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -d "$HOME/.local/bin" ]]
then
    export PATH="$PATH:$HOME/.local/bin"
fi

if [[ -z "$TMUX" ]]
then
    tmux
fi

export FZF_DEFAULT_COMMAND="rg --files"

# aliases
alias cat="bat"
alias clip="xclip -selection clipboard"
alias py3="python3"
alias nmap="grc nmap"
alias please="sudo"
alias md5="md5sum"
alias sha256="sha256sum"
alias sha1="sha1sum"
alias update="sudo apt update"
alias upgrade="yes | sudo apt upgrade"
alias autoremove="yes | sudo apt autoremove"
alias autoclean="sudo apt autoclean"
alias install="yes | sudo apt install"
alias ymd="date '+%Y%m%d'"
alias report_ext="date '+%Y%m%d.%H%M%S'"

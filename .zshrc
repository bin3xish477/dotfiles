# install zsh
# sudo apt install zsh
# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

PS1="%U%F{red}%n%f%u::(%F{green}%M%f) %F{white}%.%f %F{yellow}π%f∫ "

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="rg --files --hidden"

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

# aliases
alias ps="ps --forest"
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
alias dt="date '+%Y%m%d%H%M%S'"


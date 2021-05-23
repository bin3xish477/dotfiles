# install zsh
# sudo apt install zsh
# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# alternative custom prompt
#PS1="\n\[\e[30;1m\]\[\016\]l\[\017\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\j\[\e[30;1m\])-(\[\e[34;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]m\[\017\]-(\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])--> \[\e[0m\]"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="rg --files --hidden"

ZSH_THEME="imajes"
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
alias vim="nvim"
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
alias ymd="date '+%Y%m%d'"
alias report_ext="date '+%Y%m%d%H%M%S'"

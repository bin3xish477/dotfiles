# install zsh
# sudo apt install zsh
# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/.profile

PS1="%B%F{white}›%f%b %U%F{white}%.%f%u %F{yellow}π%f∫ "

export PATH=/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export TERM=xterm-256color

plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -z "$TMUX" ]]
then
    tmux
fi

# aliases (install grc with apt install grc | pacman -S grc)
alias ps="ps --forest"
alias curl="curl -s"
alias cat="bat"
alias clip="xclip -selection clipboard"
alias py="python3.9"
alias nmap="grc nmap"
alias please="sudo"
alias md5="md5sum"
alias sha256="sha256sum"
alias sha1="sha1sum"
alias dt="date '+%Y%m%d%H%M%S'"
alias netstat="grc -es netstat"
alias ping="grc -es ping"
alias lsof="grc -es lsof"
alias ld="grc -es ld"
alias traceroute="grc -es traceroute"
alias dig="grc -es dig"
alias env="grc -es env"
alias ip="grc -es ip"
alias tail="grc -es tail"
alias head="grc -es head"
alias id="grc -es id"
alias du="grc -es du"
alias docker="grc -es docker"
alias iptables="grc -es iptables"
alias gor="go run"
alias gob="go build"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtcl="git clone"
alias gtpl="git pull"
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
        print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
        print (ul.quote_plus(sys.argv[1]))"'

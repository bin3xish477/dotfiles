export PATH=$PATH:$HOME/go/bin/:/usr/local/go/bin/:$HOME/.local/bin/
export TERM=xterm-256color

alias ls='exa'
alias dig='grc dig'
alias ping='grc ping'
alias curl="curl -s --user-agent $GOOGLEBOT"
alias wget="wget -q --user-agent $GOOGLEBOT"
alias nmap="nmap --script-args=\"http.useragent='$GOOGLEBOT'\""
alias lsof='grc lsof'
alias ssh_agent_init='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/github &>/dev/null'

randstr() {
   echo $RANDOM | sha512sum | awk '{print $1}' | head -c $1; echo
}

genpass() {
   tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' < /dev/urandom | head -c $1 ; echo
}

// apt install rename
to_lowercase() {
   find $1 -depth | xargs -n 1 -d '\n' rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
}

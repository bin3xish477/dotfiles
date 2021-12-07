export PATH=$PATH:$HOME/go/bin/:/usr/local/go/bin/:$HOME/.local/bin/
export TERM=xterm-256color

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [[ -z "$TMUX" ]]; then
  tmux -2
fi

alias ls='exa'
alias dig='grc dig'
alias ping='grc ping'
alias curl='curl -s --user-agent noleak'
alias wget='wget -q --user-agent noleak'
alias lsof='grc lsof'
alias mk='make'
alias rm_containers='docker container rm $(docker container ls -qa)'
alias rm_images='docker image prune -af'
alias stop_containers='docker stop $(docker container ls -qa)'
alias go_env='docker exec -it go-env zsh'
alias go_run_env='docker run --name go-env go-dev-env'
alias go_start_env='docker start go-env'
alias ssh_agent_setup='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/github &>/dev/null'

randstr() {
echo $RANDOM | sha512sum | awk '{print $1}' | head -c $1; echo
}

genpass() {
tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' < /dev/urandom | head -c $1 ; echo
}

inip() {
ip addr show $1 | grep -Po "(?<=inet )[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"
}

to_lowercase() {
find $1 -depth | xargs -n 1 -d '\n' rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
}

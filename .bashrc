[ -x $HOME/go/bin/elvish ] && SHELL=$HOME/go/bin/elvish

if [[ -z "$TMUX" ]]
then
      tmux -2
fi

exec $HOME/go/bin/elvish

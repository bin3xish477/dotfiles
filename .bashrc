[ -x $HOME/go/bin/elvish ] && SHELL=$HOME/go/bin/elvish

if [[ -z "$TMUX" ]]
then
      tmux -2
fi

$HOME/go/bin/elvish

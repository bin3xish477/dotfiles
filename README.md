# My Dotfiles

### My Custom Prompt
#### Zsh
```bash
red="\e[0;91m"
blue="\e[0;94m"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

export PROMPT="$(echo -e $red)$(echo -e $uline)%n$(echo -e $reset)\
$(echo -e $bold)::$(echo -e $reset)\
($(echo -e $blue)%m$(echo -e $reset)) π "
```
#### Bash
```bash
red="\e[0;91m"
blue="\e[0;94m"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

export PS1="$(echo -e $red)$(echo -e $uline)\u$(echo -e $reset)\
$(echo -e $bold)::$(echo -e $reset)\
($(echo -e $blue)\h$(echo -e $reset)) π "
```

# Use Elvish package manager module
use epm

# Set PATH
paths = [
  /bin
  /usr/bin
  /usr/sbin
  /usr/local/bin
  /usr/local/go/bin
  /sbin
  $E:HOME/go/bin
]

# Set left prompt
edit:prompt = { tilde-abbr $pwd; put '❯ ' }
# Set right prompt
edit:rprompt = (constantly (styled (whoami)@(hostname) inverse))

# function aliases
fn ls [@a]{ e:ls --color $@a }
fn nmap [@a]{ e:grc nmap $@a }
fn ping [@a]{ e:grc ping $@a }
fn ps [@a]{ e:grc ps --forest $@a }
fn dt [@a]{ e:date $@a }
fn netstat [@a]{ e:grc netstat $@a }
fn id []{ e:grc id }
fn lsof [@a]{ e:grc lsof $@a }

edit:insert:binding[Alt-l] = { clear > /dev/tty ; edit:redraw &full=$true }

# Go completion
epm:install                               ^
  &silent-if-installed=$true              ^
  github.com/xiaq/edit.elv                ^
  github.com/zzamboni/elvish-completions

use github.com/xiaq/edit.elv/compl/go
use github.com/zzamboni/elvish-completions/git
use github.com/zzamboni/elvish-completions/builtins
use github.com/zzamboni/elvish-completions/ssh

go:apply

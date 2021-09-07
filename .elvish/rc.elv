echo 'Welcome to the Elvish Shell!'

use epm
use str
use re
use file
use path

# Set PATH
paths = [
  /bin
  /usr/bin
  /usr/sbin
  /usr/local/bin
  /sbin
  $E:HOME/go/bin
  /usr/local/go/bin
]

# Set left prompt
edit:prompt = { tilde-abbr $pwd; put '> ' }
# Set right prompt
edit:rprompt = (constantly (styled (whoami)@(hostname) inverse))

# Aliases
fn ls [@a]{ e:ls --color $@a }
fn nmap [@a]{ e:grc nmap $@a }
fn ping [@a]{ e:grc ping $@a }
fn ps [@a]{ e:grc ps --forest $@a }
fn dt [@a]{ e:date $@a }
fn netstat [@a]{ e:grc netstat $@a }
fn id []{ e:grc id }
fn lsof [@a]{ e:grc lsof $@a }
fn curl [@a]{ e:curl -s --user-agent 'noleak' $@a }
fn wget [@a]{ e:wget --user-agent 'noleak' $@a }
fn xclip []{ e:xclip -selection clipboard }

# Edit API settings
# - insert mode bindings
edit:insert:binding[Ctrl-l] = { edit:clear }
edit:insert:binding[Alt-l] = { edit:location:start }

# - abbreviations
edit:abbr['>dn'] = '2>/dev/null'
edit:abbr['|v'] = '| vim -'
edit:abbr['editrc'] = 'vim ~/.elvish/rc.elv'

# epm modules
epm:install                               ^
  &silent-if-installed=$true              ^
  github.com/xiaq/edit.elv                ^
  github.com/zzamboni/elvish-completions

use github.com/xiaq/edit.elv/compl/go
use github.com/zzamboni/elvish-completions/git
use github.com/zzamboni/elvish-completions/ssh

go:apply

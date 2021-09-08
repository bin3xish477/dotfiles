echo 'Welcome to the Elvish Shell!'

use epm
use str
use re
use file
use path

# epm modules
epm:install                              ^
  &silent-if-installed=$true             ^
  github.com/xiaq/edit.elv               ^
  github.com/zzamboni/elvish-completions ^
  github.com/zzamboni/elvish-modules     ^
  github.com/xiaq/edit.elv

use github.com/zzamboni/elvish-completions/git
use github.com/zzamboni/elvish-completions/ssh
use github.com/xiaq/edit.elv/smart-matcher
use github.com/zzamboni/elvish-modules/bang-bang
use github.com/zzamboni/elvish-modules/util
use github.com/zzamboni/elvish-completions/comp

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
fn nmap [@a]{ e:grc nmap $@a }
fn ping [@a]{ e:grc ping $@a }
fn ps [@a]{ e:grc ps --forest $@a }
fn dt [@a]{ e:date $@a }
fn netstat [@a]{ e:grc netstat $@a }
fn id []{ e:grc id }
fn lsof [@a]{ e:grc lsof $@a }
fn curl [@a]{ e:curl -s --user-agent 'noleak' $@a }
fn wget [@a]{ e:wget --user-agent 'noleak' $@a }

fn ls [@_args]{
  e:exa --color-scale --git --group-directories-first (each [o]{
      util:cond [
        { eq $o "-lrt" }  "-lsnew"
        { eq $o "-lrta" } "-alsnew"
        :else             $o
      ]
  } $_args)
}

fn complete-commands [arg]{
  e:bash -c 'compgen -cab'
}

# Edit API settings
# - insert mode bindings
edit:insert:binding[Ctrl-l] = { edit:clear }
edit:insert:binding[Alt-l] = { edit:location:start }

# - command completions
edit:completion:arg-completer['go'] = (comp:item [arg]{ comp:files $arg })
edit:completion:arg-completer['python3'] = (comp:item [arg]{ comp:files $arg })
edit:completion:arg-completer['sudo'] = (comp:item [(e:bash -c 'compgen -abc')])

# - abbreviations
edit:abbr['>dn'] = '2>/dev/null'
edit:abbr['|v'] = '| vim -'
edit:abbr['editrc'] = 'vim ~/.elvish/rc.elv'

smart-matcher:apply

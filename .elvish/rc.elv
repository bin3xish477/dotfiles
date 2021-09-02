# Set PATH
paths = [
  /bin
  /usr/bin
  /usr/sbin
  /usr/local/bin
  /sbin
  $E:HOME/go/bin
]

# Set left prompt
edit:prompt = { tilde-abbr $pwd; put ' ❱ ' }
# Set right prompt
edit:rprompt = (constantly (styled (whoami)✸(hostname) inverse))

# function aliases
fn ls [@args]{ e:ls --color $@args }
fn nmap [@args]{ e:grc nmap $@args }
fn ping [@args]{ e:grc ping $@args }

edit:insert:binding[Alt-l] = { clear > /dev/tty ; edit:redraw &full=$true }

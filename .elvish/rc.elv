# Set PATH
paths = [
  /bin
  /usr/bin
  /usr/sbin
  /usr/local/bin
  /sbin
  /home/remnux/go
]

# Set left prompt
edit:prompt = { tilde-abbr $pwd; put '❱ ' }
# Set right prompt
edit:rprompt = (constantly (styled (whoami)✸(hostname) inverse))

# alias function for ls command
fn ls [@args]{
  e:ls --color $@args
}

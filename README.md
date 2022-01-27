# My Dotfiles

### Quick Setup

```bash
curl -s https://raw.githubusercontent.com/bin3xish477/dotfiles/master/mysetup.sh | bash

# install Node
curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
apt install -y nodejs
```

### Environment Variables

```bash
cat << EOF >> ~/.bashrc
WINAGENT='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'
MACAGENT='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'
EOF
```

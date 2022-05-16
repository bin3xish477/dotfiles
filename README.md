# My Dotfiles

### Quick Setup

```bash
curl -s https://raw.githubusercontent.com/bin3xish477/dotfiles/master/mysetup.sh | bash
```

### WSL Git Credential Manager

> used to not have to repeatedly give credentials via CLI to git on WSL Linux boxes
```bash
git config --global credential.helper "/mnt/f/opt/Git/Git/mingw64/libexec/git-core/git-credential-wincred.exe"
```

### Environment Variables

```bash
cat << EOF >> ~/.bashrc
WINAGENT='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'
MACAGENT='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'
GOOGLEBOT='Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'
EOF
```

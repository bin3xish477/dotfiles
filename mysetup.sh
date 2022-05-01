#! /usr/bin/env bash

_main() {
  _install_node
  _install_vimplug
  _setup_go_environment
  _setup_git_global_config

  curl -s -o "$HOME/.vimrc" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.vimrc"
  echo -e "==> downloading vimrc file..."

  curl -s -o "$HOME/.tmux.conf" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.tmux.conf"
  echo -e "==> downloading tmux config file..."

  if [[ "$SHELL" =~ "zsh" ]]; then
    sed -i 's/bash/zsh/g' "$HOME/.tmux.conf"
  fi
  
  mkdir -p $HOME/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
  echo -e "==> cloning tmux plugin manager..."
}

_install_node() {
  echo -e "==> installing nodejs..."
  curl -fsSL https://deb.nodesource.com/setup_17.x | sudo bash -
  sudo apt install -y nodejs
}

_install_vimplug() {
  echo -e "==> installing vim plug..."
  curl -s -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}

_setup_go_environment() {
  echo -e "==> setting up Go environment..."
  if [[ -f "$HOME/.bashrc" ]]; then
    echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin/' >> $HOME/.bashrc
    source $HOME/.bashrc
  elif [[ -f "$HOME/.zshrc" ]]; then
    echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin/' >> $HOME/.zshrc
    source $HOME/.zshrc
  fi
}

_setup_git_global_config() {
  echo -e "==> setting up global Git configuration..."
  git config --global user.name 'Alexis Rodriguez'
  git config --global user.email 'rodriguez10011999@gmail.com'
  git config --global color.ui false
  git config --global credential.helper "cache --timeout=43200"
  git config --global core.pager 'nvim -R -'
}

_setup_aliases() {
  echo -e "==> setting up your aliases..."
  echo 'alias cat="bat --plain --paging=never"' >> $HOME/.bashrc
  source $HOME/.bashrc
}

_main

echo "==> setup complete..."

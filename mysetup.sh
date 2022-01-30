#! /usr/bin/env bash

_main() {
  _install_vimplug
  _setup_go_environment

  curl -s -o "$HOME/.vimrc" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.vimrc"
  echo -e "==> downloading vimrc file..."

  curl -s -o "$HOME/.tmux.conf" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.tmux.conf"
  echo -e "==> downloading tmux config file..."

  if [[ "$SHELL" =~ "zsh" ]]; then
    sed -i 's/bash/zsh/g' "$HOME/.tmux.conf"
  fi
  
  mkdir -p ~/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo -e "==> cloning tmux plugin manager..."
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

_main

echo "==> setup complete..."

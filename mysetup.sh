#! /usr/bin/env bash

main() {
  install_vimplug
  echo -e "==> installed vim plug..."

  curl -s -o "$HOME/.vimrc" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.vimrc"
  echo -e "==> downloaded vimrc file..."

  curl -s -o "$HOME/.tmux.conf" "https://raw.githubusercontent.com/bin3xish477/dotfiles/master/.tmux.conf"
  echo -e "==> downloaded tmux config file..."

  if [[ "$SHELL" =~ "zsh" ]]; then
    sed -i 's/bash/zsh/g' "$HOME/.tmux.conf"
  fi
  
  mkdir -p ~/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo -e "==> cloning tmux plugin manager..."
}

install_vimplug() {
  curl -s -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}

main

echo "==> setup complete..."

#!/bin/bash

_install_zsh() {
  sudo apt install git -y
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

_download_plugins_and_colors() {
  # vim plug
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  # get molokai colorscheme for vim
  if [[ -d ~/.vim/colors/ ]]; then
    wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim
  else
    mkdir -p ~/.vim/colors/
    wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim
  fi

  # install tmux plugin manager for tmux dracula theme
  if [[ -d ~/.tmxu/plugins/ ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  else
    mkdir -p ~/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi 
}

_download_dotfiles() {
  # download .zshrc
  wget --queit https://raw.githubusercontent.com/binexisHATT/dotfiles/master/.zshrc -O ~/.zshrc
  # download .vimrc
  wget --queit https://raw.githubusercontent.com/binexisHATT/dotfiles/master/.vimrc -O ~/.vimrc
  #download .tmux.conf
  wget --queit https://raw.githubusercontent.com/binexisHATT/dotfiles/master/.tmux.conf -O ~/.tmux.conf
}

echo -e "\033[0;31mATTENTION\033[0m: Your dotfiles will be overwritten"
read -r -p "Do you wish to proceed? (y/n): " answer

if [[ $answer = "y" ]]; then
  echo -e "\033[0;31mInfo\033[0m: Installing git and zsh"
  _install_zsh
  echo -e "\033[0;31mInfo\033[0m: Downloading plugins and colorschemes"
  _download_plugins_and_colors
  sleep 1
  echo -e "\033[0;31mInfo\033[0m: Downloading and overwritting dotfiles"
  _download_dotfiles
else
  echo -e "\033[0;31mExiting\033[0m: That was a close one, Goodbye!!"
  exit 0
fi


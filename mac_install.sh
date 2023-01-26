#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

echo -e "
  _____                _           _ 
 |  ___|__ _ __   __ _| |__   ___ (_)
 | |_ / _ \ '_ \ / _' | '_ \ / _ \| |
 |  _|  __/ | | | (_| | |_) | (_) | |
 |_|  \___|_| |_|\__, |_.__/ \___/|_|
                 |___/               
"

if [ -x "$(command -v zsh)" ]; then
  echo 'Zsh is installed!' >&2
else 
  echo 'Installing zsh....' >&2
  brew install zsh
fi

if [ -d "${HOME}/.oh-my-zsh" ]; then
  echo 'Oh-My-Zsh is installed!' >&2
else
  echo 'Installing Oh-My-Zsh!' >&2 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  echo 'Oh-My-Zsh is installed!' >&2
fi

if [ -f "${HOME}/antigen.zsh" ]; then
  echo 'antigen is installed!' >&2
else
  echo 'Installing antigen' >&2 
  curl -L git.io/antigen > ${HOME}/antigen.zsh;
  echo 'antigen is installed!' >&2
fi

echo 'Moving zsh dotfiles....' >&2
cp zsh/.zshrc zsh/.zsh_functions ${HOME}/

echo 'Zsh has been installed successfully' >&2

if [ -d "${HOME}/.nvm" ]; then
  echo 'Nvm is already installed!' >&2
else 
  echo 'Installing nvm' >&2
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
  echo 'Nvm has now been installed' >&2
fi

if [ -x "$(command -v nvim)" ]; then
  echo 'Neovim is already installed!' >&2
else 
  echo 'Installing latest version of neovim' >&2
  brew install neovim
fi

echo 'Setting up neovim!' >&2

if [ ! -d "${HOME}/.config" ]; then
    mkdir ${HOME}/.config/
fi

cp -R nvim ${HOME}/.config

if [ -x "$(command -v tmux)" ]; then
  echo 'Tmux is installed!' >&2
else 
  echo 'Installing tmux....' >&2
  brew install tmux
fi

if [ -d "${HOME}/.tmux" ]; then
  echo 'Tmux plugins folder is detected!' >&2
else
  echo 'Installing Tmux plugins manager!' >&2 
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

cp tmux/.tmux.conf ${HOME}/

echo 'Run "chsh -s $(which zsh)" to set zsh as default shell' >&2
echo 'Make sure you install node using nvm and get yarn and gcz' >&2

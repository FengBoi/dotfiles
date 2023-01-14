#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

if [ -x "$(command -v zsh)" ]; then
  echo 'Zsh is installed!' >&2
else 
  echo 'Installing zsh....' >&2
fi

if [ -d "${HOME}/.oh-my-zsh" ]; then
  echo 'oh-my-zsh is installed!' >&2
else
  echo 'Installing Oh-My-Zsh!' >&2 
fi

if [ -f "${HOME}/antigen.zsh" ]; then
  echo 'antigen is installed!' >&2
else
  echo 'Installing antigen!' >&2 
fi

echo 'Moving zsh dotfiles....' >&2
# cp zsh/.zshrc .zsh_functions ${HOME}/

echo 'Zsh has been installed successfully' >&2

echo '.' >&2
echo '..' >&2
echo '...' >&2

if [ -d "${HOME}/.nvm" ]; then
  echo 'Nvm is already installed!' >&2
else 
  echo 'Installing nvm' >&2
  echo 'Nvm has now been installed' >&2
fi

if [ -x "$(command -v nvim)" ]; then
  echo 'Neovim is already installed!' >&2
else 
  echo 'Installing latest version of neovim' >&2
fi

echo 'Setting up neovim!' >&2

if [ ! -d "${HOME}/.config" ]; then
    echo 'Config does not exist' >&2
fi

echo 'Run "chsh -s $(which zsh)" to set zsh as default shell' >&2
echo 'Make sure you install node using nvm and get yarn and gcz' >&2
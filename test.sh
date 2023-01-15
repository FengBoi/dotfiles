#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

if [ -x "$(command -v zsh)" ]; then
  echo 'Zsh is installed!' >&2
else 
  echo 'Zsh is not install!' >&2
fi

if [ -d "${HOME}/.oh-my-zsh" ]; then
  echo 'Oh-my-zsh is installed!' >&2
else
  echo 'Oh-my-zsh is not install!' >&2 
fi

if [ -f "${HOME}/antigen.zsh" ]; then echo 'antigen is installed!' >&2
else
  echo 'Antigen needs to be installed!' >&2 
fi

if [ -d "${HOME}/.nvm" ]; then
  echo 'Nvm is already installed!' >&2
else 
  echo 'Nvm needs to be installed' >&2
fi

if [ -x "$(command -v nvim)" ]; then
  echo 'Neovim is already installed!' >&2
else 
  echo 'You dont have neovim!' >&2
fi


echo 'Test script is now complete!' >&2

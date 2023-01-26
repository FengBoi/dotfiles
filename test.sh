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

if [ -x "$(command -v tmux)" ]; then
  echo 'Tmux is installed!' >&2
else 
  echo 'Tmux is not install!' >&2
fi

if [ -d "${HOME}/.tmux" ]; then
  echo 'Tmux plugins folder detected!' >&2
else 
  echo 'Tmux plugins needs to be installed' >&2
fi


echo 'Test script is now complete!' >&2

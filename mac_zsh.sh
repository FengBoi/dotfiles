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
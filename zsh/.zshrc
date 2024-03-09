export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.zsh_functions

if [ -f "${HOME}/.zshrc_work" ]; then
  source "${HOME}/.zshrc_work"
fi

# Antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Everyday Alias
alias vim="nvim"

# File Alias
alias ahhh="nvim ~/.zshrc"
alias rip="nvim ~/.config/nvim/init.lua"
alias nvimconfig="cd ~/.config/nvim"

# Wsl Alias
# alias home="cd ~"
# alias windows="cd /mnt/e"
# alias root="su -l root"

# Quick edit (Ubuntu or MacOs)
# alias v="fdfind --type f --hidden --exclude .git | fzf-tmux -p90% --preview 'batcat --color=always {}' | xargs -r nvim"
# alias v="fd --type f --hidden --exclude .git | fzf-tmux -p90% --preview 'batcat --color=always {}' --pointer="" | xargs -r nvim"

git config --global user.name "Fengboi"
git config --global user.email "41940068+FengBoi@users.noreply.github.com"

export USER='Andy'
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

prompt_dir() {
  prompt_segment blue $CURRENT_FG '%c'
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

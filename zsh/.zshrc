export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source ~/antigen.zsh
source ~/.zsh_functions

if [ -f "${HOME}/.zshrc_work" ]; then
  source "${HOME}/.zshrc_work"
fi

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle aws
antigen bundle web-search
antigen bundle paulirish/git-open
antigen bundle agkozak/zsh-z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster
# antigen theme gozilla

antigen apply

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
# alias v="fdfind --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs -r nvim"
# alias v="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs -r nvim"

alias checkout="git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff {1} --color=always" --pointer="" | xargs git checkout"
alias delete_branch="git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff {1} --color=always" --pointer="" | xargs git branch -delete"

git config --global user.name "Fengboi"
git config --global user.email "41940068+FengBoi@users.noreply.github.com"

export USER='Andy'
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/homebrew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source ~/antigen.zsh
source ~/.zsh_functions

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle aws
antigen bundle web-search
antigen bundle paulirish/git-open
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster
# antigen theme gozilla

antigen apply

alias ahhh="nvim ~/.zshrc"
alias vim="nvim"
alias rip="nvim ~/.config/nvim/init.lua"
alias nvimconfig="cd ~/.config/nvim"
alias restart="source ~/.zshrc"

# alias windows="cd /mnt/e"
# alias linux="cd ~"
# alias root="su -l root"
# alias v="fdfind --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs -r nvim"

git config --global user.name "Andy Truong"
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

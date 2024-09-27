# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_DEFAULT_SESSION_NAME="Main"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

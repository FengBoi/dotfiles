# Andy's dotfiles

## Mac
#### Manual Steps
zsh oh-my-zsh anti-gen
```sh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
cp -a zsh/. ~
```

nvm node yarn git-cz
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
nvm alias default 16
npm install -g yarn
npm install -g git-cz
```

neovim
```sh
brew install neovim
mkdir ~/.config/nvim
# add step to move nvim to config folder
```

## Linux
#### Manual Steps
zsh oh-my-zsh anti-gen
```sh
apt install zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
cp -a zsh/. ~
```

nvm node yarn git-cz
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
nvm alias default 16
npm install -g yarn
npm install -g git-cz
```

neovim - might vary
```sh
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

mkdir ~/.config/nvim
# add step to move nvim to config folder
```

## Windows
#### Manual Steps
scoop
```pwsh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

OhMyPosh Posh-git Terminal-Icons
```pwsh
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module posh-git -Scope CurrentUser -Force
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

Z PsFzf FlowLauncher
```pwsh
Install-Module -Name z -Force
Install-Module -Name PSFzf -Scope CurrentUser -Force
scoop install flow-launcher
```

#### TODO
- Finish off my nvim bullshit
- Install script for mac 
- Install script for linux
- Install script for windows

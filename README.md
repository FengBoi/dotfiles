# Andy's dotfiles

## Mac
- Install oh-my-zsh and antigen
- Install nvm and node yarn git-cz
- Install neovim
- Install fd, fzf
- Install alfred to replace spotlight

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
- Install zsh, oh-my-zsh and antigen
- Install nvm and node yarn git-cz
- Install neovim
- Install fdfind, fzf

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
- [Scoop](https://scoop.sh/)
- [Git for Windows](https://gitforwindows.org/) (Disable context menu stuff)
- [Oh My Posh](https://ohmyposh.dev/)
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons)
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/)
- [z](https://www.powershellgallery.com/packages/z)
- [PSFzf](https://github.com/kelleyma49/PSFzf)
- [FlowLauncher](https://www.flowlauncher.com/)

#### Manual Steps
scoop
```pwsh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```


#### TODO
- Finish off my nvim bullshit
- Install script for mac 
- Install script for linux
- Install script for windows

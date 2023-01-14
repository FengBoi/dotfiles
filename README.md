# Andy's dotfiles

## Mac Install
```sh
chmod +x ./mac_install.sh
./mac_install.sh
```

## Linux Install
```sh
chmod +x ./linux_install.sh
./linux_install.sh
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

## TODO
- Install script for windows
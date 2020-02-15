#!/usr/bin/env bash

sudo pacman -S firefox tmux neofetch htop mpv trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd tree gimp cowsay ruby ripgrep kitty nnn exa noto-fonts-emoji lua aria2 foliate tig clang nodejs npm youtube-dl bat python-pip git base-devel wget curl fzf dunst python-i3ipc --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S universal-ctags -noconfirm

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript
npm install --global mathjs

sudo python3 -m pip install --user --upgrade pynvim
sudo python3 -m pip install --user --upgrade pylint
gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

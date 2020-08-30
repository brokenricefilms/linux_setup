#!/usr/bin/env bash

# THIS NO LONGER UPDATE

# necessary
sudo pacman -S adb tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd aria2 tree gimp cowsay npm vifm fzf npm imagemagick ruby ripgrep brave-beta

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync
sudo npm install --global yarn
sudo npm install -g neovim

sudo pip3 install neovim

# ruby
# optional neovim
gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

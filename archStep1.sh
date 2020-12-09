#!/usr/bin/env bash

# necessary
sudo pacman -S tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd tree gimp cowsay npm vifm fzf npm ruby ripgrep brave kitty nnn exa lua gnome-shell-pomodoro -yy
sudo yay -S ibus-bamboo -yy

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript

sudo pip3 install neovim

# ruby
# optional neovim
gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#!/usr/bin/env bash
# necessary
sudo apt-get install tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree gimp apt-transport-https cowsay npm vifm fzf npm clangd -y

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync
sudo npm install --global yarn

# install font
sudo apt install -y fonts-noto-mono

# teni
sudo add-apt-repository ppa:teni-ime/ibus-teni
sudo apt update
sudo apt install ibus-teni
ibus restart
sudo usermod -a -G input $USER

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving fish from bash
echo "Enter your passwork"
chsh -s "$(which fish)"

# yeahhhhhh pop shell fuking gooddddddddddddddddddddddddddd


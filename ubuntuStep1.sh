#!/usr/bin/env bash
# necessary
sudo apt-get install adb tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree gimp apt-transport-https cowsay npm vifm fzf npm clangd jupyer-notebook fonts-noto-mono gnome-shell-pomodoro simplescreenrecorder -y

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync
sudo npm install --global yarn

# teni
sudo add-apt-repository ppa:teni-ime/ibus-teni
sudo apt update
sudo apt install ibus-teni -y
ibus restart
sudo usermod -a -G input $USER

# brave
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving to fish
echo "Enter your passwork"
chsh -s "$(which fish)"

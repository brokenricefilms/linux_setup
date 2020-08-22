#!/usr/bin/env bash
# necessary
sudo apt-get install adb tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree gimp apt-transport-https cowsay npm vifm fzf npm clangd fonts-noto-mono gnome-shell-pomodoro simplescreenrecorder imagemagick ruby-dev ripgrep -y

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync
sudo npm install --global yarn
sudo npm install -g neovim

# ruby
# optional neovim
sudo gem instal neovim

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
ibus restart

# brave
sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-beta.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-prerelease.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list

sudo apt update

sudo apt install brave-browser-beta


# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving to fish
echo "Enter your passwork"
chsh -s "$(which fish)"

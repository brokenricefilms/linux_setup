#!/usr/bin/env bash
sudo apt install apt-transport-https -y
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:apandada1/foliate
# brave
curl -s https://brave-browser-apt-beta.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-prerelease.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list

sudo apt update

# necessary
sudo apt install jupyter zsh adb tmux curl wget git neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree gimp  cowsay vifm fzf npm clangd fonts-noto-mono gnome-shell-pomodoro simplescreenrecorder imagemagick  ripgrep foliate zsh zsh-autosuggestions zsh-syntax-highlighting ibus-bamboo brave-browser-beta unrar -y

sudo pip3 install jupyterlab

npm config set prefix ~/.npm

# don't use sudo for npm, it can be get issue for security
# you can set local npm out your user (not root) it can fix that
npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript

# ruby
sudo apt install ruby-dev -y
# optional neovim
sudo gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# rust lang for exa
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# install exa
cd ~/Downloads
git clone https://github.com/ogham/exa
sudo make install
cd

# go lang
tar -zxvf *.tar.gz
sudo mv go /usr/local/
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile

# zsh stuff
cd /usr/share/
sudo mkdir fzf
sudo wget https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh
sudo wget https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh

echo "Switch to Zsh from Bash"
echo "Enter your passwork"
chsh -s "$(which zsh)"
echo "need restart pc"

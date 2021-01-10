#!/usr/bin/env bash
sudo apt install apt-transport-https -y
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:apandada1/foliate

# brave
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# necessary
sudo apt install zsh tmux curl wget git neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree cowsay fzf npm clangd fonts-noto-mono gnome-shell-pomodoro simplescreenrecorder ripgrep foliate zsh zsh-autosuggestions zsh-syntax-highlighting ibus-bamboo unrar moreutils nnn kitty exa universal-ctags lua5.4 node-typescript bashtop -y

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript

sudo python3 -m pip install --user --upgrade pynvim
sudo python3 -m pip install --user --upgrade pylint

# ruby
sudo apt install ruby-dev -y
# optional neovim
sudo gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# zsh stuff
cd /usr/share/
sudo mkdir fzf ; cd fzf
sudo wget https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh
sudo wget https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh

echo "Switch to Zsh from Bash"
echo "Enter your passwork"
chsh -s "$(which zsh)"

mkdir ~/app ; cd ~/app
git clone https://github.com/pop-os/shell
cd ~/app/shell
make local-install
cd

echo "need restart pc"

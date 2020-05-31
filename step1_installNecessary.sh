#!/usr/bin/env bash
# necessary
sudo apt-get install tmux curl wget git fish neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree gimp apt-transport-https cowsay npm vifm fzf npm clangd -y

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync

# install font
cd ~/Downloads   # or wherever you downloaded a font pack.
unzip <font package>.zip
# for a single user
mkdir -p ~/.fonts
cp *otf *otc ~/.fonts
fc-cache -f -v # optional
# for all users
sudo mkdir -p /usr/share/fonts/opentype/noto
sudo cp *otf *otc /usr/share/fonts/opentype/noto
sudo fc-cache -f -v # optional

# teni
sudo add-apt-repository ppa:teni-ime/ibus-teni
sudo apt update
sudo apt install ibus-teni
ibus restart
sudo usermod -a -G input $USER

## git ...
sudo snap innstall grv -y

# brave
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving fish from bash
echo "Enter your passwork"
chsh -s "$(which fish)"

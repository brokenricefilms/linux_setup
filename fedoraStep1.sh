#! /usr/bin/env sh

# more software
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install adb tmux curl wget git fish neofetch htop gnome-tweaks trash-cli flameshot python3-pip tldr net-tools xclip speedtest-cli neovim python3-neovim fd-find aria2 tree cowsay npm vifm fzf npm ffmpeg youtube-dl -y

sudo npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
sudo npm install --global tinypng-cli
sudo npm install --global browser-sync
sudo npm install --global yarn


# brave browser

sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving to fish
echo "Switch to Fish from Bash"
echo "Enter your passwork"
chsh -s "$(which fish)"

#!/usr/bin/env bash
sudo apt install apt-transport-https curl gnupg -y
sudo apt update -y

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:apandada1/foliate

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

sudo apt install copyq zsh tmux curl wget git neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree cowsay fzf npm clangd fonts-noto-mono gnome-shell-pomodoro simplescreenrecorder ripgrep foliate zsh ibus-bamboo unrar moreutils nnn kitty exa universal-ctags lua5.4 node-typescript bashtop tig bat wl-clipboard -y

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript
npm install --global markmap-cli

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

sudo python3 -m pip install --user --upgrade pynvim
sudo python3 -m pip install --user --upgrade pylint
sudo python3 -m pip install --user --upgrade emoji-fzf

pip install emoji-fzf

sudo apt-get install ruby-dev ruby-full build-essential zlib1g-dev -y
gem install jekyll bundler neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/bin ; cd ~/bin
wget https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc
chmod a+x gh-md-toc
cd

gh extension install mislav/gh-branch
gh extension install kawarimidoll/gh-graph

echo "Switch to Zsh from Bash"
echo "Enter your passwork"
chsh -s "$(which zsh)"

mkdir ~/app ; cd ~/app
git clone https://github.com/pop-os/shell
cd ~/app/shell
make local-install
cd

echo "need restart pc"

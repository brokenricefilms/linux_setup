#!/usr/bin/env bash

# for debian base
if hash apt 2>/dev/null; then
  sudo apt install apt-transport-https curl gnupg -y
  sudo apt update -y

  sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
  sudo add-apt-repository ppa:apandada1/foliate

  sudo apt install copyq zsh tmux curl wget git neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree cowsay fzf npm clangd fonts-noto-mono ripgrep foliate zsh ibus-bamboo unrar moreutils exa universal-ctags lua5.4 node-typescript bashtop tig bat wl-clipboard kitty -y

fi

# for fedora
if hash dnf 2>/dev/null; then
  sudo dnf install dnf-plugins-core

  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

  sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_33/home:lamlng.repo
  sudo dnf install ibus-bamboo

  sudo dnf install tmux curl wget git neofetch htop gnome-tweaks trash-cli flameshot python3-pip tldr net-tools xclip speedtest-cli neovim python3-neovim fd-find aria2 tree cowsay npm fzf npm ffmpeg youtube-dl mpv tig kitty ripgrep unrar exa moreutils foliate bat util-linux-user zsh cronie git-delta wl-clipboard java-devel git-clang-format rust cargo go gtk-v4l ruby ruby-devel -y

  curl -fsSL https://deno.land/install.sh | sh
fi

# for arch base
if hash pacman 2>/dev/null; then
  sudo pacman-mirrors --geoip && sudo pacman -Syyu

  sudo pacman -S firefox-developer-edition tmux neofetch htop mpv trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd tree gimp cowsay ruby ripgrep kitty exa noto-fonts-emoji lua aria2 foliate tig clang nodejs npm youtube-dl bat python-pip git base-devel wget curl fzf dunst python-i3ipc xdg-desktop-portal xdg-desktop-portal-gnome wmctrl thefuck wl-clipboard --noconfirm

  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si

  yay -S universal-ctags -noconfirm

fi

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript
npm install --global mathjs

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

sudo python3 -m pip install --user --upgrade pynvim
sudo python3 -m pip install --user --upgrade pylint
gem install neovim

gh extension install mislav/gh-branch
gh extension install kawarimidoll/gh-graph

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

xdg-mime default file_browser.desktop image/jpeg
xdg-mime default file_browser.desktop image/pdf
xdg-mime default file_browser.desktop image/gif
xdg-mime default file_browser.desktop image/svg+xml
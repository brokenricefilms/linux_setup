#!/usr/bin/env bash

# for debian base
if hash apt 2>/dev/null; then
  sudo apt install apt-transport-https curl gnupg -y
  sudo apt update -y

  sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
  sudo add-apt-repository ppa:apandada1/foliate

  sudo apt install copyq zsh tmux curl wget git neofetch htop mpv gnome-tweaks trash-cli openssh-client openssh-server flameshot ipython3 python3-pip tldr net-tools xclip speedtest-cli neovim fd-find aria2 tree cowsay fzf clangd golang fonts-noto-mono ripgrep foliate zsh ibus-bamboo unrar moreutils exa universal-ctags lua5.4 node-typescript bashtop tig bat kitty python3-venv shfmt unzip cargo gem ruby-full build-essential zlib1g-dev -y
fi

# for fedora
if hash dnf 2>/dev/null; then
  sudo dnf install dnf-plugins-core -y

  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  sudo dnf groupupdate core -y

  sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
  sudo dnf groupupdate sound-and-video -y

  sudo dnf copr enable atim/lazygit -y

  sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_33/home:lamlng.repo

  sudo dnf copr enable sunwire/input-remapper -y
  sudo dnf install python3-input-remapper -y

  sudo dnf install tmux curl wget git neofetch htop gnome-tweaks trash-cli flameshot python3-pip tldr net-tools xclip speedtest-cli neovim python3-neovim fd-find aria2 tree cowsay fzf npm ffmpeg youtube-dl mpv tig kitty ripgrep unrar exa moreutils foliate bat util-linux-user zsh cronie git-delta wl-clipboard java-devel git-clang-format rust cargo go gtk-v4l ruby ruby-devel google-chrome-stable gcc-c++ ibus-bamboo gnome-extensions-app lazygit collectd-sensors olive obs-studio dconf-editor sqlite shfmt -y

  curl -fsSL https://deno.land/install.sh | sh
fi

# for arch base
if hash pacman 2>/dev/null; then
  sudo pacman-mirrors --geoip && sudo pacman -Syyu

  sudo pacman -S firefox-developer-edition tmux neofetch htop mpv trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd tree gimp cowsay ruby ripgrep kitty exa noto-fonts-emoji lua aria2 foliate tig clang nodejs bun youtube-dl bat python-pip git base-devel wget curl fzf dunst python-i3ipc xdg-desktop-portal xdg-desktop-portal-gnome wmctrl thefuck wl-clipboard --noconfirm

  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si

  yay -S universal-ctags -noconfirm

fi

curl https://bun.sh/install | bash

[ -s "/home/master/.bun/_bun" ] && source "/home/master/.bun/_bun"
export BUN_INSTALL="/home/master/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

bun install --global prettier
bun install --global tinypng-cli
bun install --global browser-sync
bun install --global yarn
bun install --global neovim
bun install --global typescript
bun install --global mathjs
bun install --global bash-language-server

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

pip install --upgrade pylint
pip install --upgrade autopep8
pip install --upgrade pynvim

gem install neovim jekyll bundler
cargo install stylua

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

npm config set prefix ~/.npm/

#!/usr/bin/env bash

mkdir ~/git ; cd ~/git/

git clone https://github.com/thuanpham2311/dotfiles
# git clone git@github.com:thuanpham2311/dotfiles.git

mkdir ~/backupDotfile
mv ~/.config/nvim         ~/backupDotfile
mv ~/.config/kitty        ~/backupDotfile
mv ~/.config/i3        ~/backupDotfile
mv ~/.config/rofi        ~/backupDotfile
mv ~/.fonts               ~/backupDotfile

cd ~/git/dotfiles/zsh/functions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd

curl -fsSL https://starship.rs/install.sh | bash

# gnome
dconf load /org/gnome/desktop/wm/keybindings/ < ~/git/dotfiles/keybindings.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/ < ~/git/dotfiles/gnome-terminal-profiles.dconf
sudo ln -sf /usr/bin/kitty /usr/bin/gnome-terminal

# i3wm
# ln -sf ~/git/dotfiles/i3 ~/.config/
# ln -sf ~/git/dotfiles/rofi ~/.config/
# ln -sf ~/git/dotfiles/compton.conf ~/.config/
# ln -sf ~/git/dotfiles/dunst ~/.config/

sudo ln -sf ~/git/dotfiles/90-touchpad.conf /etc/X11/xorg.conf.d/
ln -sf ~/git/ok/.tinypng ~/.tinypng
ln -sf ~/git/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/git/dotfiles/wallpaper ~/
ln -sf ~/git/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/git/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/git/dotfiles/nvim ~/.config
ln -sf ~/git/dotfiles/kitty/ ~/.config/
ln -sf ~/git/dotfiles/bat/ ~/.config/
ln -sf ~/git/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/git/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/git/dotfiles/.fonts ~/.fonts ; cd ~/git/dotfiles/.fonts ; fc-cache -v
ln -sf ~/git/dotfiles/.Xmodmap ~/.Xmodmap

cd

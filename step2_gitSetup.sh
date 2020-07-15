#!/usr/bin/env bash

mkdir ~/git ; cd ~/git/

git clone https://github.com/thuanpham2311/dotfiles
# git clone git@github.com:thuanpham2311/dotfiles.git
# git clone git@github.com:thuanpham2311/lazyscript.git
# git clone git@github.com:thuanpham2311/linux_setup.git
# git clone git@github.com:thuanpham2311/dataLab.git
# git clone git@github.com:thuanpham2311/FreeCodeCampProject.git
# git clone git@github.com:thuanpham2311/vimium_dark_theme.git
# git clone git@github.com:thuanpham2311/windowsSetup.git
# git clone git@github.com:thuanpham2311/termuxSetup.git
# git clone git@github.com:thuanpham2311/img.git

mkdir ~/.config/nvim/
mkdir ~/.config/fish/
mkdir ~/.config/fish/functions/
mkdir ~/.config/vifm/

dconf load /org/gnome/desktop/wm/keybindings/ < ~/git/dotfiles/keybindings.dconf
cp -r ~/git/dotfiles/vifm/* ~/.config/vifm/
cp -r ~/git/dotfiles/nvim/* ~/.config/nvim/
cp ~/git/dotfiles/tmux/.tmux.conf ~/
cp -r ~/git/dotfiles/fish/* ~/.config/fish/
cp ~/git/dotfiles/git/.gitconfig ~/ 
cp ~/git/dotfiles/.selected_editor ~/

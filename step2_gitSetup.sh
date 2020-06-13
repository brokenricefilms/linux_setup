#!/usr/bin/env bash

mkdir ~/git ; cd ~/git/

git clone git@github.com:thuanpham2311/dotfiles.git
git clone git@github.com:thuanpham2311/lazyscript.git
git clone git@github.com:thuanpham2311/linux_setup.git
git clone git@github.com:thuanpham2311/dataLab.git
git clone git@github.com:thuanpham2311/FreeCodeCampProject.git
git clone git@github.com:thuanpham2311/vimium_dark_theme.git
git clone git@github.com:thuanpham2311/windowsSetup.git
git clone git@github.com:thuanpham2311/termuxSetup.git

mkdir ~/.config/nvim/
mkdir ~/.config/fish/
mkdir ~/.config/fish/functions/
mkdir ~/.config/vifm/

cp -r ~/git/dotfiles/vifm/* ~/.config/vifm/
cp -r ~/git/dotfiles/nvim/* ~/.config/nvim/
cp -r ~/git/dotfiles/ssh/* ~/.ssh/
cp ~/git/dotfiles/tmux/.tmux.conf ~/
cp -r ~/git/dotfiles/fish/* ~/.config/fish/
cp ~/git/dotfiles/git/.gitconfig ~/ 
cp ~/git/dotfiles/.selected_editor ~/

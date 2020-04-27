#!/usr/bin/env bash

# chance this dude
# echo "
# [user]
	# name = nicholas
	# email = nicholaspham2311@gmail.com
# " > ~/.gitconfig

mkdir ~/git ; cd ~/git/

git clone https://github.com/nicholaspham2311/dotfiles.git
# git clone git@github.com:nicholaspham2311/lazyscript.git
# git clone git@github.com:nicholaspham2311/linux_setup.git
# git clone git@github.com:nicholaspham2311/dataLab.git
# git clone git@github.com:nicholaspham2311/FreeCodeCampProject.git
# git clone git@github.com:nicholaspham2311/vimium_dark_theme.git

mkdir ~/.config/nvim/
mkdir ~/.config/fish/
mkdir ~/.config/fish/functions/
mkdir ~/.config/vifm/

cp ~/git/dotfiles/git/vifm/* ~/.config/vifm/
cp ~/git/dotfiles/git/vifm/colors/* ~/.config/vifm/colors/
cp ~/git/dotfiles/nvim/init.vim ~/.config/nvim/
cp ~/git/dotfiles/ssh/config ~/.ssh/
cp ~/git/dotfiles/tmux/.tmux.conf ~/
cp ~/git/dotfiles/fish/config.fish ~/.config/fish/
cp ~/git/dotfiles/fish/fish_prompt.fish ~/.config/fish/functions/
cp ~/git/dotfiles/git/.gitconfig ~/ 
cp ~/git/dotfiles/.selected_editor ~/
